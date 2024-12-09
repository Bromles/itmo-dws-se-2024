<script lang="ts" setup>
const props = defineProps<{
  card: {
    id: string;
    title: string;
    section: {
      id: number;
      title: string;
    };
  };
}>();
</script>

<template>
  <div class="flex flex-col items-center gap-5">
    <div class="flex flex-col h-auto rounded-lg overflow-hidden border-2 border-base-100">
      <div class="h-40 bg-white flex flex-row items-center justify-center">
        <img alt="section poster" class="w-[95%] h-[95%] rounded-md" src="../../assets/volleyball.jpg"/>
      </div>
      <div class="flex flex-col items-center justify-center w-full bg-main_green h-auto">
        <div class="bg-base-100 flex flex-col mx-auto px-2 py-4 text-sm">
          <p class="text-3xl text-primary-content">
            {{ props.card.section.title }}
          </p>
          <p class="text-3xl text-primary-content">
          </p>
          <p>Занятие: {{ props.card.title }}</p>

        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
</style>
