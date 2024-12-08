<script setup lang="ts">
import SectionCardExtended from "@/components/user_page/SectionCardExtended.vue";
</script>

<template>
  <div class="flex flex-row my-5 gap-2 h-dvh">
    <div class="flex flex-col items-center bg-form_grey px-7 py-5 overflow-y-auto">
      <div class="h-32 w-32 mb-2 border-2 rounded-full">
        <img class="" src="@/assets/person_icon.svg" alt="User avatar"/>
      </div>
      <div class="text-primary-content p-7 m-3 border-2 border-base-100 rounded-lg">
        <p class="text-xl">Личная информация</p>
        <p>Имя: Ирина</p>
        <p>Фамилия: Иванова</p>
        <p>День рождения: 07.09.1990</p>
      </div>
      <div class="text-primary-content px-8 py-3 m-3 border-2 border-base-100 rounded-lg">
        <p class="text-xl">Контакты</p>
        <p>Телефон: 89992344455</p>
        <p>Почта: irina@gmail.com</p>
      </div>
      <div class="flex flex-col items-center gap-2 mt-2">
        <button class="btn btn-secondary w-full">Изменить номер телефона</button>
        <button class="btn btn-secondary w-full">Изменить почту</button>
        <button class="btn btn-secondary w-full">Изменить пароль</button>
      </div>
    </div>
    <div class="flex flex-col gap-2 w-full bg-main_background h-[100vh] overflow-y-auto bg-cover">
      <div class="flex flex-row justify-center">
        <p class="flex w-[95%] flex-row justify-center text-center m-2 px-16 py-6 text-4xl bg-base-100 rounded-lg">
          Ваши секции
        </p>
      </div>
      <div class="bg-white px-2 flex flex-col items-center">
        <SectionCardExtended/>
        <SectionCardExtended/>
        <SectionCardExtended/>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>