<script setup lang="ts">
import {useRouter} from "vue-router";
import {defineProps} from "vue";
import axiosAgregator from "@/server/axiosAgregator";

const router = useRouter()

const props = defineProps<{
  bookingInfo: {
    id: string;
    section: {
      id: Number,
      title: String
    };
    aclass: {
      id: Number,
      title: String
    }
  }

}>();

const handleDelete = async() => {
  const response = (await axiosAgregator.sendPost('/api/v1/basket/remove', {
    "bookingId" : props.bookingInfo.id
  })).data;
};
</script>

<template>
  <div class="flex flex-col items-center gap-5">
    <div class="flex flex-col h-auto rounded-lg overflow-hidden border-2 border-base-100">
      <div class="h-40 bg-white flex flex-row items-center justify-center">
        <img class="w-[95%] h-[95%] rounded-md" src="../../assets/volleyball.jpg" alt="section poster"/>
      </div>
      <div class="flex flex-col items-center justify-center w-full bg-main_green h-auto">
        <div class="bg-base-100 flex flex-col mx-auto px-2 py-4 text-sm">
          <p class="text-3xl text-primary-content">
            {{ props.bookingInfo.section.title }} <!-- Отображение title -->
          </p>
          <p class="text-3xl text-primary-content">
            {{ props.bookingInfo.aclass.title }} <!-- Отображение title -->
          </p>
          <p>Возраст: 7-14 лет</p>
          <p>Улица: Варшавская 110</p>
          <div class="flex flex-row items-center justify-center gap-2">
            <button class="btn btn-primary rounded-md text-center w-[40%] mt-2" @click="router.push('/section')">
              Просмотреть
            </button>
            <button class="btn btn-primary rounded-md text-center w-[40%] mt-2" @click="handleDelete">
              Удалить
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>