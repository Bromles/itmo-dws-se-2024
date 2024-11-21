<script lang="ts" setup>
import SectionCard from "@/components/main_page/SectionCard.vue";
import FormSelect from "@/components/main_page/FormSelect.vue";
import FormInput from "@/components/main_page/FormInput.vue";
</script>

<template>
  <div class="flex flex-row w-full h-auto">
    <div class="flex flex-col basis-3/12 bg-main_green h-screen fixed overflow-y-auto max-h-screen">
      <!-- Родительский контейнер для фильтров -->
      <div
          class="gap-1.5 h-full bg-form_grey"
          style="width: 95%; margin-bottom: 20%; height: auto; background-color: #d9d9d9; display: flex; flex-direction: column; align-items: center">
        <!-- Вложенный квадрат (полоска) -->
        <div class="bg-main_green text-md text-center align-middle rounded-md mt-4 text-clear_white"
             style="width: 95%; height: 30px">
          Фильтры
        </div>
        <div class="mb-4 mt-4 flex flex-col items-center rounded-md bg-form_grey border-2 border-main_green"
             style="width: 95%; height: auto; background-color: white">
          <div style="font-size: 18px">Локация</div>
          <FormInput id="location" label="Город" placeholder="Санкт-Петербург"/>
          <FormInput id="location" label="Район" placeholder="Московский"/>
        </div>
        <div class="mb-4 mt-4 flex flex-col items-center rounded-md bg-form_grey border-2 border-main_green"
             style="width: 95%; height: auto; background-color: white">
          <div style="font-size: 18px">Секции</div>
          <FormSelect id="location" :options="[
              { value: 'volleyball', text: 'Спортивная' },
              { value: 'football', text: 'Музыкальная' },
            ]" label="Тип секции" placeholder="Спортивная"/>
          <FormSelect id="location" :options="[
              { value: 'volleyball', text: 'Волейбол' },
              { value: 'football', text: 'Футбол' },
            ]" label="Вид спорта" placeholder="Волейбол"/>
        </div>
        <div class="mb-4 mt-4 flex flex-col items-center rounded-md bg-form_grey border-2 border-main_green"
             style="width: 95%; height: auto; background-color: white">
          <div style="font-size: 18px">Стоимость</div>
          <FormInput id="location" label="От" placeholder="5000"/>
          <FormInput id="location" label="До" placeholder="10000"/>
        </div>
        <div class="bg-main_green"
             style="width: 100%; height: 40px; display: flex; flex-direction: row; align-items: center; justify-content: center">
          <button class="rounded-md" style="width: 60%; height: 80%; background-color: white">Применить</button>
        </div>
      </div>
    </div>
    <div class="flex-col relative flex h-full items-center" style="width: 80%; margin-left: 20%">
      <div class="w-[95%] mt-4 mb-4 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-3 gap-4">
        <SectionCard/>
        <SectionCard/>
        <SectionCard/>
        <SectionCard/>
        <SectionCard/>
        <SectionCard/>
      </div>
    </div>
  </div>
</template>

<style scoped>
</style>