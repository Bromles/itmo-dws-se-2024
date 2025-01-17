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
});

const lessons = ref([]);
const lessonsLoaded = ref(false);
const sectionOptions = ref([]);
const classificationForm = ref({
  key: '',
  value: ''
});
const editingOption = ref(null);

const loadCardData = async () => {
  const id = route.params.id;
  const response = await axiosAgregator.sendGet(`/api/v1/abonements/${id}`, token);
  form.value.title = response.data.title;
  form.value.price = response.data.price;

  // Загрузка секции
  const sectionResponse = response.data.section;
  if (sectionResponse) {
    sectionOptions.value = sectionResponse.classifications.flatMap(classification => classification.options);
  }

  // Загрузка уроков
  await loadLessons(id);
};

const loadLessons = async (id) => {
  try {
    const response = await axiosAgregator.sendGet(`/api/v1/sections/${id}/classes`, token);
    lessons.value = response.data.classes;
    lessonsLoaded.value = true;
  } catch (error) {
    console.error('Ошибка при загрузке уроков:', error);
    lessonsLoaded.value = false; // Устанавливаем в false, если произошла ошибка
  }
};

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

// Метод для создания классификации
const createClassification = async () => {
  try {
    // Генерируем уникальное имя на основе текущего времени
    const generatedName = `Классификация-${Date.now()}`;

    // Отправляем запрос для создания классификации с GET параметром
    const response = await axiosAgregator.sendPost(`/api/v1/classifications?name=${encodeURIComponent(generatedName)}`, {}, token);

    return response.data.id; // Возвращаем ID классификации
  } catch (error) {
    console.error('Ошибка при создании классификации:', error);
    throw error;
  }
};

// Метод для добавления опции в классификацию
const createOption = async (classificationId: number, key: string, value: string, operator: string) => {
  try {

    const url = `/api/v1/classifications/${classificationId}/options?key=${encodeURIComponent(key)}&value=${encodeURIComponent(value)}&operator=${encodeURIComponent(operator)}`;

    // Выполняем GET запрос
    await axiosAgregator.sendPost(url, {}, token);
  } catch (error) {
    console.error('Ошибка при создании опции:', error);
    throw error;
  }
};


// Метод для прикрепления классификации к секции
const attachClassificationToSection = async (classificationId: number, sectionId: number) => {
  try {
    await axiosAgregator.sendPost(`/api/v1/classifications/${classificationId}/classes/${sectionId}`, {}, token);
  } catch (error) {
    console.error('Ошибка при прикреплении классификации к секции:', error);
    throw error;
  }
};

// Метод для создания и прикрепления новой классификации и опций
const addClassificationOption = async () => {
  const { key, value, operator } = classificationForm.value;
  if (!key || !value || !operator) {
    console.error('Необходимо заполнить все поля.');
    return;
  }

  try {
    const classificationId = await createClassification('Поражение мишени в яблочко'); // Название классификации можно передать как параметр
    await createOption(classificationId, key, value, operator);  // Добавляем оператор в запрос
    await attachClassificationToSection(classificationId, route.params.id); // Прикрепляем классификацию к секции
    classificationForm.value.key = ''; // Очистить поля формы после успешной отправки
    classificationForm.value.value = '';
    classificationForm.value.operator = '';  // Очистить поле оператора
    loadCardData(); // Обновляем данные секции
  } catch (error) {
    console.error('Ошибка при добавлении классификации и опций:', error);
  }
};

const editOption = (option) => {
  editingOption.value = { ...option }; // Сохраняем копию объекта для редактирования
};

// Функция для обновления option
const updateOption = async () => {
  if (!editingOption.value) return;
  try {
    const { id, key, value } = editingOption.value;
    await axiosAgregator.sendPut(`/api/v1/classifications/options/${id}`, { key, value }, token);
    editingOption.value = null;  // Закрываем форму редактирования
    await loadCardData();  // Обновляем данные
  } catch (error) {
    console.error('Ошибка при обновлении опции:', error);
  }
};

