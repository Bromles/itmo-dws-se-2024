import {createApp} from 'vue'
import './style.css'
// @ts-ignore
import router from './router/router.ts';
// @ts-ignore
import App from './App.vue'

createApp(App).use(router).mount('#app')
