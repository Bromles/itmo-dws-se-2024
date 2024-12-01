<script setup lang="js">
  import FormInput from "@/components/main_page/FormInput.vue";
  import {computed} from "vue";
  import {useRouter} from "vue-router";

    const navigateToResource = (link) => {
      if (typeof link === 'string')
        if (checkFields() === true) {
          router.push(link)
        }
    }

    const router = useRouter()

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


  const login =  computed(() =>  router.meta.login)

</script>

<template>
  <div class="flex flex-row align-middle justify-center w-screen h-screen" style="background-image: url('/background.jpg'); background-size: cover; background-repeat: no-repeat;
  background-position: center;">
     <div class="flex flex-row items-center basis-3/12">
       <div v-if="!login" class="p-2 flex flex-col items-center w-full h-auto bg-main_green border-2 border-main_green rounded-lg gap-4">
         <p class="text-clear_white" style="font-size: 25px">Регистрация</p>
         <form-input id="email" placeholder="Ваш email" label="" background-color="white"/>
         <form-input id="password" placeholder="Пароль" label="" background-color="white"/>
         <form-input id="password_confirm" placeholder="Подтвердите пароль" label="" background-color="white"/>
         <button type="button" @click="navigateToResource('/login')" class="mb-2 bg-clear_white p-2 rounded-lg cursor-pointer" style="background-color: white">Зарегистрироваться</button>
       </div>

       <div v-if="login"  class="p-2 flex flex-col items-center w-full h-auto bg-main_green border-2 border-main_green rounded-lg gap-4">
         <p class="text-clear_white" style="font-size: 25px">Вход</p>
         <form-input id="email" placeholder="Ваш email" label="" background-color="white"/>
         <form-input id="password" placeholder="Пароль" label="" background-color="white"/>
         <button type="button" @click="navigateToResource('/')" class="mb-2 bg-clear_white p-2 rounded-lg" style="background-color: white; width: 50%; cursor:pointer;">Войти</button>
         <a class="text-clear_white mb-2" style="cursor: pointer">Забыл пароль</a>
       </div>

     </div>
  </div>

</template>

<style scoped>

</style>