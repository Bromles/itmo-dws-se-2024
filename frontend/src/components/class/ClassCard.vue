<script setup lang="ts">
import { defineProps, ref } from 'vue';
import axiosAgregator from "@/server/axiosAgregator";

const props = defineProps<{
  classInfo: {
    id: Number;
    title: string;
    ageRange: string;
    teacher: string;
    time: string;
  };
}>();

const showSuccessNotification = ref(false);
const showErrorNotification = ref(false);
const errorMessage = ref('');

const addToBasket = async () => {
  try {
    const response = (await axiosAgregator.sendPost('/api/v1/basket/add', {
      "classId": props.classInfo.id
    })).data;

    if (response.bookings) { // Предполагаем, что API возвращает поле success
      showSuccessNotification.value = true;
      setTimeout(() => {
        showSuccessNotification.value = false;
      }, 3000); // Убираем уведомление через 3 секунды
    }
  } catch (error) {
    if (error.response) {
      // Обработка ошибок в зависимости от статус-кода
      switch (error.response.status) {
        case 400:
          errorMessage.value = "Товар уже есть в корзине!";
          break;
        case 409:
          errorMessage.value = "Вы уже купили этот товар!";
          break;
        default:
          errorMessage.value = "Произошла ошибка. Попробуйте еще раз.";
      }
    } else {
      errorMessage.value = "Произошла ошибка сети.";
    }

    showErrorNotification.value = true;
    setTimeout(() => {
      showErrorNotification.value = false;
    }, 3000); // Убираем уведомление через 3 секунды
  }
};
</script>

<template>
  <div class="flex flex-row mt-10 bg-white">
    <div class="mt-5 w-[50%] mr-5 bg-base-200 rounded-lg p-5 shadow-lg">
      <p class="text-3xl text-primary-content">
        {{ props.classInfo.title }} <!-- Отображение title -->
      </p>
      <p class="text-xl text-primary-content mt-5">Возраст: {{ props.classInfo.ageRange }}</p>
      <p class="text-xl text-primary-content">Преподаватель: {{ props.classInfo.teacher }}</p>
      <p class="text-xl text-primary-content">Время: {{ props.classInfo.time }}</p>
      <button class="btn btn-secondary btn-base-100 rounded-md text-center w-[40%] mt-5" @click="addToBasket">
        Добавить в корзину
      </button>
    </div>

    <!-- Уведомления -->
    <transition name="fade">
      <div v-if="showSuccessNotification" class="fixed top-5 right-5 bg-[#a7f3d0] text-neutral-500 p-4 rounded shadow-lg">
        Занятие успешно добавлено в корзину!
      </div>
    </transition>
    <transition name="fade">
      <div v-if="showErrorNotification" class="fixed top-5 right-5 bg-[#115e59] text-white p-4 rounded shadow-lg">
        {{ errorMessage }}
      </div>
    </transition>
  </div>
</template>

<style scoped>
.fade-enter-active, .fade-leave-active {
  transition: opacity 0.5s;
}
.fade-enter, .fade-leave-to /* .fade-leave-active в <2.1.8 */ {
  opacity: 0;
}
</style>
