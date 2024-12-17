import {createApp} from 'vue'
import './style.css'
import App from './App.vue'
import {createPinia} from "pinia";
import piniaPluginPersistedstate from 'pinia-plugin-persistedstate';
import router from "@/router.ts";
import { createYmaps } from 'vue-yandex-maps';

const pinia = createPinia();
pinia.use(piniaPluginPersistedstate);
const renderApp = () => {

    const app = createApp(App);
    app.use(pinia)
    app.use(router)
    app.use(createYmaps({
        apikey: 'df9055b8-bd7c-48bc-983c-129946e6e5ce', // Замените на ваш ключ API
        lang: 'ru_RU', // Язык карты
        version: '2.1', // Версия API Яндекс.Карт
        initializeOn: 'onPluginInit'
    }));
    app.mount('#app')
}

renderApp()
