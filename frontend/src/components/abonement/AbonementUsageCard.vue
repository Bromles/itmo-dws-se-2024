<script lang="ts" setup>
const props = defineProps<{
  abonementUsage: {
    id: string;
    title: string;
    user: {
      username: string;
    };
    section: {
      title: string;
    };
    activationDate: string;
    disableDate: string;
    classesPassed: number;
  };
}>();


</script>

<template>
  <div class="flex flex-row h-80 w-full mt-10 rounded-lg overflow-hidden border-2 border-main_green">
    <div class="bg-clear_white basis-4/12 flex flex-row items-center justify-center">
      <img class="rounded-md" src="../../assets/lesson_card.png" alt="Изображение урока"/>
    </div>
    <div class="flex basis-8/12 flex-col gap-2 bg-main_green h-auto">
      <div class="bg-main_green flex flex-col gap-2 w-[95%] mx-6 mt-6 text-lg">
        <p class="text-clear_white text-2xl">{{ abonementUsage.title }}</p>
        <p class="text-clear_white">Секция: {{ abonementUsage.section.title }}</p>
        <p class="text-clear_white">Пользователь: {{ abonementUsage.user.username }}</p>
        <p class="text-clear_white">Дата активации: {{ abonementUsage.activationDate }}</p>
        <p class="text-clear_white">Дата отключения: {{ abonementUsage.disableDate }}</p>
        <p class="text-clear_white">Пройденные занятия: {{ abonementUsage.classesPassed }}</p>
      </div>
    </div>
  </div>
</template>

<style scoped>
/* Добавьте ваши стили здесь, если необходимо */
</style>
