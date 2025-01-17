<script setup lang="ts">
import { ref, onMounted } from 'vue';
import { useRoute, useRouter } from 'vue-router';
import axiosAgregator from "../../api/axiosAgregator";
import { useAuth } from "../../utils/composables";
import ClassCard from "../class/ClassCard.vue";

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

const parseIsoDuration = (duration: string) => {
  const matches = duration.match(/P(?:(\d+)Y)?(?:(\d+)M)?(?:(\d+)D)?/);
  if (matches) {
    return {
      years: parseInt(matches[1] || '0'),
      months: parseInt(matches[2] || '0'),
      days: parseInt(matches[3] || '0')
    };
  }
  return { years: 0, months: 0, days: 0 };
};

// Функция для формирования ISO 8601 длительности
const formatIsoDuration = () => {
  let duration = 'P';
  if (form.value.years > 0) duration += `${form.value.years}Y`;
  if (form.value.months > 0) duration += `${form.value.months}M`;
  if (form.value.days > 0) duration += `${form.value.days}D`;
  return duration === 'P' ? 'P0D' : duration;
};


const loadSubscriptionData = async () => {
  const id = route.params.id;
  try {
    const response = await axiosAgregator.sendGet(`/api/v1/abonements/${id}`, token);
    form.value.title = response.data.title;
    form.value.price = response.data.price;
    form.value.classesCount = response.data.classesCount;

    if (response.data.duration) {
      const duration = parseIsoDuration(response.data.isoDuration);
      form.value.years = duration.years;
      form.value.months = duration.months;
      form.value.days = duration.days;
    }

    await loadLessons(id);
  } catch (error) {
    console.error('Ошибка при загрузке данных абонемента:', error);
  }
};

const loadLessons = async (id) => {
  try {
    const response = await axiosAgregator.sendGet(`/api/v1/abonements/${id}/classes`, token);
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
    const params = new URLSearchParams();
    params.append('title', form.value.title);
    params.append('price', form.value.price.toString());
    params.append('duration', formatIsoDuration());
    if (form.value.classesCount !== null) {
      params.append('classesCount', form.value.classesCount.toString());
    }

    await axiosAgregator.sendPut(`/api/v1/abonements/${id}`, {
      title: form.value.title,
      price: form.value.price,
      duration: formatIsoDuration(),
      classesCount: form.value.classesCount.toString()
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
          <label class="block text-sm font-medium text-gray-700">Длительность</label>
          <div class="grid grid-cols-3 gap-2">
            <div>
              <label for="years" class="block text-xs text-gray-500">Годы</label>
              <input
                  v-model.number="form.years"
                  type="number"
                  id="years"
                  min="0"
                  class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green"
              />
            </div>
            <div>
              <label for="months" class="block text-xs text-gray-500">Месяцы</label>
              <input
                  v-model.number="form.months"
                  type="number"
                  id="months"
                  min="0"
                  class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green"
              />
            </div>
            <div>
              <label for="days" class="block text-xs text-gray-500">Дни</label>
              <input
                  v-model.number="form.days"
                  type="number"
                  id="days"
                  min="0"
                  class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green"
              />
            </div>
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