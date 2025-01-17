<script lang="ts" setup>
import { useRouter } from "vue-router";
import { useAuth } from "@/utils/composables.ts";
import { useAuthStore } from "@/stores/authStore.ts";
import {onMounted, ref} from "vue";
import DG from "2gis-maps"
import axiosAgregator from "@/api/axiosAgregator.ts";
import FullCalendar from "@fullcalendar/vue3";
import dayGridPlugin from "@fullcalendar/daygrid"
import interactionPlugin from "@fullcalendar/interaction"
// import timeGridPlugin from '@fullcalendar/timegrid';

const router = useRouter();
const auth = useAuth();
const store = useAuthStore();
const role = store.userRole;

const error = ref(null);
const isLoading = ref(true);
const mapPointers = ref([])
const calendarRecords = ref([])
const token = await auth.getToken()
const modal1 = ref(null)
const modal2 = ref(null)
const map = ref(null)
const calendarApi = ref(null)
const userUUID = "67f8eb69-97cc-4781-bb72-778b16e03908" //пока вручную указывать

const calendarOptions = ref({
  plugins: [ dayGridPlugin, interactionPlugin ],
  initialView: 'dayGridMonth',
  expandRows: true,
  eventBackgroundColor: '#027f00',
  eventDisplay: "block",
  eventTimeFormat: {
    hour: '2-digit',
    minute: '2-digit',
    meridiem: false,
    hour12: false
  }
});

const fetchMapPointers = async () => {
  try {
    const mapDataAnswer = (await axiosAgregator.sendGet(`/api/v1/maps`, token));
    mapPointers.value = mapDataAnswer.data
    isLoading.value = false;
    modal1.value.showModal()
    loadMapPointers()
  } catch (err) {
    error.value = err;
    isLoading.value = false;
  }
}

const fetchCalendarData = async () => {
  const calendarDataAnswer = (await axiosAgregator.sendGet(`/api/v1/cal_records/${userUUID}`, token));
  calendarRecords.value = calendarDataAnswer.data
  isLoading.value = false;
  modal2.value.showModal()
  const api = calendarApi.value.getApi()
  api.removeAllEvents()
  calendarRecords.value.forEach(record => {
    const { title, start_time, end_time } = record;
    api.addEvent({
      title: title,
      start: start_time,
      end: end_time
    })
  })
}

const mapContainer = ref(null);

onMounted(() => {
  map.value = DG.map(mapContainer.value, {
    center: [59.934280, 30.335099],
    zoom: 13,
    key: "c5ebe1d7-8a2f-41d6-a678-b019f7c04ada"
  });
  DG.then(map)
  fetchMapPointers()
});

const loadMapPointers = () => {
  console.log(mapPointers.value)
    mapPointers.value.forEach(pointer => {
      const { xcoordinate, ycoordinate, marker_name, popup_message } = pointer;
       DG.marker([xcoordinate, ycoordinate]).addTo(map.value)
           .bindLabel(marker_name)
           .bindPopup(popup_message)
    })
}

</script>

<template>
  <nav class="flex sticky justify-between items-center p-4">
    <div>
      <button v-if="!store.authenticated" class="btn btn-primary" @click="auth.login">Войти</button>
      <button v-else class="btn btn-primary" @click="store.logout(auth)">Выйти</button>
    </div>
    <div class="flex justify-between gap-3 items-center">
      <RouterLink class="hover:underline text-2xl" to="">О компании</RouterLink>
      <RouterLink class="hover:underline text-2xl" to="">Отзывы</RouterLink>
      <button
          v-if="role === 'employee'"
          class="hover:underline text-2xl"
          @click="router.push('/admin')">Организация
      </button>
      <button
          v-else-if="role === 'client'"
          class="hover:underline text-2xl"
          @click="router.push('/user')">Пользователь
      </button>
      <RouterLink
          v-else
          class="hover:underline text-2xl"
          to="">Связаться
      </RouterLink>
    </div>
    <div class="flex justify-between gap-3 mr-3">
      <button class="btn btn-circle btn-primary">
        <img alt="calendar icon" class="h-6 w-6" src="@/assets/calendar_icon.svg" @click="fetchCalendarData"/>
      </button>
      <button v-if="role !== 'employee'" class="btn btn-circle btn-primary" @click="fetchMapPointers">
        <img alt="map icon" class="h-6 w-6" src="@/assets/map.png"/>
      </button>
      <router-link v-if="role === 'client'" class="btn btn-circle btn-primary" :to="{ path: '/user' }">
        <img alt="person icon" class="h-6 w-6" src="@/assets/person_icon.svg"/>
      </router-link>
      <router-link v-else class="btn btn-circle btn-secondary" :to="{ path: '/org' }">
        <img alt="client icon" class="h-6 w-6" src="@/assets/person_icon.svg"/>
      </router-link>
      <button v-if="role !== 'employee'" class="btn btn-circle btn-primary" @click="router.push('/cart')">
        <img alt="cart icon" class="h-6 w-6" src="@/assets/cart_icon.svg"/>
      </button>
    </div>
    <dialog ref="modal1" class="modal w-full h-full">
      <div class="bg-clear_white modal-box size-[70%] max-w-[100%] border-r-8">
        <div ref="mapContainer" class="w-full h-full"/>
      </div>
      <form method="dialog" class="modal-backdrop modal2">
        <button>close</button>
      </form>
    </dialog>

    <dialog ref="modal2" class="modal w-full h-full">
      <div class="bg-clear_white modal-box size-[70%] max-w-[100%] border-r-8">
        <FullCalendar ref="calendarApi" class="w-full h-full text-main_green" v-bind:options="calendarOptions"/>
      </div>
      <form method="dialog" class="modal-backdrop modal1">
        <button>close</button>
      </form>
    </dialog>

  </nav>
</template>

<style scoped>
  .yandex-container {
    height: 100%;
    width: 100%;
  }
</style>
