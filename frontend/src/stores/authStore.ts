import {defineStore} from "pinia";
import {ref} from "vue";
import {AuthService} from "@/services/authService.ts";

export const useAuthStore = defineStore(
    'storeAuth',
    () => {
        const authenticated = ref(false)
        const user = ref({})

        const login = async (auth: AuthService) => {
            const user = await auth.getUser()
            authenticated.value = !!user;
        }

        const logout = (auth: AuthService) => {
            void auth.logout()
            authenticated.value = false
        }

        return {
            authenticated,
            user,
            login,
            logout
        }
    },
    {
        persist: true
    }
);