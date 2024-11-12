<template>
  <div class="header">
    <div class="navigation">
      <span @click="navigateTo('link1')" class="nav-item">О компании</span>
      <span @click="navigateTo('link2')" class="nav-item">Отзывы</span>
      <span @click="navigateTo('link3')" class="nav-item">Связаться</span>
    </div>
    <div class="profile-container">
      <div v-if="isMenuVisible" class="dropdown-menu">
        <button @click="logout">Out</button>
      </div>
      <div class="icon-container">
        <div class="icon-wrapper" @click="handleIconClick('icon1')">
          <img src="@/assets/icons/calendar.jpg" alt="Notification" class="icon hover-effect" />
        </div>
        <div class="icon-wrapper" @click="handleIconClick('icon2')">
          <img src="@/assets/icons/strelka.jpg" alt="Settings" class="icon hover-effect" />
        </div>
        <div class="icon-wrapper" @click="handleIconClick('icon3')">
          <img src="@/assets/icons/korzina.jpg" alt="Profile" class="icon hover-effect" />
        </div>
      </div>
    </div>
  </div>
</template>


<script>

import router from "@/router/router";

export default {
  name: 'Header',
  data() {
    return {
      isMenuVisible: false,
    };
  },
  methods: {
    toggleMenu() {
      this.isMenuVisible = !this.isMenuVisible;
    },
    logout() {
      localStorage.setItem("jwt", null);
      localStorage.setItem("userId", null);
      router.push("/login");
      this.isMenuVisible = false; // Скрыть меню после выхода
    },
    navigateTo(link) {
      // Логика навигации по клику на слова
      router.push(`/${link}`);
    },
    handleIconClick(icon) {
      // Логика обработки клика по иконкам
      console.log(`Icon clicked: ${icon}`);
    }
  },
};
</script>


<style scoped>
.header {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  background-color: #267873;
  color: white;
  padding: 10px;
  display: flex; /* Используем flexbox для выравнивания элементов */
  align-items: center; /* Центрируем элементы по вертикали */
  justify-content: space-between; /* Распределяем пространство между логотипом, навигацией и профилем */
}

.logo {
  max-height: 60px;
}

.navigation {
  display: flex; /* Используем flexbox для навигационных элементов */
  justify-content: center; /* Центрируем навигационные элементы */
  flex-grow: 1; /* Позволяет навигации занимать доступное пространство */
}

.nav-item {
  padding: 0 15px; /* Отступы между словами */
  cursor: pointer; /* Указатель при наведении */
}

.profile-container {
  display: flex; /* Используем flexbox для профиля */
  align-items: center; /* Центрируем элементы по вертикали */
}

.icon-container {
  display: flex; /* Используем flexbox для иконок */
}
.icon-wrapper {
  width: 45px; /* Ширина круга */
  height: 45px; /* Высота круга */
  background-color: white; /* Цвет фона круга */
  border-radius: 50%; /* Делаем круглый элемент */
  display: flex; /* Используем flexbox для центрирования иконки внутри круга */
  align-items: center; /* Центрируем по вертикали */
  justify-content: center; /* Центрируем по горизонтали */
  margin-left: 15px;
}
.icon {
  width: 30px; /* Ширина иконки (уменьшена) */
  height: auto; /* Высота автоматически подстраивается под ширину */
}

</style>
