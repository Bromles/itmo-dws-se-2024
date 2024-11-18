import {createApp} from 'vue'
import './style.css'
import App from './App.vue'
import {createPinia} from "pinia";
import piniaPluginPersistedstate from 'pinia-plugin-persistedstate';
import router from "@/router.ts";
import {AuthService} from "@/services/authService.ts";

const pinia = createPinia();
pinia.use(piniaPluginPersistedstate);

const renderApp = () => {
    const app = createApp(App);
    app.use(pinia)
    app.use(router)

    app.provide('authService', new AuthService())

    app.mount('#app')
}

renderApp()
