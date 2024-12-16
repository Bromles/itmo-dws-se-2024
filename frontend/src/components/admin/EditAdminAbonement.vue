<script setup lang="ts">
import { ref, onMounted } from 'vue';
import { useRoute, useRouter } from 'vue-router';
import axiosAgregator from '@/api/axiosAgregator.ts';
import { useAuth } from '@/utils/composables.ts';
import ClassCard from "@/components/class/ClassCard.vue";
import UserCard from "@/components/abonement/AbonementUsageCard.vue";
import AbonementUsageCard from "@/components/abonement/AbonementUsageCard.vue";

const route = useRoute();
const router = useRouter();
const token = await useAuth().getToken();
const lessonsLoaded = ref(false);

const form = ref({
  title: '',
  price: 0,
});

const usages = ref([]);

const loadCardData = async () => {
  const id = route.params.id;
  const response = await axiosAgregator.sendGet(`/api/v1/abonements/${id}`, token);
  form.value.title = response.data.title;
  form.value.price = response.data.price;

  // Загрузка уроков
  await loadUsers(id);
};

const loadUsers = async (id) => {
  try {
    const response = await axiosAgregator.sendGet(`/api/v1/abonements/${id}`, token);
    usages.value = response.data.usages;
    console.log(usages.value)
    lessonsLoaded.value = true;
  } catch (error) {
    console.error('Ошибка при загрузке уроков:', error);
    lessonsLoaded.value = false; // Устанавливаем в false, если произошла ошибка
  }
};

onMounted(loadCardData);

const onSubmit = async () => {
  try {
    const id = route.params.id;
    await axiosAgregator.sendPut(`/api/v1/abonements/owned`, { ...form.value }, token);
    router.push({ name: 'YourPreviousPage' });
  } catch (error) {
    console.error('Ошибка при обновлении данных:', error);
  }
};

// Форма для добавления нового урока
const lessonForm = ref({
  title: '',
  description: '',
});


</script>

<template>
  <div class="flex min-h-screen bg-clear_white">
    <!-- Кнопка "Назад" -->
    <div class="absolute top-25 right-4">
      <button @click="router.back()" class="btn btn-secondary bg-main_green text-neutral-50">
        Назад
      </button>
    </div>

    <!-- Секция редактирования -->
    <div class="w-1/3 ml-5 mt-5 p-6 bg-white rounded-lg shadow-md bg-main_green">
      <h2 class="mb-4 text-2xl font-bold text-center">Редактировать абонемент</h2>
      <form @submit.prevent="onSubmit">
        <!-- Поля формы -->
        <div class="mb-4">
          <label for="title" class="block text-sm font-medium text-gray-700">Название</label>
          <input v-model="form.title" type="text" id="title" class="mt-1 text-neutral-950 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
        </div>
        <div class="mb-4">
          <label for="price" class="block text-sm font-medium text-gray-700">Цена</label>
          <input v-model.number="form.price" type="number" id="price" class="mt-1 text-neutral-950 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
        </div>
        <div class="mb-4">
          <label for="durationUnit" class="block text-sm font-medium text-gray-700">Период</label>
          <select v-model="form.durationUnit" id="durationUnit" class="mt-1 block text-neutral-950 w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green">
            <option value="">Выберите период</option>
            <option value="день">День</option>
            <option value="неделя">Неделя</option>
            <option value="месяц">Месяц</option>
            <option value="год">Год</option>
          </select>
        </div>

        <!-- Условное отображение поля для ввода количества -->
        <div class="mb-4" v-if="form.durationUnit">
          <label for="durationCount" class="block text-neutral-950 text-sm font-medium text-gray-700">Количество</label>
          <input v-model.number="form.durationCount" type="number" id="durationCount" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
        </div>

        <!-- Новое поле для ввода количества занятий -->
        <div class="mb-4">
          <label for="sessionsCount" class="block text-sm font-medium text-gray-700">Количество занятий</label>
          <input v-model.number="form.sessionsCount" type="number" id="sessionsCount" class="mt-1 text-neutral-950 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
        </div>

        <button type="submit" class="w-full btn btn-primary">
          Сохранить изменения
        </button>
      </form>
    </div>

    <!-- Прокручиваемая секция с уроками -->
    <div class="w-2/3 p-6 overflow-y-auto bg-gray-200">
      <!-- Заголовок для подписанных пользователей -->
      <h3 class="text-xl font-semibold mb-4 text-neutral-950">Подписанные пользователи</h3>

      <!-- Отображение загруженных уроков -->
      <ul v-if="lessonsLoaded && usages.length > 0">
        <li v-for="usage in usages" :key="usage.id">
          <AbonementUsageCard :abonement-usage="usage"/>
        </li>
      </ul>
    </div>
  </div>
</template>


<style scoped>
/* Опционально: стили для улучшения внешнего вида */
.overflow-y-auto {
  max-height: calc(100vh - 2rem); /* Настройте высоту по необходимости */
}
</style>




<style scoped>
/* Опционально: стили для улучшения внешнего вида */
.overflow-y-auto {
  max-height: calc(100vh - 2rem); /* Настройте высоту по необходимости */
}
</style>




<style scoped>
</style>
