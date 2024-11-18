<template>
  <div class="flex h-screen">
    <aside id="default-sidebar" class="fixed top-0 left-0 z-40 w-64 h-screen bg-gray-800 transition-transform -translate-x-full sm:translate-x-0" aria-label="Sidebar">
      <OrganizationSidebar />
    </aside>

    <div class="flex-grow ml-64 bg-white p-4 overflow-y-auto">
      <!-- Блок высотой 50 пикселей -->
      <div class="h-12 bg-gray-200 flex items-center justify-center mb-4">
        <h2 class="text-lg font-bold text-custom-green">Список клиентов</h2>
      </div>

      <!-- Список карточек клиентов -->
      <div class="flex overflow-x-auto space-x-4 mb-4">
        <ClientCard
            v-for="client in clients"
            :key="client.id"
            :client="client"
            class="w-100"
        />
      </div>

      <!-- Новый блок для списка карточек объявлений -->
      <div class="h-12 bg-gray-200 flex items-center justify-center mb-4" >
        <h2 class="text-lg font-bold text-custom-green">Список объявлений</h2>
      </div>

      <div class="flex flex-col space-y-4">
        <AdCard
            v-for="ad in ads"
            :key="ad.id"
            :ad="ad"
        />
      </div>
    </div>
  </div>
</template>

<script>
import ClientCard from "@/components/card/ClientCard.vue";
import OrganizationSidebar from "@/components/navigation/OrganizationSidebar.vue";
import AdCard from "@/components/card/AdCard.vue";

export default {
  name: 'UserProfile',
  components: { OrganizationSidebar, ClientCard, AdCard },
  data() {
    return {
      clients: [
        { id: 1, name: 'Клиент', info: 'Информация о клиенте 1' },
        { id: 2, name: 'Иванов Залупа', info: 'Информация о клиенте 2' },
        { id: 3, name: 'Клиент 3', info: 'Информация о клиенте 3' },
        { id: 4, name: 'Клиент 4', info: 'Информация о клиенте 4' },
        { id: 5, name: 'Клиент 5', info: 'Информация о клиенте 5' },
        { id: 6, name: 'Клиент 6', info: 'Информация о клиенте 6' },
      ],
      ads: [
        { id: 1, title: 'Объявление 1', description: 'Описание объявления 1' },
        { id: 2, title: 'Объявление 2', description: 'Описание объявления 2' },
        { id: 3, title: 'Объявление 3', description: 'Описание объявления 3' },
        // Убедитесь, что идентификаторы уникальны
      ],
    };
  },
};
</script>

<style scoped>
.client-card {
  width: 300px; /* Установите желаемую ширину */
}
</style>
