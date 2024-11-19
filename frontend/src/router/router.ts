
import {createRouter, createWebHistory, RouteRecordRaw} from "vue-router";
// @ts-ignore
import ClientProfile from "@/pages/ClientProfile.vue";
import MainPage from "@/pages/MainPage.vue";
import RegistrationPage from "@/pages/AuthPage.vue";
import "../output.css"


const routes: Array<RouteRecordRaw> = [
    {
        path: '/profile/client',
        component: ClientProfile,
        meta: { fullPage: false}
    },
    {
        path: '/',
        component: MainPage,
        meta: { fullPage: false}
    },
    {
        path: '/profile/client',
        component: ClientProfile,
        meta: { fullPage: false}
    },
    {
        path: '/register',
        component: RegistrationPage,
        meta: { fullPage: true, login: false}
    },
    {
        path: '/login',
        component: RegistrationPage,
        meta: { fullPage: true, login: true}
    }
];


const router = createRouter({
    routes,
    history: createWebHistory(),
})



export default router;