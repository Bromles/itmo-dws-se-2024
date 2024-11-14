<template>
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
import Card from "@/components/card/Card.vue"; // Убедитесь, что путь к компоненту Card правильный

export default {
  name: 'UserProfile',
  components: { Card },
  data() {
    return {
      cards: [
        { id: 1, title: 'Карточка 1', content: 'Содержимое карточки 1' },
        { id: 2, title: 'Карточка 2', content: 'Содержимое карточки 2' },
        { id: 3, title: 'Карточка 3', content: 'Содержимое карточки 3' },
        { id: 1, title: 'Карточка 1', content: 'Содержимое карточки 1' },
        { id: 2, title: 'Карточка 2', content: 'Содержимое карточки 2' },
        { id: 3, title: 'Карточка 3', content: 'Содержимое карточки 3' },
        { id: 1, title: 'Карточка 1', content: 'Содержимое карточки 1' },
        { id: 2, title: 'Карточка 2', content: 'Содержимое карточки 2' },
        { id: 3, title: 'Карточка 3', content: 'Содержимое карточки 3' },
        // Добавьте больше карточек по необходимости
      ],
    };
  },
  methods: {
    handleButtonClick(action) {
      console.log(`Кнопка ${action} нажата`);
      // Здесь можно добавить логику для обработки нажатий кнопок
    },
  },
};
</script>

<style scoped>
.user-profile {
  background-image: url('@/assets/clientProfile.jpg'); /* Укажите путь к вашему изображению */
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

.btn-subscriptions {
  background-color: #267873; /* Синий цвет */
}

.btn-classes {
  background-color: #267873; /* Оранжевый цвет */
}

.btn-watchlist {
  background-color: #267873; /* Красный цвет */
}
</style>

