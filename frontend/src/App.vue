<template>
  <body>
  <header class="row-widget-container">
    <Header />
  </header>
  <main class="content">
    <RouterView/>
  </main>
  </body>
</template>

<script>
import Sidebar from "@/components/navigation/Sidebar.vue";
import Header from "@/components/Header.vue"; // Adjust the path as necessary

export default {
  name: 'App',
  components: { Header, Sidebar },
};
</script>

<style>
.row-widget-container {
  position: fixed; /* Фиксируем заголовок */
  top: 0; /* Прикрепляем к верхней части экрана */
  left: 0; /* Прикрепляем к левой стороне */
  right: 0; /* Прикрепляем к правой стороне */
  z-index: 1000; /* Устанавливаем высокий z-index, чтобы заголовок был поверх других элементов */
}

.content {
  background-color: #F1EEEE;
  width: 100%; /* Задаем ширину в 100% */
  margin-top: 30px; /* Отступ сверху для учета фиксированного заголовка (при необходимости) */
}
</style>
