<script setup lang="ts">
import AdminSectionCard from "@/components/admin/AdminCard.vue";
import {onMounted, ref} from "vue";
import axiosAgregator from "@/api/axiosAgregator.ts";
import {useAuth} from "@/utils/composables.ts";


const auth = useAuth()
const token = await auth.getToken()
const flag = ref(false);  // использует ref для создания реактивной переменной
const error = ref(null);
const sections = ref([]);
const isLoading = ref(true);

const changeFlag = (newFlag: boolean): void => {
  flag.value = newFlag;
};

const fetchSections = async () => {
  try {
    sections.value = (await axiosAgregator.sendGet('/api/v1/sections/owned', token)).data.data;
    isLoading.value = false;
  } catch (err) {
    error.value = err;
    isLoading.value = false;
  }
}


onMounted(fetchSections)
</script>

<template>
  <div class="flex flex-row w-full h-auto">
    <div class="basis-3/12 flex flex-col items-center bg-form_grey overflow-y-auto h-auto">
      <div class="mb-4 mt-4 w-[95%] gap-4 flex text-main_green flex-col items-center rounded-md">
        <div class="text-2xl">Тип объявления</div>
        <button @click="changeFlag(false)" class="btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey">
          Секции
        </button>
        <button @click="changeFlag(true)" class="btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey">
          Абонементы
        </button>
      </div>
    </div>

    <div v-if="!flag"  class="basis-9/12 mb-4 p-4 flex gap-4 flex-col h-auto bg-clear_white">
      <div class="w-full text-2xl p-2 rounded-lg text-center text-clear_white bg-main_green">Секции</div>
      <AdminSectionCard v-for="section in sections" :key="'section-' + n" :admin-card-info="{id: section.id, name: section.title}" />
    </div>

    <div v-if="flag"  class="basis-9/12 mb-4 p-4 flex gap-4 flex-col h-auto bg-clear_white">
      <div class="w-full text-2xl p-2 rounded-lg text-center text-clear_white bg-main_green">Абонементы</div>
      <AdminSectionCard v-for="n in 10" :key="'subscription-' + n" :admin-card-info="{id: n, name: 'Абонемент по волейболу'}" />
    </div>
  </div>
</template>

<style scoped>

</style>