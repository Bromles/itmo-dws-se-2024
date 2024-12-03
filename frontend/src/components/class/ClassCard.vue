<script setup lang="ts">
import { defineProps } from 'vue';

const props = defineProps<{
  classInfo: {
    title: string;
    ageRange: string;
    teacher: string;
    time: string;
  };
}>();
</script>

<template>
  <div class="flex flex-row mt-10 bg-white">
    <div class="mt-5 w-[50%] mr-5 bg-base-200 rounded-lg p-5 shadow-lg">
      <p class="text-3xl text-primary-content">
        {{ props.classInfo.title }} <!-- Отображение title -->
      </p>
      <p class="text-xl text-primary-content mt-5">Возраст: {{ props.classInfo.ageRange }}</p>
      <p class="text-xl text-primary-content">Преподаватель: {{ props.classInfo.teacher }}</p>
      <p class="text-xl text-primary-content">Время: {{ props.classInfo.time }}</p>
      <button class="btn btn-secondary btn-base-100 rounded-md text-center w-[40%] mt-5">
        Добавить в корзину
      </button>
    </div>
  </div>
</template>

<style scoped>

</style>
