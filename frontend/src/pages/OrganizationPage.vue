<script lang="ts" setup>
import LessonCard from "@/components/organization_page/LessonCard.vue";
</script>

<template>
  <div class="flex flex-row my-5 h-dvh">
    <div class="flex flex-col gap-2 basis-3/12 items-center bg-form_grey px-7 py-5 overflow-y-auto">
      <div class="h-64 w-[80%]  mt-6 mb-4 rounded-full">
        <img alt="User avatar" class="w-full h-full" src="@/assets/org_photo.png"/>
      </div>
      <div
          class="text-primary-content flex flex-col gap-2 w-full h-auto bg-clear_white p-5 m-3 border-2 border-base-100 rounded-lg">
        <p class="text-2xl">Programming school</p>
        <p>Адрес: ул. Варшавская, дом 5</p>
        <div>Оценка:

          <div class="rating">
            <input class="mask mask-star-2 bg-stars" name="rating-2" type="radio"/>
            <input
                checked="checked"
                class="mask mask-star-2 bg-stars"
                name="rating-2"
                type="radio"/>
            <input class="mask mask-star-2 bg-stars" name="rating-2" type="radio"/>
            <input class="mask mask-star-2 bg-stars" name="rating-2" type="radio"/>
            <input class="mask mask-star-2 bg-stars" name="rating-2" type="radio"/>
          </div>

        </div>
        <p>Отзывов: 54</p>

        <div class="flex flex-col gap-2 items-center">
          <button class="btn btn-wide">Просмотреть отзывы</button>
          <button class="btn btn-wide">Оставить отзыв</button>
        </div>

      </div>
      <div
          class="text-primary-content flex flex-col gap-2 w-full h-auto bg-clear_white p-5 m-3 border-2 border-base-100 rounded-lg">
        <p class="text-2xl">Контакты</p>
        <p>Телефон: 89992344455</p>
        <p>Почта: company@gmail.com</p>
        <p>Телеграмм: @Telegram</p>
      </div>
      <div class="flex w-full flex-col items-center gap-2 mt-2">
        <button class="btn bg-main_green btn-md w-[100%]">Изменить данные</button>
      </div>
    </div>
    <div class="flex flex-col basis-9/12 gap-2 w-[100%] h-[100vh] bg-clear_white overflow-y-auto">
      <div class="flex flex-row">
        <p class="flex w-[95%] text-main_green flex-row text-center mt-4 m-2 text-4xl rounded-lg">
          Объявления:
        </p>
      </div>
      <div class="p-2 w-full h-auto grid gap-4 items-center">
        <LessonCard/>
        <LessonCard/>
        <LessonCard/>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>