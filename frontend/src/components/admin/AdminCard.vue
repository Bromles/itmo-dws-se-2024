<script setup lang="ts">
import axiosAgregator from "@/api/axiosAgregator.ts";
import {useAuth} from "@/utils/composables.ts";
const token = await useAuth().getToken();

const props = defineProps<{
  adminCardInfo: {
    id: number;
    title: string
    price: number
  },
  fetchSections: Function;
}>();


const deleteSubmit = async (id: number) => {
  try {
    console.log(token)
    console.log("Сейчас отправлю")
    if (token != null) {
      const response = (await axiosAgregator.sendDelete(  `/api/v1/sections/${id}`, token));
      console.log('Данные успешно удалены:', response.data);
      props.fetchSections();
    }
  } catch (error) {
    console.error('Ошибка при отправке данных:', error);
  }
}


</script>

<template>
<div class="w-full items-center py-2 text-xl rounded-lg text-clear_white h-auto bg-main_green flex flex-row justify-around">
  <p>{{props.adminCardInfo.id}}</p>
  <p>{{ props.adminCardInfo.title }}</p>
  <p>{{ props.adminCardInfo.price}}</p>
  <p>Дата пуб. 10.10.2024</p>
  <router-link
      :to="{ name: 'EditAdminCard', params: { id: props.adminCardInfo.id } }"
      class="btn 2xl:btn-wide xl:btn-md border-2 bg-clear_white text-main_green hover:bg-form_grey">
    Изменить
  </router-link>
  <button @click="deleteSubmit(props.adminCardInfo.id)" class="btn 2xl:btn-wide xl:btn-md border-2 bg-clear_white text-main_green hover:bg-form_grey">
    Удалить
  </button>
</div>
</template>

<style scoped>

</style>