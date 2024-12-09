<template>
  <Sidebar />
  <div class="user-profile">
    <div class="button-container">
      <button class="btn-subscriptions" @click="handleButtonClick('action1')">Ваши абонементы</button>
      <button class="btn-classes" @click="handleButtonClick('action2')">Ваши занятия</button>
      <button class="btn-watchlist" @click="handleButtonClick('action3')">Список наблюдения</button>
    </div>
    <div class="card-list">
      <Card v-for="card in cards" :key="card.id" :title="card.title" :content="card.content" />
    </div>
  </div>
</template>

<script>
import { ref, onMounted } from 'vue';
import Card from "@/components/card/Card.vue";
import Sidebar from "@/components/navigation/Sidebar.vue";
import axiosAgregator from "@/server/axiosAgregator.js";

export default {
  name: 'UserProfile',
  components: { Sidebar, Card },

  setup() {
    const cards = ref([]);
    const isLoading = ref(true);
    const error = ref(null);

    const handleButtonClick = (action) => {
      console.log(`Кнопка ${action} нажата`);
    };



    return {
      cards,
      handleButtonClick,
      isLoading,
      error
    };
  }
};
</script>

<style scoped>
.user-profile {
  background-image: url('@assets/clientProfile.jpg'); /* Укажите путь к вашему изображению */
  background-size: cover; /* Обеспечивает полное покрытие фона */
  background-position: center; /* Центрирует изображение */
  height: 100vh; /* Устанавливает высоту на весь экран */
  width: 100%; /* Устанавливает ширину на 100% от родителя */
  max-width: 1200px; /* Ограничьте максимальную ширину компонента */
  margin: 0 auto; /* Центрирует компонент по горизонтали */
}

.button-container {
  display: flex;
  justify-content: center;
  margin-bottom: 20px;
}

.button-container button {
  margin-right: 10px;
  margin-top: 10px;
}

.card-list {
  overflow-y: auto;
  max-height: calc(100vh - 100px); /* Установите максимальную высоту для прокрутки */
}

.card-list > * {
  width: calc(100% - 0px); /* Растягиваем карточки на всю ширину с учетом отступов */
  margin: 10px; /* Добавляем отступы между карточками */
}

.btn-subscriptions,
.btn-classes,
.btn-watchlist {
  background-color: #267873; /* Цвет кнопок */
}
</style>
