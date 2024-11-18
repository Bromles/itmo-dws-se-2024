<template>
  <div class="container">
    <aside class="sidebar">
      <OrganizationSidebar />
    </aside>
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
  </div>
</template>



<script>
import Card from "@/components/card/Card.vue";
import Sidebar from "@/components/navigation/Sidebar.vue";
import OrganizationSidebar from "@/components/navigation/OrganizationSidebar.vue"; // Убедитесь, что путь к компоненту Card правильный

export default {
  name: 'UserProfile',
  components: {OrganizationSidebar, Sidebar, Card },
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
.container {
  display: flex; /* Используем flexbox для размещения элементов в строку */
  flex-direction: row; /* Убедитесь, что элементы располагаются в строку */
}

.user-profile {
  background-image: url('@/assets/clientProfile.jpg');
  background-size: cover;
  background-position: center;
  height: 100vh;
  width: calc(100% - 250px); /* Задаем ширину области профиля с учетом ширины сайдбара */
  max-width: 1450px; /* Учитываем ширину сайдбара */
  margin: 0; /* Убираем горизонтальные отступы */
}

.sidebar {
  width: 250px; /* Ширина боковой панели */
  background-color: #f4f4f4; /* Цвет фона боковой панели */
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
  max-height: calc(100vh - 100px);
}

.card-list > * {
  width: calc(100% - 20px); /* Учитываем отступы между карточками */
  margin: 10px;
}

.btn-subscriptions,
.btn-classes,
.btn-watchlist {
  background-color: #267873; /* Цвет кнопок */
}
</style>


