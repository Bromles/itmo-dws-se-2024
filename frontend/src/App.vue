<script>
import Sidebar from "@/components/navigation/Sidebar.vue";
import Header from "@/components/Header.vue";

export default {
  name: 'App',
  components: {Header, Sidebar},
  computed: {
    fullPage() {
      return this.$route.meta.fullPage === true;
    },
    showHeader() {
      return this.$route.meta.showHeader !== false && !this.fullPage;
    }
  }
};
</script>

<script lang="ts" setup>
import NavBar from "@/components/NavBar.vue";
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
