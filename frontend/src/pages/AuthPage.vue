<script lang="ts" setup>
import FormInput from "@/components/main_page/FormInput.vue";
import {useRouter} from "vue-router";
import {useAuthStore} from "@/stores/authStore.ts";

const navigateToResource = (link: string) => {
    if (checkFields()) {
      router.push(link)
    }
}

const router = useRouter()
const store = useAuthStore()

const checkFields = () => {
  const inputs = document.querySelectorAll('input');

  for (let input of inputs) {
    if (input.value.trim() === '') {
      console.log("All input fields must be filled!");
      return false;
    }
  }
  return true
}

</script>

<template>
  <div class="flex flex-row align-middle justify-center w-screen h-screen" style="background-image: url('/background.jpg'); background-size: cover; background-repeat: no-repeat;
  background-position: center;">
    <div class="flex flex-row items-center basis-3/12">
      <div v-if="!store.authenticated"
           class="p-2 flex flex-col items-center w-full h-auto bg-main_green border-2 border-main_green rounded-lg gap-4">
        <p class="text-clear_white" style="font-size: 25px">Регистрация</p>
        <form-input id="email" background-color="white" label="" placeholder="Ваш email"/>
        <form-input id="password" background-color="white" label="" placeholder="Пароль"/>
        <form-input id="password_confirm" background-color="white" label="" placeholder="Подтвердите пароль"/>
        <button class="mb-2 bg-clear_white p-2 rounded-lg cursor-pointer" style="background-color: white"
                type="button" @click="navigateToResource('/login')">
          Зарегистрироваться
        </button>
      </div>

      <div v-if="store.authenticated"
           class="p-2 flex flex-col items-center w-full h-auto bg-main_green border-2 border-main_green rounded-lg gap-4">
        <p class="text-clear_white" style="font-size: 25px">Вход</p>
        <form-input id="email" background-color="white" label="" placeholder="Ваш email"/>
        <form-input id="password" background-color="white" label="" placeholder="Пароль"/>
        <button class="mb-2 bg-clear_white p-2 rounded-lg" style="background-color: white; width: 50%; cursor:pointer;" type="button"
                @click="navigateToResource('/')">Войти
        </button>
        <a class="text-clear_white mb-2" style="cursor: pointer">Забыл пароль</a>
      </div>

    </div>
  </div>

</template>

<style scoped>

</style>