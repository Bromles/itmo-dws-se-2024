<template>
  <div>
    <div class="flex flex-col min-h-screen absolute">
      <Header />
      <div class="flex flex-row relative w-full columns-12" style="margin-top: 45px">
        <RouterView />
      </div>
    </div>
  </div>
</template>

<script>
import Sidebar from "@/components/navigation/Sidebar.vue";
import Header from "@/components/Header.vue";
import "./output.css"
export default {
  name: 'App',
  components: {Header, Sidebar},
};
</script>

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
