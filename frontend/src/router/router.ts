
import {createRouter, createWebHistory, RouteRecordRaw} from "vue-router";
// @ts-ignore
import ClientProfile from "@/components/client/ClientProfile.vue";


const routes: Array<RouteRecordRaw> = [
    { path: '/profile/client', component: ClientProfile },
];


const router = createRouter({
    routes,
    history: createWebHistory(),
})



export default router;