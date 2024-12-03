<script setup lang="ts">
import { ref, onMounted } from 'vue';
import axiosAgregator from "@/server/axiosAgregator";
import { useRoute } from 'vue-router';
import ClassCard from "@/components/class/ClassCard.vue";

const section = ref({});
const sectionClasses = ref([]); // Добавляем переменную для классов секции

const route = useRoute();
const id = route.params.id;

const showInfo = ref(false);
const isLoading = ref(true); // Добавляем переменную для отслеживания загрузки

const fetchSection = async () => {
  try {
    const response = (await axiosAgregator.sendGet(`/api/v1/sections/${id}`, {})).data;
    section.value = response;
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
  <div class="flex flex-col h-auto rounded-lg overflow-hidden border-2 border-main_green">
    <div class="h-50 bg-white flex flex-row items-center justify-start">
      <img class="w-[40%] h-auto rounded-md" src="@assets/icons/main_page/volleyball.jpg" alt=""/>
      <div class="flex flex-col ml-4">
        <p class="text-clear_white">{{ section.title }}</p>
        <p class="text-clear_white">{{ section.description }}</p>
        <p class="text-clear_white">Адрес: </p>
      </div>
    </div>
    <div v-if="sectionClasses.length > 0" class="bg-main_green w-full p-4">
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
