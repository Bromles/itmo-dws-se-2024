<script lang="ts" setup>
import { useRouter } from "vue-router";
import { useAuth } from "@/utils/composables.ts";
import { useAuthStore } from "@/stores/authStore.ts";
import {onMounted, ref} from "vue";
import DG from "2gis-maps"
import axiosAgregator from "@/api/axiosAgregator.ts";

const router = useRouter();
const auth = useAuth();
const store = useAuthStore();
const role = store.userRole;

const error = ref(null);
const isLoading = ref(true);
const mapPointers = ref([])
const token = await auth.getToken()
const modal1 = ref(null)
const map = ref(null)

const fetchMapPointers = async () => {
  try {
    console.log("imhere")
    const answer = (await axiosAgregator.sendGet('/api/v1/maps', token));
    mapPointers.value = answer.data
    isLoading.value = false;
    modal1.value.showModal()
    loadMapPointers()
  } catch (err) {
    error.value = err;
    isLoading.value = false;
  }
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
      console.log("im finish")
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
        <img alt="calendar icon" class="h-6 w-6" src="@/assets/calendar_icon.svg"/>
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
      <div class="modal-box bg-clear_white w-full h-[60%]">
        <div ref="mapContainer" class="w-full h-full"/>
      </div>
      <form method="dialog" class="modal-backdrop">
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
