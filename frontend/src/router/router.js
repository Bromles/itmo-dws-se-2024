
import { createRouter, createWebHistory } from "vue-router";


const routes = [


]

const router = createRouter({
    routes,
    history: createWebHistory(),
})

router.beforeEach((to, from, next) => {
    const token = localStorage.getItem('jwt')
    if (token === "null" && to.meta.requiresAuth) {
        next('/login')
    } else {
        next()
    }
})


export default router;