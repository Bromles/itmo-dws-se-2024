<script lang="ts" setup>
import { useRouter } from "vue-router";
import { useAuth } from "@/utils/composables.ts";
import { useAuthStore } from "@/stores/authStore.ts";
import {YandexMap} from "vue-yandex-maps";

const router = useRouter();
const auth = useAuth();
const store = useAuthStore();
const role = store.userRole;

const settings = {
  apiKey: 'df9055b8-bd7c-48bc-983c-129946e6e5ce', // Замените на ваш ключ API
  lang: 'ru_RU', // Язык карты
  coordorder: 'latlong', // Координаты в порядке [широта, долгота]
  version: '2.1', // Версия API Яндекс.Карт
  debug: true, // Опционально: для отладки
  initializeOnMount: true, // Инициализация карты при монтирован
};

</script>

<template>
  <nav class="flex sticky justify-between items-center p-4">
    <div>
      <button v-if="!store.authenticated" class="btn btn-primary" @click="auth.login()">Войти</button>
      <button v-else class="btn btn-primary" @click="store.logout(auth)">Выйти</button>
    </div>
    <div class="flex justify-between gap-3 items-center">
      <RouterLink class="hover:underline text-2xl" to="">О компании</RouterLink>
      <RouterLink class="hover:underline text-2xl" to="">Отзывы</RouterLink>
      <button
          v-if="role === 'employee'"
          class="hover:underline text-2xl"
          @click="router.push('/admin')">Организация
      </button>
      <button
          v-else-if="role === 'client'"
          class="hover:underline text-2xl"
          @click="router.push('/user')">Пользователь
      </button>
      <RouterLink
          v-else
          class="hover:underline text-2xl"
          to="">Связаться
      </RouterLink>
    </div>
    <div class="flex justify-between gap-3 mr-3">
      <button class="btn btn-circle btn-primary">
        <img alt="calendar icon" class="h-6 w-6" src="@/assets/calendar_icon.svg"/>
      </button>
      <div onclick="my_modal_2.showModal()" class="btn btn-circle btn-primary">
        <img alt="person icon" class="h-6 w-6" src="@/assets/map.png"/>
      </div>
      <router-link v-if="role === 'client'" class="btn btn-circle btn-primary" :to="{ path: '/user' }">
        <img alt="person icon" class="h-6 w-6" src="@/assets/person_icon.svg"/>
      </router-link>
      <router-link v-else class="btn btn-circle btn-secondary" :to="{ path: '/org' }">
        <img alt="client icon" class="h-6 w-6" src="@/assets/person_icon.svg"/>
      </router-link>
      <button v-if="role !== 'employee'" class="btn btn-circle btn-primary" @click="router.push('/cart')">
        <img alt="cart icon" class="h-6 w-6" src="@/assets/cart_icon.svg"/>
      </button>
    </div>
  </nav>
  <dialog id="my_modal_2" class="modal">
    <div class="modal-box flex-col flex items-center">
      <h3 class="text-lg font-bold">Ваши секции</h3>
      <div class="map-container w-[400px] h-[500px]">
        <YandexMap :settings="settings" :coordinates="[32, 50]">

        </YandexMap>
      </div>
    </div>
    <form method="dialog" class="modal-backdrop">
      <button>close</button>
    </form>
  </dialog>
</template>

<style scoped>
.yandex-container {
  height: 400px;
}
</style>
