<script lang="ts" setup>
import {useRouter} from "vue-router";

const router = useRouter()
</script>

<template>
  <div class="flex flex-col items-center gap-5">
    <div class="flex flex-col h-auto rounded-lg overflow-hidden border-2 border-base-100">
      <div class="h-40 bg-white flex flex-row items-center justify-center">
        <img alt="section poster" class="w-[95%] h-[95%] rounded-md" src="@assets/volleyball.jpg"/>
      </div>
      <div class="flex flex-col items-center justify-center w-full bg-main_green h-auto">
        <div class="bg-base-100 flex flex-col mx-auto px-2 py-4 text-sm">
          <p>Набор в волейбольную секцию Магнитка</p>
          <p>Возраст: 7-14 лет</p>
          <p>Улица: Варшавская 110</p>
          <div class="flex flex-row items-center justify-center gap-2">
            <button class="btn btn-primary rounded-md text-center w-[40%] mt-2" @click="router.push('/section')">
              Просмотреть
            </button>
            <button class="btn btn-primary rounded-md text-center w-[40%] mt-2">
              Удалить
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>