onMounted(loadCardData);
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
      <h2 class="mb-4 text-2xl font-bold text-center">Редактировать карточку</h2>
      <form @submit.prevent="onSubmit">
        <div class="mb-4">
          <label for="title" class="block text-sm font-medium text-gray-700">Название</label>
          <input v-model="form.title" type="text" id="title" class="mt-1 block w-full border border-gray-300 text-main_green rounded-md shadow-sm focus:ring focus:ring-main_green" required />
        </div>
        <div class="mb-4">
          <label for="price" class="block text-sm font-medium text-gray-700">Цена</label>
          <input v-model.number="form.price" type="number" id="price" class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
        </div>
        <button type="submit" class="w-full btn btn-primary">
          Сохранить изменения
        </button>
      </form>

      <!-- Разделитель -->
      <hr class="my-6 border-gray-300"/>

      <!-- Секция для отображения options из секции -->
      <div v-if="sectionOptions.length > 0" class="mt-6">
        <h3 class="text-xl font-bold text-center">Ограничения:</h3>
        <ul class="mt-4">
          <li v-for="option in sectionOptions" :key="option.id" class="mb-2">
            <span class="font-semibold">{{ option.key }}:</span> {{ option.value }}
            <button @click="editOption(option)" class="ml-4 text-main_white">Редактировать</button>
          </li>
        </ul>
      </div>

      <!-- Форма для редактирования опции -->
      <div v-if="editingOption" class="mt-8">
        <h3 class="text-xl font-bold text-center">Редактировать ограничение</h3>
        <form @submit.prevent="updateOption">
          <div class="mb-4">
            <label for="editKey" class="block text-sm font-medium text-gray-700">Ключ</label>
            <input v-model="editingOption.key" type="text" id="editKey" class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
          </div>
          <div class="mb-4">
            <label for="editValue" class="block text-sm font-medium text-gray-700">Значение</label>
            <input v-model="editingOption.value" type="text" id="editValue" class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
          </div>
          <button type="submit" class="w-full btn btn-primary">
            Обновить ограничение
          </button>
        </form>
      </div>

      <!-- Форма для добавления новой классификации и опции -->
      <div class="mt-8">
        <h3 class="text-xl font-bold text-center">Добавить ограничение</h3>
        <form @submit.prevent="addClassificationOption">
          <div class="mb-4">
            <label for="key" class="block text-sm font-medium text-gray-700">Ключ</label>
            <input v-model="classificationForm.key" type="text" id="key" class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
          </div>
          <div class="mb-4">
            <label for="value" class="block text-sm font-medium text-gray-700">Значение</label>
            <input v-model="classificationForm.value" type="text" id="value" class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
          </div>

          <!-- Новое поле для выбора оператора -->
          <div class="mb-4">
            <label for="operator" class="block text-sm font-medium text-gray-700">Оператор</label>
            <select v-model="classificationForm.operator" id="operator" class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required>
              <option value="GREATER_THAN">Больше</option>
              <option value="LESS_THAN">Меньше</option>
              <option value="EQUALS">Равно</option>
            </select>
          </div>

          <button type="submit" class="w-full btn btn-primary">
            Сохранить ограничение
          </button>
        </form>
      </div>

      <!-- Секция для добавления новых уроков -->
      <h2 class="mt-8 mb-4 text-2xl font-bold text-center">Добавить новое занятие</h2>
      <form @submit.prevent="addLesson">
        <div class="mb-4">
          <label for="lessonTitle" class="block text-sm font-medium text-gray-700">Название занятия</label>
          <input v-model="lessonForm.title" type="text" id="lessonTitle" class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required />
        </div>
        <div class="mb-4">
          <label for="lessonContent" class="block text-sm font-medium text-gray-700">Содержание занятия</label>
          <textarea v-model="lessonForm.description" id="lessonContent" rows="3" class="mt-1 text-main_green block w-full border border-gray-300 rounded-md shadow-sm focus:ring focus:ring-main_green" required></textarea>
        </div>

        <button type="submit" class="w-full btn btn-primary">
          Добавить занятие
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
    </div>
  </div>
</template>



<style scoped>
/* Опционально: стили для улучшения внешнего вида */
.overflow-y-auto {
  max-height: calc(100vh - 2rem); /* Настройте высоту по необходимости */
}
</style>
