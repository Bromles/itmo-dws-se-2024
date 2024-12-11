<script lang="ts" setup>
import {onMounted, ref} from 'vue';
import axiosAgregator from "@/api/axiosAgregator.ts";
import {useRoute} from 'vue-router';
import ClassCard from "@/components/class/ClassCard.vue";
import {useAuth} from "@/utils/composables.ts";

const section = ref({});
const sectionClasses = ref([]); // Добавляем переменную для классов секции

const route = useRoute();
const id = route.params.id;

const auth = useAuth()
const token = await auth.getToken()

const showInfo = ref(false);
const isLoading = ref(true); // Добавляем переменную для отслеживания загрузки

const fetchSection = async () => {
  try {
    section.value = (await axiosAgregator.sendGet(`/api/v1/sections/${id}`, token!)).data;
    sectionClasses.value = section.value.classes; // Предполагаем, что классы приходят в ответе
    console.log(section.value);
  } catch (err) {
    console.log(err);
  } finally {
    isLoading.value = false; // Устанавливаем состояние загрузки в false в любом случае
  }
};

onMounted(fetchSection);

const toggleInfo = () => {
  showInfo.value = !showInfo.value;
};
</script>

<template>
  <div class="flex flex-col h-auto rounded-lg overflow-hidden border-2 border-main_green bg-clear_white">
    <div class="h-50 flex flex-row items-center justify-start">
      <img alt="" class="w-[40%] h-auto rounded-md" src="@assets/icons/main_page/volleyball.jpg"/>
      <div class="flex flex-col rounded-lg ml-4 mt-10  bg-main_green pl-4">
        <p class="text-xl text-clear_white mt-5">{{ section.title }}</p>
        <p class="text-clear_white text-xl mt-5">{{ section.description }}</p>
        <p class="text-clear_white text-xl mt-5">Адрес: </p>
      </div>
    </div>
    <div v-if="sectionClasses.length > 0" class="w-full p-4">
      <h3 class="text-clear_white">Занятия в секции:</h3>
      <ul>
        <li v-for="(classItem, index) in sectionClasses" :key="index">
          <ClassCard :class-info="classItem"/>
        </li>
      </ul>
    </div>
  </div>
</template>


<style scoped>
.info-box {
  transition: all 0.3s ease;
}
</style>
