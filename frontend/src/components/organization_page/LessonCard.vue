<script setup lang="ts">

</script>

<template>
  <div class="flex flex-row h-80 w-full rounded-lg overflow-hidden border-2 border-main_green">
    <div class="bg-white basis-4/12 flex flex-row items-center justify-center">
      <img class="rounded-md" src="@assets/lesson_card.png"/>
    </div>
    <div class="flex basis-8/12 flex-col gap-2 bg-main_green h-auto">
      <div class="bg-main_green flex flex-col gap-2 w-[95%] mx-6 mt-6 text-lg">
        <p class="text-clear_white text-2xl">Набор в школу программирования</p>
        <p class="text-clear_white">Возраст: 7-14 лет</p>
        <p class="text-clear_white">Улица: Варшавская 110</p>
        <p class="text-clear_white">Статус: опубликовано</p>
        <p class="text-clear_white">Дата публикации: 27.11.24</p>
      </div>
      <div class="w-full h-auto flex items-center justify-center">
        <button class="btn w-[60%] btn-lg mt-4 bg-clear_white text-main_green hover:bg-form_grey">Просмотреть</button>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>