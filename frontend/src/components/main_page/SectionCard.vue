<script lang="ts" setup>
import { onMounted } from 'vue';
import router from "@/router.ts";

const props = defineProps({
  title: {
    type: String,
    required: true
  },
  id: {
    type: Number,
    required: true
  },
  avatar: String,
  options: {
    type: Array,
    required: false,
    default: () => []
  }
});

onMounted(() => {
});

const navigateToDetails = () => {
  router.push({ name: 'SectionInfo', params: { id: props.id } });
};
</script>

<template>
  <div class="flex flex-col h-auto rounded-lg overflow-hidden border-2 border-main_green">
    <div class="h-50 bg-white flex flex-row items-center justify-center">
      <img alt="Avatar" class="w-[95%] h-[95%] rounded-md" :src="props.avatar" />
    </div>
    <div class="flex flex-col items-center justify-center w-full bg-main_green h-auto">
      <div class="bg-main_green flex flex-col w-[95%] mx-auto py-4 text-sm">
        <p class="text-clear_white">{{ props.title }}</p>
        <!-- Вывод опций -->
        <div v-if="props.options.length > 0" class="mt-4">
          <p class="text-clear_white font-bold">Условия:</p>
          <ul class="text-clear_white">
            <li v-for="(option, index) in props.options" :key="index">
              {{ option.key }}: {{ option.value}}
              <span v-if="option.operator === '>'">+</span>
            </li>
          </ul>
        </div>
      </div>
      <button
          class="btn btn-[80%] rounded-lg min-w-2 btn-sm mb-2 bg-clear_white text-main_green hover:bg-form_grey"
          @click="navigateToDetails"
      >
        Просмотреть
      </button>
    </div>
  </div>
</template>

<style scoped>
/* Стиль для карточки */
</style>
