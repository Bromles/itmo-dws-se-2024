<script setup lang="ts">
import axiosAgregator from "@/api/axiosAgregator.ts";
import {useAuth} from "@/utils/composables.ts";
import {onMounted} from "vue";
const token = await useAuth().getToken();

const props = defineProps<{
  adminAbonementInfo: {
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
      const response = (await axiosAgregator.sendDelete(  `/api/v1/abonements/${id}`, token));
      console.log('Данные успешно удалены:', response.data);
      props.fetchSections();
      location.reload();
    }
  } catch (error) {
    console.error('Ошибка при отправке данных:', error);
  }
}

onMounted(() => {
  console.log(props.adminAbonementInfo)
})

</script>

<template>
<div class="w-full items-center py-2 text-xl rounded-lg text-clear_white h-auto bg-main_green flex flex-row justify-around">
  <p>{{props.adminAbonementInfo.id}}</p>
  <p>{{ props.adminAbonementInfo.title }}</p>
  <p>{{ props.adminAbonementInfo.price}}</p>
  <router-link
      :to="{ name: 'EditAdminAbonement', params: { id: props.adminAbonementInfo.id } }"
      class="btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey">
    Изменить
  </router-link>
  <button @click="deleteSubmit(props.adminAbonementInfo.id)" class="btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey">
    Удалить
  </button>
</div>
</template>

<style scoped>

</style>