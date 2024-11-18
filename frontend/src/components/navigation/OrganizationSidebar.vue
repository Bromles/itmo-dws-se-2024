<template>
  <aside id="default-sidebar" class="fixed top-16 left-0 z-40 w-64 h-screen transition-transform -translate-x-full sm:translate-x-0" aria-label="Sidebar">
    <div class="h-full px-3 py-4 overflow-y-auto bg-custom flex flex-col items-center">
      <!-- Блок с фото пользователя -->
      <div class="flex items-center mb-4 w-full">
        <img src="../../assets/organization_logo.jpg" alt="Profile Photo" class="w-full h-auto rounded-full object-cover">
      </div>

      <!-- Новый блок с ФИО пользователя -->
      <div class="mb-4 w-full p-4 border border-gray-300 rounded-lg shadow-md bg-white text-center">
        <h2 class="text-lg font-semibold text-black">Program school</h2>
        <p class="text-sm text-black">Адрес: ул. Варшавская, д5</p>
        <p class="text-sm text-black">Оценка:
          <span v-for="star in stars" :key="star" class="text-yellow-500">&#9733;</span>
          <span v-for="emptyStar in emptyStars" :key="emptyStar" class="text-gray-300">&#9734;</span>
        </p>
        <p class="text-sm text-black">Отзывов: 54</p>
        <button class="w-full p-2 text-center text-white bg-custom-button rounded-lg hover:bg-custom-button-hover focus:outline-none focus:ring focus:ring-blue-300 mb-2">
          Просмотреть отзывы
        </button>
        <button class="w-full p-2 text-center text-white bg-custom-button rounded-lg hover:bg-custom-button-hover focus:outline-none focus:ring focus:ring-blue-300">
          Оставить отзыв
        </button>
      </div>

      <!-- Блок с контактной информацией -->
      <div class="mb-4 w-full p-4 border border-gray-300 rounded-lg shadow-md bg-white text-center">
        <h3 class="text-md font-semibold text-black">Контакты</h3>
        <p class="text-sm text-black">Email: user@example.com</p>
        <p class="text-sm text-black">Телефон: +7 (123) 456-78-90</p>
      </div>

      <!-- Кнопка редактирования -->
      <button class="w-full p-2 text-center text-white bg-custom-button rounded-lg hover:bg-custom-button-hover focus:outline-none focus:ring focus:ring-blue-300 mb-2">
        Изменить номер телефона
      </button>
      <button class="w-full p-2 text-center text-white bg-custom-button rounded-lg hover:bg-custom-button-hover focus:outline-none focus:ring focus:ring-blue-300 mb-2">
        Изменить почту
      </button>
      <button class="w-full p-2 text-center text-white bg-custom-button rounded-lg hover:bg-custom-button-hover focus:outline-none focus:ring focus:ring-blue-300">
        Изменить пароль
      </button>

    </div>
  </aside>
</template>

<script>
export default {
  name: 'OrganizationSidebar',
  data() {
    return {
      rating: 4, // Пример оценки, полученной с бэкенда
    };
  },
  computed: {
    stars() {
      return Math.floor(this.rating); // Целые звезды
    },
    emptyStars() {
      const halfStar = this.rating % 1 !== 0 ? 1 : 0; // Половина звезды, если есть
      return 5 - this.stars - halfStar; // Пустые звезды
    }
  }
};
</script>

<style scoped>
.bg-custom {
  background-color: #F1EEEE; /* Устанавливаем цвет фона сайдбара */
}
.bg-custom-button {
  background-color: #267873; /* Цвет кнопки */
}

.bg-custom-button-hover {
  background-color: #1f5e5e; /* Цвет кнопки при наведении (можно настроить) */
}
</style>
