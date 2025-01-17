<script lang="js" setup>
import {onMounted, ref} from 'vue'
import axiosAgregator from "@/api/axiosAgregator.ts";
import SectionCard from "@/components/main_page/SectionCard.vue";
import FormInput from "@/components/main_page/FormInput.vue";
import FormSelect from "@/components/main_page/FormSelect.vue";
import {useAuth} from "@/utils/composables.ts";
import {useAuthStore} from "@/stores/authStore.ts";
import router from "@/router.ts";

const sections = ref([])
const isLoading = ref(true)
const error = ref(null)
const auth = useAuth()
const token = await auth.getToken()
const store = useAuthStore()
const minAge = ref(null);
const maxAge = ref(null);
const gender = ref(null);

const fetchSections = async () => {
  try {
    if (store.userRole === 'employee') {
      await router.push('/org');
    } else {
      const response = (await axiosAgregator.sendGet('/api/v1/sections', token)).data;
      const allSections = response.data;


      // Фильтрация секций по options
      sections.value = allSections.filter(section => {
        // Проверка наличия нужных ключей в options
        const hasAgeFilter = section.classifications.some(classification =>
            classification.options.some(option => option.key === "Возраст")
        );
        const hasGenderFilter = section.classifications.some(classification =>
            classification.options.some(option => option.key === "Пол")
        );

        // Если отсутствуют нужные поля, секция не проходит фильтрацию
        if ((minAge.value || maxAge.value) && !hasAgeFilter) return false;

        // Фильтрация по возрасту
        const ageFilter = (option) => {
          if (option.key === "Возраст") {
            const value = parseInt(option.value);
            const operator = option.operator;
            console.log(operator)
            if (operator === "GREATER_THAN") {
              if (minAge.value && value >= minAge.value) return false;
            } else if (operator === "<") {
              if (maxAge.value && value >= maxAge.value) return false;
            } else if (operator === ">=") {
              if (minAge.value && value < minAge.value) return false;
            } else if (operator === "<=") {
              if (maxAge.value && value > maxAge.value) return false;
            } else if (operator === "EQUALS") {
              if (minAge.value && value < minAge.value) return false;
              if (maxAge.value && value > maxAge.value) return false;
            }
          }
          return true;
        };


        // Фильтрация по полу
        const genderFilter = (option) => {
          if (option.key === "Пол" && gender.value) {
            if (option.value !== gender.value) return false;
          }
          return true;
        };

        // Проверяем все options для секци

        return section.classifications.every(classification =>
            classification.options.every(option =>
                ageFilter(option) && genderFilter(option)
            )
        );
      });

      sections.value = sections.value.map(section => {
        const allOptions = section.classifications.flatMap(classification =>
            classification.options.map(option => {
              const { operator, ...rest } = option; // Извлекаем оператор отдельно
              return { ...rest, operator }; // Добавляем оператор обратно в опцию
            })
        );
        return { ...section, allOptions }; // Добавляем новый ключ allOptions
      });


      isLoading.value = false;
    }
  } catch (err) {
    error.value = err;
    isLoading.value = false;
  }
};

onMounted(fetchSections)
</script>
<template>
  <div class="flex flex-row w-full bg-clear_white h-[100vh]">
    <div class="basis-3/12 flex flex-col items-center bg-form_grey overflow-y-auto h-lvh">
      <div
          class="bg-main_green flex items-center justify-center w-[95%] h-10 text-2xl rounded-md mt-2 text-clear_white">
        <p>Фильтры</p>
      </div>
      <div
          class="mb-4 mt-4 w-[95%] flex text-main_green flex-col items-center rounded-md bg-clear_white border-2 border-main_green">
        <div class="text-2xl">Локация</div>
        <FormInput id="city" label="Город" placeholder="Санкт-Петербург"/>
        <FormInput id="district" label="Район" placeholder="Московский"/>
      </div>

      <div
          class="mb-4 mt-4 w-[95%] flex flex-col text-main_green items-center rounded-md bg-clear_white border-2 border-main_green">
        <div class="text-2xl">Секции</div>
        <FormSelect id="sectionType" :options="[
              { value: 'volleyball', text: 'Спортивная' },
              { value: 'music', text: 'Музыкальная' },
            ]" label="Тип секции" placeholder="Спортивная"/>
        <FormSelect id="sportType" :options="[
              { value: 'volleyball', text: 'Волейбол' },
              { value: 'football', text: 'Футбол' },
            ]" label="Вид спорта" placeholder="Волейбол"/>
      </div>
      <div class="mb-4 mt-4 w-[95%] flex flex-col text-main_green items-center rounded-md bg-clear_white border-2 border-main_green">
        <div class="text-2xl">Возраст</div>
        <div class="mb-4 flex flex-col w-[90%]">
          <label :for="minAge" class="block text-lg font-medium text-gray-700 mb-1">
            От
          </label>
          <input v-model="minAge"
                 :placeholder="18"
                 class="input input-bordered w-full max-w-xs bg-form_grey border-main_green border-2"/>
        </div>
        <div class="mb-4 flex flex-col w-[90%]">
          <label :for="maxAge" class="block text-lg font-medium text-gray-700 mb-1">
            До
          </label>
          <input v-model="maxAge"
                 :placeholder="99"
                 class="input input-bordered w-full max-w-xs bg-form_grey border-main_green border-2"/>
        </div>

      </div>

      <div class="mb-4 mt-4 w-[95%] flex flex-col text-main_green items-center rounded-md bg-clear_white border-2 border-main_green">
        <div class="text-2xl">Пол</div>
        <div class="mb-4 flex flex-col w-[90%]">
          <label for="gender" class="block text-lg font-medium text-gray-700 mb-1">Пол</label>
          <select
              id="gender"
              v-model="gender"
              class="select select-bordered bg-form_grey border-2 border-main_green">
            <option v-for="(option, index) in [
                  { value: 'Мужской', text: 'Мужской' },
                  { value: 'Женский', text: 'Женский' }
                ]" :key="index" :value="option.value">
              {{ option.text }}
            </option>
          </select>
        </div>
      </div>

      <div
          class="mb-4 mt-4 w-[95%] flex flex-col text-main_green items-center rounded-md bg-clear_white border-2 border-main_green">
        <div class="text-2xl">Стоимость</div>
        <FormInput id="minPrice" label="От" placeholder="5000"/>
        <FormInput id="maxPrice" label="До" placeholder="10000"/>
      </div>

      <div class="flex pt-4 pb-4 flex-row bg-main_green w-full h-20 items-center justify-center">
        <button
            class="btn btn-wide bg-clear_white text-main_green hover:bg-form_grey"
            @click="fetchSections"
        >
          Применить
        </button>
      </div>
    </div>

    <div class="basis-9/12 mb-4 flex flex-col h-auto p-6 bg-clear_white">
      <!-- Loading state -->
      <div v-if="isLoading" class="w-full flex justify-center items-center">
        Загрузка...
      </div>

      <!-- Error state -->
      <div v-else-if="error" class="w-full flex justify-center items-center text-red-500">
        Произошла ошибка при загрузке секций
      </div>

      <!-- Sections grid -->
      <div v-else-if="sections.length" class="mt-4 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-2">
        <SectionCard
            v-for="section in sections"
            :id="section.id"
            :title="section.title"
            :avatar="section.avatar"
            :options="section.allOptions"
        />
      </div>

      <!-- No sections found state -->
      <div v-else class="w-full flex justify-center items-center">
        Секции не найдены
      </div>
    </div>
  </div>
</template>

<style scoped>


</style>