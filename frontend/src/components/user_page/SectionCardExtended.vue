<script setup lang="ts">


import {defineProps} from "vue";

const props = defineProps< {
  card: {
    id: string;
    title: string;
    section: {
      id: Number,
      title: String
    };
  }
}>();
</script>

<template>
  <div class="flex flex-row items-center h-[20%] rounded-lg overflow-hidden border-2 my-5 bg-primary border-base-100 w-[95%]">
    <div class="h-[90%] flex flex-row items-center justify-center px-2">
      <img class="h-[95%] w-[95%] rounded-md" src="../../assets/volleyball.jpg" alt="section poster"/>
    </div>
    <div class="flex flex-col justify-center w-[75%] h-[90%] bg-base-100 rounded-lg px-5 mx-4">
      <p class="text-3xl text-primary-content">
        {{ props.card.section }} <!-- Отображение title -->
      </p>
      <div class="flex flex-col justify-between">
        <div class="flex flex-col w-[95%] py-4 text-sm">
          <p>Занятие: {{props.card .title}}</p>
        </div>

      </div>
    </div>
  </div>
</template>

<style scoped>

</style>