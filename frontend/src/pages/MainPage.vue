<script setup lang="ts">
  import SectionCard from "@/components/main_page/SectionCard.vue";
  import "../output.css"
  import FormInput from "@/components/main_page/FormInput.vue";
  import FormSelect from "@/components/main_page/FormSelect.vue";
</script>

<template>
    <div class="flex flex-row w-full h-auto">
      <div class="flex flex-col basis-3/12 bg-main_green h-screen fixed overflow-y-auto max-h-screen">
        <!-- Родительский контейнер для фильтров -->
        <div style="width: 95%; margin-bottom: 20%; height: auto; background-color: #d9d9d9; display: flex; flex-direction: column; align-items: center" class="gap-1.5 h-full bg-form_grey">
          <!-- Вложенный квадрат (полоска) -->
          <div class="bg-main_green text-md text-center align-middle rounded-md mt-4 text-clear_white"
            style="width: 95%; height: 30px">
            Фильтры
          </div>
          <div style="width: 95%; height: auto; background-color: white" class="mb-4 mt-4 flex flex-col items-center rounded-md bg-form_grey border-2 border-main_green">
            <div style="font-size: 18px">Локация</div>
            <form-input label="Город" id="location" placeholder="Санкт-Петербург"/>
            <form-input label="Район" id="location" placeholder="Московский"/>
          </div>
          <div style="width: 95%; height: auto; background-color: white" class="mb-4 mt-4 flex flex-col items-center rounded-md bg-form_grey border-2 border-main_green">
            <div style="font-size: 18px">Секции</div>
            <form-select label="Тип секции" id="location" placeholder="Спортивная" :options="[
              { value: 'volleyball', text: 'Спортивная' },
              { value: 'football', text: 'Музыкальная' },
            ]"/>
            <form-select label="Вид спорта" id="location" placeholder="Волейбол" :options="[
              { value: 'volleyball', text: 'Волейбол' },
              { value: 'football', text: 'Футбол' },
            ]"/>
          </div>
          <div style="width: 95%; height: auto; background-color: white" class="mb-4 mt-4 flex flex-col items-center rounded-md bg-form_grey border-2 border-main_green">
            <div style="font-size: 18px">Стоимость</div>
            <form-input label="От" id="location" placeholder="5000"/>
            <form-input label="До" id="location" placeholder="10000"/>
          </div>
          <div class="bg-main_green" style="width: 100%; height: 40px; display: flex; flex-direction: row; align-items: center; justify-content: center">
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