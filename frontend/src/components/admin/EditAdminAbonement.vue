<script setup lang="ts">
import { ref, onMounted } from 'vue';
import { useRoute, useRouter } from 'vue-router';
import axiosAgregator from '@/api/axiosAgregator.ts';
import { useAuth } from '@/utils/composables.ts';
import ClassCard from "@/components/class/ClassCard.vue";

const route = useRoute();
const router = useRouter();
const token = await useAuth().getToken();

const form = ref({
  title: '',
  price: 0,
  durationType: 'month', // день, месяц, год
  durationCount: 1, // количество выбранных промежутков
  classesCount: null, // количество занятий (если требуется)
});

const durationTypes = [
  { value: 'day', label: 'День' },
  { value: 'month', label: 'Месяц' },
  { value: 'year', label: 'Год' },
];

const lessons = ref([]);
const lessonsLoaded = ref(false);

const loadSubscriptionData = async () => {
  const id = route.params.id;
  try {
    const response = await axiosAgregator.sendGet(`/api/v1/subscriptions/${id}`, token);
    form.value.title = response.data.title;
    form.value.price = response.data.price;
    form.value.classesCount = response.data.classesCount;

    // Парсинг длительности из строки (предполагая, что duration приходит в формате "2 months")
    if (response.data.duration) {
      const durationParts = response.data.duration.split(' ');
      if (durationParts.length === 2) {
        form.value.durationCount = parseInt(durationParts[0]);
        form.value.durationType = durationParts[1].endsWith('s')
            ? durationParts[1].slice(0, -1)
            : durationParts[1];
      }
    }

    await loadLessons(id);
  } catch (error) {
    console.error('Ошибка при загрузке данных абонемента:', error);
  }
};

const loadLessons = async (id) => {
  try {
    const response = await axiosAgregator.sendGet(`/api/v1/subscriptions/${id}/classes`, token);
    lessons.value = response.data.classes;
    lessonsLoaded.value = true;
  } catch (error) {
    console.error('Ошибка при загрузке уроков:', error);
    lessonsLoaded.value = false;
  }
};

onMounted(loadSubscriptionData);

const onSubmit = async () => {
  try {
    const id = route.params.id;
    const duration = `${form.value.durationCount} ${form.value.durationType}${form.value.durationCount > 1 ? 's' : ''}`;

    await axiosAgregator.sendPut(`/api/v1/subscriptions/${id}`, {
      title: form.value.title,
      price: form.value.price,
      duration: duration,
      classesCount: form.value.classesCount
    }, token);

    router.push({ name: 'YourPreviousPage' });
  } catch (error) {
    console.error('Ошибка при обновлении данных:', error);
  }
};
</script>

<template>
  <div class="flex min-h-screen bg-clear_white">
    <!-- Кнопка "Назад" -->
    <div class="absolute top-[31px] left-[120px]">
      <button @click="router.back()" class="btn btn-secondary text-main_green bg-clear_white">
        Назад
      </button>
    </div>

    <!-- Секция редактирования -->
    <div class="w-1/3 ml-5 mt-6 mb-6 p-6 bg-white rounded-lg shadow-md bg-main_green">
      <h2 class="mb-4 text-2xl font-bold text-center">Редактировать абонемент</h2>
      <form @submit.prevent="onSubmit">
        <div class="mb-4">
          <label for="title" class="block text-sm font-medium text-gray-700">Название</label>
          <input v-model="form.title" type="text" id="title" class="mt-1 block w-full border border-gray-300 text-main_green rounded-md shadow-sm focus:ring focus:ring-main_green" required />
        </div>

        <div class="mb-4">
          <label for="price" class="block text-sm font-medium text-gray-700">Цена</label>
          <input v-model.number="form.price" type="number" id="price" class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
        </div>

        <div class="mb-4">
          <label for="durationCount" class="block text-sm font-medium text-gray-700">Длительность</label>
          <div class="flex space-x-2">
            <input
                v-model.number="form.durationCount"
                type="number"
                id="durationCount"
                min="1"
                class="mt-1 text-main_green block w-1/3 border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green"
                required
            />
            <select
                v-model="form.durationType"
                class="mt-1 text-main_green block w-2/3 border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green"
            >
              <option v-for="type in durationTypes" :key="type.value" :value="type.value">
                {{ type.label }}
              </option>
            </select>
          </div>
        </div>

        <div class="mb-4">
          <label for="classesCount" class="block text-sm font-medium text-gray-700">Количество занятий</label>
          <input
              v-model.number="form.classesCount"
              type="number"
              id="classesCount"
              min="0"
              class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green"
          />
        </div>

        <button type="submit" class="w-full btn btn-primary">
          Сохранить изменения
        </button>
      </form>
    </div>

    <!-- Прокручиваемая секция с уроками -->
    <div class="w-2/3 overflow-y-auto bg-gray-200 items-center flex flex-col justify-start h-auto mt-6 mb-6">
      <ul v-if="lessonsLoaded && lessons.length > 0" class="w-full h-auto">
        <li v-for="lesson in lessons" :key="lesson.id" class="w-full h-auto flex flex-row items-center justify-center">
          <ClassCard :class-info="lesson" />
        </li>
      </ul>
      <div v-if="lessonsLoaded && lessons.length === 0" class="mt-4 text-center text-red-500">
        Уроки не найдены.
      </div>
    </div>
  </div>
</template>

<style scoped>
.overflow-y-auto {
  max-height: calc(100vh - 2rem);
}
</style>