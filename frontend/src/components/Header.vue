<script lang="ts" setup>
import {ref} from "vue";
import {useRouter} from "vue-router";

const router = useRouter()

const isMenuVisible = ref(false)

const toggleMenu = () => {
  isMenuVisible.value = !isMenuVisible.value
}

const logout = () => {
  localStorage.setItem('jwt', '')
  localStorage.setItem('userId', '')
  router.push('/login')
  isMenuVisible.value = false
}

const handleIconClick = (icon: string) => {
  console.log(`Icon clicked ${icon}`)
}
</script>

<template>
  <div class="bg-main_green fixed top-0 left-0 w-full z-20">
    <div class="grid grid-cols-12 items-center" style="width: 95%">
      <div class="col-span-3">
      </div>
      <div class="col-span-6 flex items-center justify-center text-lg">
        <span class="nav-item text-clear_white" @click="router.push('link1')">О компании</span>
        <span class="nav-item text-clear_white" @click="router.push('link2')">Отзывы</span>
        <span class="nav-item text-clear_white" @click="router.push('link3')">Связаться</span>
      </div>
      <div class="col-span-3 flex items-center justify-end">
        <div v-if="isMenuVisible" class="dropdown-menu">
          <button @click="logout">Out</button>
        </div>
        <div class="icon-container">
          <div class="icon-wrapper" @click="handleIconClick('icon1')">
            <img alt="Notification" class="icon hover-effect" src="@/assets/calendar_icon.svg"/>
          </div>
          <div class="icon-wrapper" @click="handleIconClick('icon2')">
            <img alt="Settings" class="icon hover-effect" src="@/assets/person_icon.svg"/>
          </div>
          <div class="icon-wrapper" @click="handleIconClick('icon3')">
            <img alt="Profile" class="icon hover-effect" src="@/assets/cart_icon.svg"/>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

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
