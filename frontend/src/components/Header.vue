<template>
  <div class="bg-main_green fixed top-0 left-0 w-full z-20">
    <div class="grid grid-cols-12 items-center" style="width: 95%">
      <div class="col-span-3">
      </div>
      <div class="col-span-6 flex items-center justify-center text-lg">
        <span @click="navigateTo('link1')" class="nav-item text-clear_white">О компании</span>
        <span @click="navigateTo('link2')" class="nav-item text-clear_white">Отзывы</span>
        <span @click="navigateTo('link3')" class="nav-item text-clear_white">Связаться</span>
      </div>
      <div class="col-span-3 flex items-center justify-end">
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
  </div>
</template>


<script>

import router from "@/router/router.ts";

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

.logo {
  max-height: 60px;
}


.nav-item {
  padding: 0 15px; /* Отступы между словами */
  cursor: pointer; /* Указатель при наведении */
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
