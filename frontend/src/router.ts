import {createRouter, createWebHistory} from "vue-router";
import CartPage from "@/pages/CartPage.vue";
import UserPage from "@/pages/UserPage.vue";
import SectionPage from "@/pages/SectionPage.vue";

const filterPath = (to: any, _from: any, next: any) => {
    if (to.fullPath !== to.path) {
        next({path: to.path});
    }

    next();
}

const routes = [
    {
        path: "/cart",
        name: "Cart",
        component: CartPage,
        beforeEnter: filterPath
    },
    {
        path: "/user",
        name: "User page",
        component: UserPage,
        beforeEnter: filterPath
    },
    {
        path: "/section",
        name: "Section selection page",
        component: SectionPage,
        beforeEnter: filterPath
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router