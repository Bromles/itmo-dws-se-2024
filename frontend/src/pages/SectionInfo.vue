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
    section.value = (await axiosAgregator.sendGet(`/api/v1/sections/${id}`, token)).data;
    sectionClasses.value = section.value.classes;
    abonements.value = section.value.abonements;

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
  <div class="flex flex-col h-auto rounded-lg overflow-hidden border-2 bg-clear_white">
    <div class="h-50 flex flex-row items-start justify-start">
      <img alt="" class="w-[40%] h-auto rounded-md mt-5 ml-5" src="../../public/vlb.jpg"/>
      <div class="flex flex-col rounded-lg ml-4 mt-5 bg-main_green p-10 w-full mr-5">
        <p class="text-xl text-clear_white">{{ section.title }}</p>
        <p class="text-clear_white text-xl mt-5">Секция волейбола для детей в Санкт-Петербурге
          Приглашаем детей в увлекательный мир волейбола! В нашей секции в Санкт-Петербурге опытные тренеры помогут юным спортсменам освоить основные навыки игры, развить командный дух и укрепить физическую форму. Занятия проходят в дружеской и поддерживающей атмосфере, способствующей раскрытию спортивного потенциала каждого ребёнка. Присоединяйтесь к нам и откройте для вашего ребёнка мир волейбола!</p>
        <p class="text-clear_white text-xl mt-5">Адрес: ул Варшавская, 34</p>
        <div class="mt-5 flex flex-row items-center text-center">
          <img class="size-[5%]" src="../../public/telegram.png"/>
          <p class="text-clear_white ml-3 text-xl">Telegram: @volleyball_spb</p>
        </div>
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
        <h3 class="text-main_green text-2xl font-bold">Доступные абонементы:</h3>
        <ul>
          <li v-for="(abonement, index) in abonements" :key="index">
            <AbonementCard
                :abonement-info="abonement"
                :sectionClasses="sectionClasses"
                />
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
