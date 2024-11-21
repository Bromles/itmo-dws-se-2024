<script lang="ts" setup>
</script>

<template>
  <aside id="default-sidebar" aria-label="Sidebar" class="w-3/12 fixed z-20 h-screen bg-custom ">
    <div class="h-full px-3 py-4 overflow-y-auto bg-custom flex flex-col items-center">
      <!-- Блок с фото пользователя -->
      <div class="flex items-center mb-4">
        <img alt="Profile Photo" class="w-full h-auto rounded-full object-cover" src="@/assets/person_icon.svg">
      </div>

      <!-- Новый блок с ФИО пользователя -->
      <div class="mb-4 w-full p-4 border border-gray-300 rounded-lg shadow-md bg-white text-center">
        <h2 class="text-lg font-semibold text-black">Личная информация</h2>
        <p class="text-sm text-black">Имя: Анна</p>
        <p class="text-sm text-black">Фамилия: Иванова</p>
        <p class="text-sm text-black">День рождения:</p>
        <p class="text-sm text-black">14.11.1984</p>
      </div>

      <!-- Блок с контактной информацией -->
      <div class="mb-4 w-full p-4 border border-gray-300 rounded-lg shadow-md bg-white text-center">
        <h3 class="text-md font-semibold text-black">Контакты</h3>
        <p class="text-sm text-black">Email: user@example.com</p>
        <p class="text-sm text-black">Телефон: +7 (123) 456-78-90</p>
      </div>

      <!-- Кнопка редактирования -->
      <button
          class="w-full p-2 text-center text-white bg-custom-button rounded-lg hover:bg-custom-button-hover focus:outline-none focus:ring focus:ring-blue-300 mb-2">
        Изменить номер телефона
      </button>
      <button
          class="w-full p-2 text-center text-white bg-custom-button rounded-lg hover:bg-custom-button-hover focus:outline-none focus:ring focus:ring-blue-300 mb-2">
        Изменить почту
      </button>
      <button
          class="w-full p-2 text-center text-white bg-custom-button rounded-lg hover:bg-custom-button-hover focus:outline-none focus:ring focus:ring-blue-300">
        Изменить пароль
      </button>

    </div>
  </aside>
</template>

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
