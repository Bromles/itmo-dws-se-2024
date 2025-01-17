<script setup lang="ts">
import { ref, onMounted } from "vue";
import AdminSectionCard from "@/components/admin/AdminCard.vue";
import axiosAgregator from "@/api/axiosAgregator.ts";
import { useAuth } from "@/utils/composables.ts";
import AbonementCard from "@/components/abonement/AbonementCard.vue";
import AdminAbonementCard from "@/components/admin/AdminAbonementCard.vue";

// Ссылка на компоненты
const modalTitle = ref<string>('');  // Для заголовка модального окна
const modalInputField = ref<string>('');  // Для содержимого модального окна
const placeholderInput = ref<string>('');  // Для содержимого модального окна
const flag = ref(false);  // Использует ref для создания реактивной переменной
const sections = ref([]);
const abonements = ref([]);
const isLoading = ref(true);
const error = ref(null);
const token = await useAuth().getToken();
const selectedSectionId = ref<string | null>(null); // Новая переменная для хранения ID выбранной секции
const abonements_path = "/api/v1/abonements";
const sections_path = "/api/v1/sections";
let current_path: string = sections_path;

// Функция для изменения флага отображения секций/абонементов
const changeFlag = (newFlag: boolean) => {
  flag.value = newFlag;
  if (newFlag) {
    current_path = abonements_path
  } else {
    current_path = sections_path
  }
  selectedSectionId.value = null; // Сбрасываем выбранную секцию при переключении на абонементы
};

const form = ref({
  title: '',
  price: ''
});

const handleSubmit = async () => {
  try {
    if (token != null) {
      console.log(current_path)
      const response = (await axiosAgregator.sendPost(current_path, { ...form.value, section_id: selectedSectionId.value }, token)).data.data;
      const modal = document.getElementById("my_modal_2") as HTMLDialogElement;
      modal?.close();
      if (!flag) {
        await fetchAbonements();
      } else {
        await fetchSections()
      }
      console.log('Данные успешно отправлены:', response);
    }
  } catch (error) {
    console.error('Ошибка при отправке данных:', error);
  }
}

// Метод для загрузки секций
const fetchSections = async () => {
  try {
    if (token != null) {
      sections.value = (await axiosAgregator.sendGet('/api/v1/sections/owned', token)).data.data;
      isLoading.value = false;
    }
  } catch (err) {
    error.value = err;
    isLoading.value = false;
  }
};

const fetchAbonements = async () => {
  try {
    if (token != null) {
      abonements.value = (await axiosAgregator.sendGet('/api/v1/abonements/owned', token)).data.data;
      isLoading.value = false;
    }
  } catch (err) {
    error.value = err;
    isLoading.value = false;
  }
};

// Функция для открытия модального окна с переданными данными
const openModalFromParent = (title: string, field: string, placeholder: string) => {
  modalTitle.value = title;
  modalInputField.value = field;
  placeholderInput.value = placeholder;
  selectedSectionId.value = null; // Сбрасываем выбранную секцию при открытии модалки
  const modal = document.getElementById("my_modal_2") as HTMLDialogElement;
  modal?.showModal();  // Открываем модальное окно
};

onMounted(() => {
  fetchSections();
  fetchAbonements()
});
</script>

<template>
  <div class="flex flex-row w-full h-auto">
    <div class="basis-3/12 flex flex-col items-center bg-form_grey overflow-y-auto h-auto">
      <div class="mb-4 mt-4 w-[95%] gap-4 flex text-main_green flex-col items-center rounded-md">
        <div class="text-2xl">Тип объявления</div>
        <button @click="changeFlag(false)" class="btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey">
          Секции
        </button>
        <button @click="changeFlag(true)" class="btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey">
          Абонементы
        </button>
        <button v-if="!flag" @click="openModalFromParent('Добавление секции', 'секции', 'секция по')" class="btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey">
          Добавить секцию
        </button>
        <button v-if="flag" @click="openModalFromParent('Добавление абонемента', 'абонемента', 'абонемент по')" class="btn btn-wide border-2 bg-clear_white text-main_green hover:bg-form_grey">
          Добавить абонемент
        </button>
      </div>
    </div>

    <!-- Отображение секций и абонементов -->
    <div v-if="!flag" class="basis-9/12 mb-4 p-4 flex gap-4 flex-col min-h-screen h-auto bg-clear_white">
      <div class="w-full text-2xl p-2 rounded-lg text-center text-clear_white bg-main_green">Секции</div>
      <AdminSectionCard v-for="section in sections" :key="'section-' + section.id" :fetch-sections="fetchSections" :admin-card-info="{ id: section.id, price: section.price, title: section.title }" />
    </div>

    <div v-if="flag" class="basis-9/12 mb-4 p-4 flex gap-4 flex-col min-h-screen h-auto bg-clear_white">
      <div class="w-full text-2xl p-2 rounded-lg text-center text-clear_white bg-main_green">Абонементы</div>
      <AdminAbonementCard v-for="abonement in abonements" :key="'subscription-' + n" :fetch-sections="fetchAbonements" :admin-abonement-info="abonement"/>
    </div>

    <!-- Модальное окно -->
    <dialog id="my_modal_2" class="modal">
      <div class="modal-box flex flex-col gap-4 justify-center items-center">
        <h3 class="text-clear_white text-xl font-bold">{{ modalTitle }}</h3>
        <label class="text-clear_white text-xl">Наименование {{ modalInputField }}</label>
        <input v-model="form.title" type="text" v-bind:placeholder="`${placeholderInput} волейболу`" class="input input-bordered w-full bg-clear_white max-w-xs text-main_green" />

        <div v-if="flag" class="flex flex-col gap-4 items-center w-full justify-center">
        <!-- Выпадающий список для выбора секции -->
          <label class="text-clear_white text-xl">Выберите секцию</label>
          <select v-model="selectedSectionId" class="input input-bordered w-full bg-clear_white max-w-xs text-main_green">
            <option value="" disabled>Выберите секцию</option>
            <option v-for="section in sections" :key="'section-select-' + section.id" :value="section.id">{{ section.title }}</option>
          </select>
        </div>

        <label class="text-clear_white text-xl">Прайс {{ modalInputField }}</label>
        <input v-model="form.price" type="number" placeholder="1000" class="input input-bordered w-full bg-clear_white max-w-xs text-main_green" />
        <button @click="handleSubmit()" class="btn btn-wide mt-4 border-2 bg-clear_white text-main_green hover:bg-form_grey">Добавить</button>
      </div>
      <form method="dialog" class="modal-backdrop">
        <button>close</button>
      </form>
    </dialog>
  </div>
</template>


<style scoped>

</style>