<script setup lang="ts">
const props = defineProps<{
  adminCardInfo: {
    id: number;
    name: string
  }


}>();

</script>

<template>
<div class="w-full items-center py-2 text-xl rounded-lg text-clear_white h-auto bg-main_green flex flex-row justify-around">
  <p>{{props.adminCardInfo.id}}</p>
  <p>{{props.adminCardInfo.name}}</p>
  <p>Дата пуб. 10.10.2024</p>
  <button class="btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey">
    Изменить
  </button>
  <button class="btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey">
    Удалить
  </button>
</div>
</template>

<style scoped>

</style>