<script lang="ts" setup>
import {computed} from "vue";
import {useRoute, useRouter} from "vue-router";
import FormInput from "@/components/main_page/FormInput.vue";

const route = useRoute()
const router = useRouter()

const login = computed(() => {
  return route.meta.login
})

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
      <div v-if="!login"
           class="p-2 flex flex-col items-center w-full h-auto bg-main_green border-2 border-main_green rounded-lg gap-4">
        <p class="text-clear_white" style="font-size: 25px">Регистрация</p>
        <FormInput id="email" background-color="white" label="" placeholder="Ваш email"/>
        <FormInput id="password" background-color="white" label="" placeholder="Пароль"/>
        <FormInput id="password_confirm" background-color="white" label="" placeholder="Подтвердите пароль"/>
        <button class="mb-2 bg-clear_white p-2 rounded-lg cursor-pointer" style="background-color: white" type="button"
                @click="router.push('/login')">
          Зарегистрироваться
        </button>
      </div>

      <div v-if="login"
           class="p-2 flex flex-col items-center w-full h-auto bg-main_green border-2 border-main_green rounded-lg gap-4">
        <p class="text-clear_white" style="font-size: 25px">Вход</p>
        <FormInput id="email" background-color="white" label="" placeholder="Ваш email"/>
        <FormInput id="password" background-color="white" label="" placeholder="Пароль"/>
        <button class="mb-2 bg-clear_white p-2 rounded-lg" style="background-color: white; width: 50%; cursor:pointer;"
                type="button" @click="router.push('/')">Войти
        </button>
        <a class="text-clear_white mb-2" style="cursor: pointer">Забыл пароль</a>
      </div>

    </div>
  </div>

</template>

<style scoped>

</style>