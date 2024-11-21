<script lang="ts" setup>
import Sidebar from "@/components/navigation/Sidebar.vue";

import {ref} from "vue";

const cards = ref([
  {id: 1, title: 'Карточка 1', content: 'Содержимое карточки 1'},
  {id: 2, title: 'Карточка 2', content: 'Содержимое карточки 2'},
  {id: 3, title: 'Карточка 3', content: 'Содержимое карточки 3'},
  {id: 1, title: 'Карточка 1', content: 'Содержимое карточки 1'},
  {id: 2, title: 'Карточка 2', content: 'Содержимое карточки 2'},
  {id: 3, title: 'Карточка 3', content: 'Содержимое карточки 3'},
  {id: 1, title: 'Карточка 1', content: 'Содержимое карточки 1'},
  {id: 2, title: 'Карточка 2', content: 'Содержимое карточки 2'},
  {id: 3, title: 'Карточка 3', content: 'Содержимое карточки 3'},
])

const handleButtonClick = (action: string) => {
  console.log(`Кнопка ${action} нажата`);
}
</script>

<template>
  <Sidebar/>
  <div class="user-profile">
    <div class="button-container">
      <button class="btn-subscriptions" @click="handleButtonClick('action1')">Ваши абонементы</button>
      <button class="btn-classes" @click="handleButtonClick('action2')">Ваши занятия</button>
      <button class="btn-watchlist" @click="handleButtonClick('action3')">Список наблюдения</button>
    </div>
    <div class="card-list">
      <Card v-for="card in cards" :key="card.id" :content="card.content" :title="card.title"/>
    </div>
  </div>
</template>


<style scoped>
</style>

