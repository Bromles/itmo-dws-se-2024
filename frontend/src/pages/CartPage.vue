<script setup lang="ts">
import CartCard from "@/components/basket_page/CartCard.vue";
import axiosAgregator from "@/server/axiosAgregator";
import {onMounted, ref} from "vue";
import SectionCard from "@/components/main_page/SectionCard.vue";

const bookings = ref([])


const fetchSections = async () => {
  try {
    const response = (await axiosAgregator.sendGet('/api/v1/basket/', {
    })).data;
    bookings.value = response.bookings;
    console.log(bookings.value);

    isLoading.value = false;
  } catch (err) {
    error.value = err;

    isLoading.value = false;
  }
}

const payAll = async () => {
  try {
    console.log("sdfsdfs")
    const response = (await axiosAgregator.sendPost('/api/v1/basket/pay-all', {
    })).data;
    location.reload();
    if (response) {


    }
  } catch (error) {

  }
}

onMounted(fetchSections)
</script>

<template>
  <div class="flex flex-col gap-2 w-full mt-10 bg-clear_white">
    <div class="flex flex-row items-center justify-between mr-10 mt-10 ml-10">
      <p class="text-6xl text-secondary-content">Корзина</p>
      <div class="flex gap-5">
        <button class="btn btn-secondary" @click="payAll">
          Оплатить все
        </button>
        <button class="btn btn-secondary">
          Удалить все
        </button>
      </div>
    </div>
    <div class="px-2 flex flex-row justify-center items-center gap-6 mt-10 mb-10 flex-wrap">
      <div v-if="isLoading" class="w-full flex justify-center items-center">
        Загрузка...
      </div>

      <div v-else-if="error" class="w-full flex justify-center items-center text-red-500">
        Произошла ошибка при загрузке секций
      </div>

      <div v-else-if="bookings.length" class="mt-4 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-2">
        <CartCard
            v-for="booking in bookings"
            :bookingInfo="booking"
        />
      </div>

      <div v-else class="w-full flex justify-center items-center">
        Корзина пуста
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>