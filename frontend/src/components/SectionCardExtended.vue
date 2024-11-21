<script setup lang="ts">

</script>

<template>
  <div class="flex flex-row items-center h-auto rounded-lg overflow-hidden border-2 my-5 bg-primary border-base-100 w-[70%]">
    <div class="h-52 flex flex-row items-center justify-center px-2">
      <img class="h-[95%] w-[95%] rounded-md" src="@/assets/volleyball.jpg" alt="section poster"/>
    </div>
    <div class="flex flex-col justify-center w-[75%] h-[75%] bg-base-100 rounded-lg px-5 py-10 mx-4">
      <p class="text-xl">Набор в волейбольную секцию</p>
      <div class="flex flex-col justify-between">
        <div class="flex flex-col w-[95%] py-4 text-sm">
          <p>Возраст: 7-14 лет</p>
          <p>Улица: Варшавская 110</p>
        </div>
        <div class="flex w-[80%] justify-between items-center">
          <p>Проплачено до 10.03.2025</p>
          <button class="btn btn-primary px-16 text-base-100">Продлить</button>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>