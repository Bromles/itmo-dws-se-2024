
import {createRouter, createWebHistory, RouteRecordRaw} from "vue-router";
// @ts-ignore
import ClientProfile from "@/pages/ClientProfile.vue";
import MainPage from "@/pages/MainPage.vue";
import "../output.css"


const routes: Array<RouteRecordRaw> = [
    { path: '/profile/client', component: ClientProfile },
    { path: '/', component: MainPage}
];


const router = createRouter({
    routes,
    history: createWebHistory(),
})



export default router;