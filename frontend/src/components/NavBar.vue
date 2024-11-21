<script lang="ts" setup>
import {useRouter} from "vue-router";

const router = useRouter()
</script>

<template>
  <nav class="flex justify-between">
    <label class="input input-bordered flex items-center gap-2 bg-primary">
      <input type="text" class="grow" placeholder="Поиск"/>
      <img class="h-4 w-4" src="@/assets/search_icon.svg" alt="search icon"/>
    </label>
    <div class="flex justify-between gap-3 items-center">
      <RouterLink to="" class="hover:underline text-2xl">О компании</RouterLink>
      <RouterLink to="" class="hover:underline text-2xl">Отзывы</RouterLink>
      <RouterLink to="" class="hover:underline text-2xl">Связаться</RouterLink>
    </div>
    <div class="flex justify-between gap-3 mr-3">
      <button class="btn btn-circle btn-primary">
        <img class="h-6 w-6" src="@/assets/calendar_icon.svg" alt="calendar icon"/>
      </button>
      <button class="btn btn-circle btn-primary" @click="router.push('/user')">
        <img class="h-6 w-6" src="@/assets/person_icon.svg" alt="person icon"/>
      </button>
      <button class="btn btn-circle btn-primary" @click="router.push('/cart')">
        <img class="h-6 w-6" src="@/assets/cart_icon.svg" alt="cart icon"/>
      </button>
    </div>
  </nav>
</template>

<style scoped>
</style>
