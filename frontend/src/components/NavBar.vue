<script lang="ts" setup>
import {useRouter} from "vue-router";

const router = useRouter()
</script>

<template>
  <nav class="flex justify-between">
    <label class="input input-bordered flex items-center gap-2 bg-primary">
      <input class="grow" placeholder="Поиск" type="text"/>
      <img alt="search icon" class="h-4 w-4" src="@/assets/search_icon.svg"/>
    </label>
    <div class="flex justify-between gap-3 items-center">
      <RouterLink class="hover:underline text-2xl" to="">О компании</RouterLink>
      <RouterLink class="hover:underline text-2xl" to="">Отзывы</RouterLink>
      <RouterLink class="hover:underline text-2xl" to="">Связаться</RouterLink>
    </div>
    <div class="flex justify-between gap-3 mr-3">
      <button class="btn btn-circle btn-primary">
        <img alt="calendar icon" class="h-6 w-6" src="@/assets/calendar_icon.svg"/>
      </button>
      <button class="btn btn-circle btn-primary" @click="router.push('/user')">
        <img alt="person icon" class="h-6 w-6" src="@/assets/person_icon.svg"/>
      </button>
      <button class="btn btn-circle btn-primary" @click="router.push('/cart')">
        <img alt="cart icon" class="h-6 w-6" src="@/assets/cart_icon.svg"/>
      </button>
    </div>
  </nav>
</template>

<style scoped>
</style>
