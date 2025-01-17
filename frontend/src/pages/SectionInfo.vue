<script lang="ts" setup>
import { onMounted, ref } from 'vue';
import axiosAgregator from "@/api/axiosAgregator.ts";
import { useRoute } from 'vue-router';
import ClassCard from "@/components/class/ClassCard.vue";
import { useAuth } from "@/utils/composables.ts";
import AbonementCard from "@/components/abonement/AbonementCard.vue";

const section = ref({});
const sectionClasses = ref([]);
const abonements = ref([]);

const route = useRoute();
const id = route.params.id;

const auth = useAuth();
const token = await auth.getToken();

const showInfo = ref(false);
const isLoading = ref(true);

const fetchSection = async () => {
  try {
    console.log(token);
    section.value = (await axiosAgregator.sendGet(`/api/v1/sections/${id}`, token)).data;
    sectionClasses.value = section.value.classes;
    abonements.value = section.value.abonements;
    console.log(abonements.value);

  } catch (err) {
    console.log(err);
  } finally {
    isLoading.value = false;
  }
};

onMounted(fetchSection);

const toggleInfo = () => {
  showInfo.value = !showInfo.value;
};
</script>

<template>
  <div class="flex flex-col h-auto rounded-lg overflow-hidden border-2 border-main_green bg-clear_white">
    <div class="h-50 flex flex-row items-start justify-start">
      <img alt="" class="w-[40%] h-auto rounded-md mt-5 ml-5" src="@assets/icons/main_page/volleyball.jpg"/>
      <div class="flex flex-col rounded-lg ml-4 mt-5 bg-main_green p-10 w-full mr-5">
        <p class="text-xl text-clear_white mt-5">{{ section.title }}</p>
        <p class="text-clear_white text-xl mt-5">{{ section.description }}</p>
        <p class="text-clear_white text-xl mt-5">Адрес: </p>
      </div>
    </div>

    <div class="flex flex-row">
      <!-- Список занятий -->
      <div class="w-1/2 p-4 border-r border-neutral-300">
        <h3 class="text-main_green font-bold text-2xl mb-2">Занятия в секции:</h3>
        <ul>
          <li v-for="(classItem, index) in sectionClasses" :key="index">
            <ClassCard :class-info="classItem"/>
          </li>
        </ul>
      </div>

      <!-- Список абонементов -->
      <div class="w-1/2 p-4">
        <h3 class="text-main_green text-2xl font-bold mb-2">Доступные абонементы:</h3>
        <ul>
          <li v-for="(abonement, index) in abonements" :key="index">
            <AbonementCard :abonement-info="abonement"/>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<style scoped>
.info-box {
  transition: all 0.3s ease;
}
</style>
