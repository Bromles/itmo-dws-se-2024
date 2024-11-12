<template>
  <div id="app">
    <Header />
    <Sidebar />
    <!-- Остальные элементы вашего приложения -->
    <main class="ml-64 p-4"> <!-- Добавьте отступ слева для контента -->
      <!-- Ваш контент здесь -->
    </main>
  </div>

</template>

<script>
import Sidebar from "@/components/navigation/Sidebar.vue";
import Header from "@/components/Header.vue"; // Adjust the path as necessary

export default {
  name: 'App',
  components: {Header, Sidebar},
};
</script>

<style>
/* Глобальные стили */
body {
  margin: 0;
}
.container {
  max-width: 1200px;
  margin: auto;
}
</style>
