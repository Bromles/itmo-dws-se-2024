<script setup lang="ts">
import { ref, onMounted } from 'vue';
import axiosAgregator from "@/server/axiosAgregator";
import { useRoute } from 'vue-router';


const section = ref({})

const route = useRoute();
const id = route.params.id;

const showInfo = ref(false);


const fetchSection = async () => {
  try {
    const response = (await axiosAgregator.sendGet(`/api/v1/sections/${id}`, {
    })).data;
    section.value = response;
    console.log(section.value.title);
    isLoading.value = false;
  } catch (err) {
    console.log(err);
    isLoading.value = false;
  }
}
onMounted(fetchSection)

const toggleInfo = () => {
  showInfo.value = !showInfo.value;
};
</script>

<template>
  <div class="flex flex-col h-auto rounded-lg overflow-hidden border-2 border-main_green">
    <div class="h-50 bg-white flex flex-row items-center justify-center">
      <img class="w-[95%] h-[95%] rounded-md" src="@assets/icons/main_page/volleyball.jpg" alt=""/>
    </div>
    <div class="flex flex-col items-center justify-center w-full bg-main_green h-auto">
      <div class="bg-main_green flex flex-col w-[95%] mx-auto py-4 text-sm">
        <p class="text-clear_white">{{ section.title }}</p>
      </div>
      <div v-if="showInfo" class="info-box p-4 bg-white text-black rounded-md shadow-md mt-2">
        <p>sdfsd</p>
      </div>
    </div>
  </div>
</template>

<style scoped>
.info-box {
  transition: all 0.3s ease;
}
</style>
