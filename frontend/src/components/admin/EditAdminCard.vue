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
  avatar: 'https://lh3.googleusercontent.com/5igosursCqkb708efkXZvf5ydce78ajkgiDnZjzqwthTxJUaap__6w8Tx_4DUdZ2jDKuXNQYOosF8JDJxw-dxgKDwXS8zPDD2P8phV7bHA=s2500-rw'
});

const lessons = ref([]);
const lessonsLoaded = ref(false);

const loadCardData = async () => {
  const id = route.params.id;
  const response = await axiosAgregator.sendGet(`/api/v1/sections/${id}`, token);
  form.value.title = response.data.title;
  form.value.price = response.data.price;

  // Загрузка уроков
  await loadLessons(id);
};

const loadLessons = async (id) => {
  try {
    const response = await axiosAgregator.sendGet(`/api/v1/sections/${id}/classes`, token);
    lessons.value = response.data.classes;
    console.log(lessons.value)
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
    await axiosAgregator.sendPut(`/api/v1/sections/${id}`, { ...form.value }, token);
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



const addLesson = async () => {
  try {
    const id = route.params.id;
    await axiosAgregator.sendPost(`/api/v1/sections/${id}/classes`, { ...lessonForm.value }, token);
    lessonForm.value.title = '';
    lessonForm.value.description = '';
    await loadLessons(id); // Перезагружаем уроки после добавления нового
  } catch (error) {
    console.error('Ошибка при добавлении урока:', error);
  }
};
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
      <h2 class="mb-4 text-2xl font-bold text-center">Редактировать карточку</h2>
      <form @submit.prevent="onSubmit">
        <div  v-if="form.avatar"  class="h-30 bg-white flex flex-row items-center justify-center">
          <img alt="" class="w-[95%] h-[95%] rounded-md" :src="form.avatar"/>
        </div>
        <div class="mb-4">
          <label for="title" class="block text-sm font-medium text-gray-700">Название</label>
          <input v-model="form.title" type="text" id="title" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
        </div>
        <div class="mb-4">
          <label for="price" class="block text-sm font-medium text-gray-700">Цена</label>
          <input v-model.number="form.price" type="number" id="price" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
        </div>
        <div class="mb-4">
          <label for="avatar" class="block text-sm font-medium text-gray-700">Аватар</label>
          <input type="file" id="avatar" @change="onAvatarChange" accept="image/*" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" />
        </div>


        <button type="submit" class="w-full btn btn-primary">
          Сохранить изменения
        </button>
      </form>

      <!-- Разделитель -->
      <hr class="my-6 border-gray-300"/>

      <!-- Секция для добавления новых уроков -->
      <h2 class="mt-8 mb-4 text-2xl font-bold text-center">Добавить новый урок</h2>
      <form @submit.prevent="addLesson">
        <div class="mb-4">
          <label for="lessonTitle" class="block text-sm font-medium text-gray-700">Название урока</label>
          <input v-model="lessonForm.title" type="text" id="lessonTitle" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
        </div>
        <div class="mb-4">
          <label for="lessonContent" class="block text-sm font-medium text-gray-700">Содержание урока</label>
          <textarea v-model="lessonForm.description" id="lessonContent" rows="3" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required></textarea>
        </div>

        <!-- Выбор возрастной группы -->
        <div class="mb-4">
          <label for="ageGroup" class="block text-sm font-medium text-gray-700">Возрастная группа</label>
          <select v-model="lessonForm.ageGroup" id="ageGroup" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green">
            <option value="" disabled selected>Выберите возрастную группу</option>
            <option value="0-6">0-6 лет</option>
            <option value="7-12">7-12 лет</option>
            <option value="13-17">13-17 лет</option>
            <option value="18+">18 лет и старше</option>
          </select>
        </div>

        <!-- Выбор пола -->
        <div class="mb-4">
          <label for="gender" class="block text-sm font-medium text-gray-700">Пол</label>
          <select v-model="lessonForm.gender" id="gender" class="mt-1 block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green">
            <option value="" disabled selected>Выберите пол</option>
            <option value="male">Мужской</option>
            <option value="female">Женский</option>
            <option value="other">Другой</option>
          </select>
        </div>

        <button type="submit" class="w-full btn btn-primary">
          Добавить урок
        </button>
      </form>

      <!-- Сообщение, если уроки не загружены -->
      <div v-if="lessonsLoaded && lessons.length === 0" class="mt-4 text-center text-red-500">
        Уроки не найдены.
      </div>
    </div>

    <!-- Прокручиваемая секция с уроками -->
    <div class="w-2/3 p-6 overflow-y-auto bg-gray-200">
      <!-- Отображение загруженных уроков -->
      <ul v-if="lessonsLoaded && lessons.length > 0">
        <li v-for="lesson in lessons" :key="lesson.id">
          <ClassCard :class-info="lesson" />
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
