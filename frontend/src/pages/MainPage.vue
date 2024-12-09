<script lang="js" setup>
import {onMounted, ref} from 'vue'
import axiosAgregator from "@/api/axiosAgregator.ts";
import SectionCard from "@/components/main_page/SectionCard.vue";
import FormInput from "@/components/main_page/FormInput.vue";
import FormSelect from "@/components/main_page/FormSelect.vue";
import {useAuth} from "@/utils/composables.ts";

const sections = ref([])
const isLoading = ref(true)
const error = ref(null)
const auth = useAuth()
const token = await auth.getToken()

const fetchSections = async () => {
  try {
    const response = (await axiosAgregator.sendGet('/api/v1/sections', token)).data;
    sections.value = response.data;
    isLoading.value = false;
  } catch (err) {
    error.value = err;
    isLoading.value = false;
  }
}

onMounted(fetchSections)
</script>
<template>
  <div class="flex flex-row w-full bg-clear_white h-[100vh]">
    <div class="basis-3/12 flex flex-col items-center bg-form_grey overflow-y-auto h-lvh">
      <div
          class="bg-main_green flex items-center justify-center w-[95%] h-10 text-2xl rounded-md mt-2 text-clear_white">
        <p>Фильтры</p>
      </div>
      <div
          class="mb-4 mt-4 w-[95%] flex text-main_green flex-col items-center rounded-md bg-clear_white border-2 border-main_green">
        <div class="text-2xl">Локация</div>
        <FormInput id="city" label="Город" placeholder="Санкт-Петербург"/>
        <FormInput id="district" label="Район" placeholder="Московский"/>
      </div>

      <div
          class="mb-4 mt-4 w-[95%] flex flex-col text-main_green items-center rounded-md bg-clear_white border-2 border-main_green">
        <div class="text-2xl">Секции</div>
        <FormSelect id="sectionType" :options="[
              { value: 'volleyball', text: 'Спортивная' },
              { value: 'music', text: 'Музыкальная' },
            ]" label="Тип секции" placeholder="Спортивная"/>
        <FormSelect id="sportType" :options="[
              { value: 'volleyball', text: 'Волейбол' },
              { value: 'football', text: 'Футбол' },
            ]" label="Вид спорта" placeholder="Волейбол"/>
      </div>

      <div
          class="mb-4 mt-4 w-[95%] flex flex-col text-main_green items-center rounded-md bg-clear_white border-2 border-main_green">
        <div class="text-2xl">Стоимость</div>
        <FormInput id="minPrice" label="От" placeholder="5000"/>
        <FormInput id="maxPrice" label="До" placeholder="10000"/>
      </div>

      <div class="flex pt-4 pb-4 flex-row bg-main_green w-full h-20 items-center justify-center">
        <button
            class="btn btn-wide bg-clear_white text-main_green hover:bg-form_grey"
            @click="fetchSections"
        >
          Применить
        </button>
      </div>
    </div>

    <div class="basis-9/12 mb-4 flex flex-col h-auto p-6 bg-clear_white">
      <!-- Loading state -->
      <div v-if="isLoading" class="w-full flex justify-center items-center">
        Загрузка...
      </div>

      <!-- Error state -->
      <div v-else-if="error" class="w-full flex justify-center items-center text-red-500">
        Произошла ошибка при загрузке секций
      </div>

      <!-- Sections grid -->
      <div v-else-if="sections.length" class="mt-4 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-2">
        <SectionCard
            v-for="section in sections"
            :id="section.id"
            :title="section.title"
        />
      </div>

      <!-- No sections found state -->
      <div v-else class="w-full flex justify-center items-center">
        Секции не найдены
      </div>
    </div>
  </div>
</template>

<style scoped>


</style>