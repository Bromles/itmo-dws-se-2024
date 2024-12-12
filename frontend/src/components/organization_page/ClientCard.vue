<script setup lang="ts">
import { ref, onMounted } from 'vue';

const props = defineProps<{
  userInfo: {
    id: string;
    username: string;
  };
}>();

onMounted(() => {

});
</script>

<template>
  <div class="flex p-2 flex-row justify-between items-center bg-main_green rounded-lg w-auto h-auto">
    <div class="w-[20%] rounded-full bg-clear_white">
      <img :src="'@/assets/person_icon.svg'" class="w-full h-full object-cover" alt="Avatar">
    </div>
    <div class="w-[50%] h-auto text-center">
      <p class="text-2xl text-clear_white">{{ userInfo.username || 'Неизвестный клиент' }}</p>
    </div>
    <div class="w-[20%]">
      <img src="@/assets/arrow.png" class="w-full h-full" alt="Arrow">
    </div>
  </div>
</template>

<style scoped>

</style>