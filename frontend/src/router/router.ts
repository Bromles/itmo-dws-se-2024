
import {createRouter, createWebHistory, RouteRecordRaw} from "vue-router";
// @ts-ignore
import ClientProfile from "@/components/client/ClientProfile.vue";
import OrganizationProfile from "@/components/client/OrganizationProfile.vue";


const routes: Array<RouteRecordRaw> = [
    { path: '/client/profile', component: ClientProfile },
    { path: '/organization/profile', component: OrganizationProfile },

];


const router = createRouter({
    routes,
    history: createWebHistory(),
})



export default router;