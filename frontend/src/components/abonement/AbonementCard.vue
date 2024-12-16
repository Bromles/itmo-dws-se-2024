<script lang="ts" setup>
import axiosAgregator from "@/api/axiosAgregator.ts";
import {onMounted, ref} from "vue";
import {useAuth} from "@/utils/composables.ts";

const props = defineProps<{
  abonementInfo: {
    id: Number;
    title: string;
    classesCount: Number;
    duration: string;
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
    const response = (await axiosAgregator.sendPost(`/api/v1/abonements/subscribe/${props.abonementInfo.id}`, {
    }, token)).data;

    if (response.bookings) {
      showSuccessNotification.value = true;
      setTimeout(() => {
        showSuccessNotification.value = false;
      }, 3000);
    }
  } catch (error) {
    console.log(error.message);
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
  <div class="flex flex-row mt-10 bg-white">
    <div class="mt-5 w-[90%] mr-5 bg-base-200 rounded-lg p-5 shadow-lg">
      <p class="text-3xl text-neutral-50">
        {{ props.abonementInfo.title }}
      </p>
      <p class="text-neutral-50 mt-5">Длительность абонемента: {{ props.abonementInfo.duration }}</p>
      <p class="text-neutral-50">Количество занятий: {{ props.abonementInfo.classesCount }}</p>
      <p class="text-neutral-50">Подробнее: {{ props.abonementInfo.teacher }}</p>
      <button v-if="role === 'client'"
              class="btn btn-secondary btn-base-100 rounded-md text-center w-[40%] mt-5"
              @click="addToBasket">
        Оформить подписку
      </button>

      <button v-if="role === 'employee'"
              class="btn btn-danger btn-base-100 rounded-md text-center w-[40%] mt-5"
              @click="removeClass">
        Удалить урок
      </button>
    </div>

    <!-- Уведомления -->
    <transition name="fade">
      <div v-if="showSuccessNotification"
           class="fixed top-5 right-5 bg-[#a7f3d0] text-neutral-500 p-4 rounded shadow-lg">
        Подписка успешно оформлена!
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
