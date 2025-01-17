<script lang="ts" setup>
import {useRouter} from "vue-router";
import axiosAgregator from "@/api/axiosAgregator.ts";
import {useAuth} from "@/utils/composables.ts";

const router = useRouter()

const auth = useAuth();
const token = await auth.getToken()
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
    };
    avatar: String
  }

}>();

const handleDelete = async () => {
  try {
    console.log(props.bookingInfo.id)
    await axiosAgregator.sendPost('/api/v1/basket/remove', {
      "bookingId": props.bookingInfo.id
    }, token);
    location.reload();
  } catch (error) {
    console.error('Произошла ошибка при выполнении запроса:', error);
  }
};

</script>

<template>
  <div class="flex flex-col items-center">
    <div class="flex flex-col h-auto rounded-lg overflow-hidden border-2 border-base-100">
      <div class="h-40 bg-white flex flex-row items-center justify-center">
        <img alt="section poster" class="w-[95%] h-[95%] rounded-md" src="../../../public/vlb.jpg"/>
      </div>
      <div class="flex flex-col items-center justify-center w-full bg-main_green h-auto">
        <div class="bg-base-100 flex flex-col mx-auto py-4 px-4 text-sm">
          <p class="text-xl text-clear_white">
            {{ props.bookingInfo.section.title }} <!-- Отображение title -->
          </p>
          <p class="text-xl text-clear_white">
            {{ props.bookingInfo.aclass.title }} <!-- Отображение title -->
          </p>
          <div class="flex flex-row items-center justify-between mt-2 ">
            <button class="btn bg-clear_white text-main_green rounded-md text-center w-[45%]" @click="router.push('/section')">
              Просмотреть
            </button>
            <button class="btn bg-clear_white text-main_green rounded-md text-center w-[45%]" @click="handleDelete">
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