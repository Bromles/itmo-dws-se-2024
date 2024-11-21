import {createRouter, createWebHistory} from "vue-router";
import CartPage from "@/pages/CartPage.vue";
import UserPage from "@/pages/UserPage.vue";
import SectionPage from "@/pages/SectionPage.vue";
import ClientProfile from "@/pages/ClientProfile.vue";
import MainPage from "@/pages/MainPage.vue";
import RegistrationPage from "@/pages/AuthPage.vue";

const filterPath = (to: any, _from: any, next: any) => {
    if (to.fullPath !== to.path) {
        next({path: to.path});
    }

    next();
}

const routes = [
    {
        path: '/',
        component: MainPage,
        meta: {fullPage: false},
        beforeEnter: filterPath
    },
    {
        path: '/profile/client',
        component: ClientProfile,
        meta: {fullPage: false},
        beforeEnter: filterPath
    },
    {
        path: '/register',
        component: RegistrationPage,
        meta: {fullPage: true, login: false},
        beforeEnter: filterPath
    },
    {
        path: '/login',
        component: RegistrationPage,
        meta: {fullPage: true, login: true},
        beforeEnter: filterPath
    },
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