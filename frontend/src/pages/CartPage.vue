<script setup lang="ts">
import CartCard from "@/components/CartCard.vue";
</script>

<template>
  <div class="flex flex-col gap-2 w-full mt-10 bg-white">
    <div class="flex flex-row items-center justify-between mr-10 mt-10 ml-10">
      <p class="text-6xl text-secondary-content">Корзина</p>
      <div class="flex gap-5">
        <button class="btn btn-secondary">
          Оплатить все
        </button>
        <button class="btn btn-secondary">
          Удалить все
        </button>
      </div>
    </div>
    <div class="px-2 flex flex-row justify-center items-center gap-6 mt-10 mb-10 flex-wrap">
      <CartCard/>
      <CartCard/>
      <CartCard/>
      <CartCard/>
      <CartCard/>
      <CartCard/>
      <CartCard/>
      <CartCard/>
      <CartCard/>
      <CartCard/>
    </div>
  </div>
</template>

<style scoped>

</style>