import {createApp} from 'vue'
import './style.css'
import App from './App.vue'
import {createPinia} from "pinia";
import piniaPluginPersistedstate from 'pinia-plugin-persistedstate';
import router from "@/router.ts";

const pinia = createPinia();
pinia.use(piniaPluginPersistedstate);

const renderApp = () => {
    const app = createApp(App);
    app.use(pinia)
    app.use(router)
    app.mount('#app')
}

renderApp()
