import {createRouter, createWebHistory} from "vue-router";
import MainPage from "@/pages/MainPage.vue";

const filterPath = (to: any, _from: any, next: any) => {
    if (to.fullPath !== to.path) {
        next({path: to.path});
    }

    next();
}

const routes = [
    {
        path: "/",
        name: "Home",
        component: MainPage,
        beforeEnter: filterPath
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router