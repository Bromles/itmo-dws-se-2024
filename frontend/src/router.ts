import {createRouter, createWebHistory} from "vue-router";
import CartPage from "@/pages/CartPage.vue";
import UserPage from "@/pages/UserPage.vue";
import SectionPage from "@/pages/SectionPage.vue";
import MainPage from "@/pages/MainPage.vue";
import SectionInfo from "@/pages/SectionInfo.vue";
import OrganizationPage from "@/pages/OrganizationPage.vue";
import SigninCallback from "@/components/SigninCallback.vue";
import AdminPanel from "@/pages/AdminOrganizationPage.vue";
import EditAdminCard from "@/components/admin/EditAdminCard.vue";
import EditAdminAbonement from "./components/admin/EditAdminAbonement.vue";
// import AuthPage from "@/pages/AuthPage.vue";

const filterPath = (to: any, _from: any, next: any) => {
    if (to.fullPath !== to.path) {
        next({path: to.path});
    }

    next();
}

const routes = [
    {
        path: "",
        name: "Main page",
        component: MainPage
    },
    {
        path: '/signin-callback',
        name: 'Signin callback',
        component: SigninCallback
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
    },
    {
        path: "/org",
        name: "Organization page",
        component: OrganizationPage,
        beforeEnter: filterPath
    },
    {
        path: '/sections/:id',
        component: SectionInfo,
        name: 'SectionInfo'
    },
    {
        path: '/admin',
        component: AdminPanel,
        name: 'AdminPanel'
    },
    {
        path: '/admin/edit/card/:id',
        name: 'EditAdminCard',
        component: EditAdminCard,
    },
    {
        path: '/admin/edit/abonement/:id',
        name: 'EditAdminAbonement',
        component: EditAdminAbonement,
    },
    // {
    //     path: "/register",
    //     name: "Register page",
    //     component: AuthPage,
    //     meta: {
    //         login: true
    //     }
    // },
    // {
    //     path: "/login",
    //     name: "Login page",
    //     component: MainPage,
    //     meta: {
    //         login: false
    //     }
    // }
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router
