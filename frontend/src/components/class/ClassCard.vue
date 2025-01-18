<script lang="ts" setup>
import axiosAgregator from "@/api/axiosAgregator.ts";
import {ref} from "vue";
import {useAuth} from "@/utils/composables.ts";

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

const auth = useAuth()
const token = await auth.getToken()
const role = await auth.getUserRole()

const addToBasket = async () => {
  try {
    const response = (await axiosAgregator.sendPost('/api/v1/basket/add', {
      "classId": props.classInfo.id
    }, token)).data;

    if (response.bookings) {
      showSuccessNotification.value = true;
      setTimeout(() => {
        showSuccessNotification.value = false;
      }, 3000);
    }
  } catch (error) {
    if (error.response) {
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
    }, 2000);
  }
};
</script>

<template>
  <div class="flex flex-row items-center justify-center bg-white w-[90%] h-auto mb-5">
    <div class="rounded-lg bg-main_green w-full  p-6">
      <p class="text-3xl text-neutral-50">
        {{ props.classInfo.title }}
      </p>
      <p class="text-xl text-neutral-50 mt-5">Возраст: {{ props.classInfo.ageRange }}</p>
      <p class="text-xl text-neutral-50">Преподаватель: {{ props.classInfo.teacher }}</p>
      <p class="text-xl text-neutral-50">Время: {{ props.classInfo.time }}</p>
      <div class="w-full h-auto mt-5 flex flex-cow items-center justify-center">
        <button v-if="role === 'employee'"
                class="btn btn-danger btn-base-100 rounded-md text-center w-[40%] bg-clear_white text-neutral-950"
                @click="removeClass">
          Удалить урок
        </button>
        <button v-if="role === 'client'"
                class="btn btn-secondary btn-base-100 rounded-md text-center w-[40%] mt-5"
                @click="addToBasket">
          Добавить в корзину
        </button>
      </div>
    </div>

    <!-- Уведомления -->
    <transition name="fade">
      <div v-if="showSuccessNotification"
           class="fixed top-5 right-5 bg-[#a7f3d0] text-neutral-500 p-4 rounded shadow-lg">
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

</style>
