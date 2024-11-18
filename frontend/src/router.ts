import HelloWorld from "@/components/HelloWorld.vue";
import {createRouter, createWebHistory} from "vue-router";

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
        component: HelloWorld,
        beforeEnter: filterPath
    }
];

const router = createRouter({
    history: createWebHistory(),
    routes, // short for `routes: routes`
});

export default router