<script setup lang="ts">
  import SectionCard from "@/components/main_page/SectionCard.vue";
</script>

<template>
  <div class="bg-white w-full h-screen">
    <div class="flex flex-row w-full h-full">
      <div class="basis-3/12 bg-amber-600 h-full"></div>
      <div class="basis-9/12 bg-blue-600 h-full">
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
          <SectionCard/>
          <SectionCard/>
          <SectionCard/>
          <SectionCard/>
          <SectionCard/>
          <SectionCard/>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>


</style>