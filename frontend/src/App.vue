<script lang="ts" setup>
import NavBar from "@/components/NavBar.vue";
import Header from "@/components/Header.vue";
import {computed} from "vue";
import {useRoute} from "vue-router";

const route = useRoute()

const fullPage = computed(() => {
  return route.meta.fullPage === true;
})

const showHeader = computed(() => {
  return route.meta.showHeader !== false && !fullPage.value
})
</script>

<template>
  <div v-if="!fullPage" class="flex flex-col min-h-screen relative">
    <Header/>
    <div :style="{ marginTop: showHeader ? '45px' : '0' }" class="flex flex-row relative w-full">
      <RouterView/>
    </div>
  </div>
  <RouterView v-else/>
  <NavBar/>
  <RouterView/>
</template>

<style>
/* Глобальные стили */


.row-widget-container {
  position: fixed; /* Фиксируем заголовок */
  top: 0; /* Прикрепляем к верхней части экрана */
  left: 0; /* Прикрепляем к левой стороне */
  right: 0; /* Прикрепляем к правой стороне */
  z-index: 1000; /* Устанавливаем высокий z-index, чтобы заголовок был поверх других элементов */
}


.sidebar {
  width: 250px; /* Ширина боковой панели */
  background-color: #f4f4f4; /* Цвет фона боковой панели */
}

.content {
  flex: 1; /* Основной контент займет оставшееся пространство */
  overflow-y: auto; /* Прокрутка по вертикали, если контент превышает высоту */
  margin-top: 150px; /* Задайте отступ, равный высоте заголовка */
}


.container {
  max-width: 1200px;
  margin: auto;
}
</style>
