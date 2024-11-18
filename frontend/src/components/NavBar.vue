<script lang="ts" setup>
</script>

<template>
  <nav class="flex justify-between">
    <label class="input input-bordered flex items-center gap-2 bg-primary">
      <input type="text" class="grow" placeholder="Поиск"/>
      <img class="h-4 w-4" src="@/assets/search_icon.svg" alt="search icon"/>
    </label>
    <div class="flex justify-between gap-3">
      <RouterLink to="" class="hover:underline">О компании</RouterLink>
      <RouterLink to="" class="hover:underline">Отзывы</RouterLink>
      <RouterLink to="" class="hover:underline">Связаться</RouterLink>
    </div>
    <div class="flex justify-between gap-3 mr-3">
      <button class="btn btn-circle btn-primary">
        <img class="h-5 w-5" src="@/assets/calendar_icon.svg" alt="calendar icon"/>
      </button>
      <button class="btn btn-circle btn-primary">
        <img class="h-5 w-5" src="@/assets/person_icon.svg" alt="person icon"/>
      </button>
      <button class="btn btn-circle btn-primary">
        <img class="h-5 w-5" src="@/assets/cart_icon.svg" alt="cart icon"/>
      </button>
    </div>
  </nav>
</template>

<style scoped>
</style>
