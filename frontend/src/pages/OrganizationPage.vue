<script setup lang="ts">
import LessonCard from "@/components/organization_page/LessonCard.vue";
import ClientCard from "@/components/organization_page/ClientCard.vue";
</script>

<template>
  <div class="flex flex-row my-5 h-min">
    <div class="flex flex-col h-auto gap-2 basis-3/12 items-center bg-form_grey px-7 py-5">
      <div class="h-64 w-[100%] mt-6 mb-4 rounded-full">
        <img class="w-full h-full " src="@/assets/org_photo.png" alt="User avatar"/>
      </div>
      <div class="text-primary-content flex flex-col gap-2 w-full h-auto bg-clear_white p-5 m-3 border-2 border-base-100 rounded-lg">
        <p class="text-2xl">Programming school</p>
        <p>Адрес: ул. Варшавская, дом 5</p>
        <div>Оценка:

          <div class="rating">
            <input type="radio" name="rating-2" class="mask mask-star-2 bg-stars" />
            <input
                type="radio"
                name="rating-2"
                class="mask mask-star-2 bg-stars"
                checked="checked" />
            <input type="radio" name="rating-2" class="mask mask-star-2 bg-stars" />
            <input type="radio" name="rating-2" class="mask mask-star-2 bg-stars" />
            <input type="radio" name="rating-2" class="mask mask-star-2 bg-stars" />
          </div>

        </div>
        <p>Отзывов: 54</p>

        <div class="flex flex-col gap-2 items-center">
          <button class="btn btn-wide">Просмотреть отзывы</button>
          <button class="btn btn-wide">Оставить отзыв</button>
        </div>

      </div>
      <div class="text-primary-content flex flex-col gap-2 w-full h-auto bg-clear_white p-5 m-3 border-2 border-base-100 rounded-lg">
        <p class="text-2xl">Контакты</p>
        <p>Телефон: 89992344455</p>
        <p>Почта: company@gmail.com</p>
        <p>Телеграмм: @Telegram</p>
      </div>
      <div class="flex w-full flex-col items-center gap-2 mt-2">
        <button class="btn bg-main_green btn-md w-[100%]">Изменить данные</button>
      </div>
    </div>
    <div class="flex px-4 pb-2 flex-col h-[100%] basis-9/12 gap-2 w-[100%] bg-cover bg-main_background overflow-y-auto">
      <div class="flex flex-row">
        <p class="flex w-[95%] text-main_green flex-row text-center mt-4 text-4xl rounded-lg">
          Клиенты:
        </p>
      </div>
      <div class="flex flex-row w-full h-auto bg-form_grey rounded-lg">
        <div class="p-2 w-full grid grid-cols-3 gap-4 items-center basis-10/12 h-auto">
          <ClientCard/>
          <ClientCard/>
          <ClientCard/>
          <ClientCard/>
          <ClientCard/>
          <ClientCard/>
        </div>
        <div class="basis-2/12 bg-main_green h-auto rounded-r-lg p-2 flex flex-col justify-around items-center">
          <div class="bg-clear_white rounded-full size-2/3 flex flex-row items-center cursor-pointer">
            <img src="@/assets/arrow_green.png" class="object-cover w-[90%] h-[90%]">
          </div>
          <div>
            <p class="text-clear_white text-xl">Просмотреть еще</p>
          </div>
        </div>
      </div>
      <div class="flex flex-row">
        <p class="flex w-[95%] text-main_green flex-row text-center mt-4 text-4xl rounded-lg">
          Объявления:
        </p>
      </div>
      <div class=" w-full grid gap-4 items-center">
        <LessonCard/>
        <LessonCard/>
        <LessonCard/>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>