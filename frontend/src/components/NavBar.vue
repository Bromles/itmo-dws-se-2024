<script lang="ts" setup>
import { useRouter } from "vue-router";
import { useAuth } from "@/utils/composables.ts";
import { useAuthStore } from "@/stores/authStore.ts";

const router = useRouter();
const auth = useAuth();
const store = useAuthStore();
const role = store.userRole;
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
</template>

<style scoped>
</style>
