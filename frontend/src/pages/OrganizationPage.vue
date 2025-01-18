<script setup lang="ts">
import LessonCard from "@/components/organization_page/LessonCard.vue";
import ClientCard from "@/components/organization_page/ClientCard.vue";
import axiosAgregator from "@/api/axiosAgregator.ts";
import {useAuth} from "@/utils/composables.ts";
import {onMounted, ref} from "vue";
import {useAuthStore} from "@/stores/authStore.ts";

const auth = useAuth()
const token = await auth.getToken()
const error = ref(null);
const store = useAuthStore()
const role = store.userRole
const isLoading = ref(true);
const clients = ref([])

const fetchClients = async () => {
  try {
    clients.value = (await axiosAgregator.sendGet('/api/v1/organization/clients', token)).data.data;

    isLoading.value = false;
  } catch (err) {
    error.value = err;
    isLoading.value = false;
  }
}

onMounted(fetchClients)
</script>

<template>
  <div class="flex flex-row my-5 h-min">
    <div class="flex flex-col h-auto gap-2 basis-3/12 items-center bg-form_grey px-7 py-5">
      <!-- User Info Section -->
      <div class="size-80 mt-6 mb-4 rounded-full">
        <img class="w-full h-full" src="../../public/vb_logo.png" alt="User avatar"/>
      </div>
      <div class="text-primary-content flex flex-col gap-2 w-full h-auto bg-clear_white p-5 m-3 border-2 border-base-100 rounded-lg">
        <p class="text-2xl">Школа волейбола</p>
        <p>Адрес: ул. Варшавская, 34</p>
        <div>Оценка:
          <div class="rating">
            <input type="radio" name="rating-2" class="mask mask-star-2 bg-stars" />
            <input type="radio" name="rating-2" class="mask mask-star-2 bg-stars" checked />
            <input type="radio" name="rating-2" class="mask mask-star-2 bg-stars" />
            <input type="radio" name="rating-2" class="mask mask-star-2 bg-stars" />
            <input type="radio" name="rating-2" class="mask mask-star-2 bg-stars" />
          </div>
        </div>
        <p>Отзывов: 0</p>
        <div class="flex flex-col gap-2 items-center">
          <button class="btn btn-wide">Просмотреть отзывы</button>
          <button class="btn btn-wide">Оставить отзыв</button>
        </div>
      </div>
      <!-- Contact Info Section -->
      <div class="text-primary-content flex flex-col gap-2 w-full h-auto bg-clear_white p-5 m-3 border-2 border-base-100 rounded-lg">
        <p class="text-2xl">Контакты</p>
        <p>Телефон: 89992344455</p>
        <p>Почта: volleyball_spb@gmail.com</p>
        <p>Телеграмм: @volleyball_spb</p>
      </div>
      <div class="flex w-full flex-col items-center gap-2 mt-2">
        <button class="btn bg-main_green btn-md w-[100%]">Изменить данные</button>
      </div>
    </div>

    <!-- Clients Section -->
    <div v-if="role == 'employee'" class="flex px-4 pb-2 flex-col min-h-max basis-9/12 gap-2 w-[100%] bg-cover bg-main_background overflow-y-auto">
      <!-- Clients Title -->
      <div class="flex flex-row">
        <p class="flex w-[95%] text-main_green flex-row text-center mt-4 text-4xl rounded-lg">Клиенты:</p>
      </div>

      <!-- Client Cards -->
      <div class="flex flex-row w-full h-auto bg-form_grey rounded-lg">
        <div class="p-2 w-full grid grid-cols-3 gap-4 items-center basis-10/12 h-auto">
          <ClientCard v-for="client in clients" :userInfo="client"/>
        </div>

        <!-- View More Button -->
        <div class="basis-2/12 bg-main_green h-auto rounded-r-lg p-2 flex flex-col justify-around items-center">
          <div class="bg-clear_white rounded-full size-20 flex flex-row items-center cursor-pointer">
            <img src="@/assets/arrow_green.png" class="object-cover w-[90%] h-[90%]">
          </div>
          <div>
            <p class="text-clear_white text-xl">Просмотреть еще</p>
          </div>
        </div>
      </div>

      <!-- Announcements Title -->
      <div class="flex flex-row">
        <p class="flex w-[95%] text-main_green flex-row text-center mt-4 text-4xl rounded-lg">Объявления:</p>
      </div>

      <!-- Lesson Cards -->
<!--      <div class="w-full grid gap-4 items-center">-->
<!--        <LessonCard/>-->
<!--        <LessonCard/>-->
<!--      </div>-->
    </div>
  </div>
</template>

<style scoped>

</style>


<style scoped>

</style>