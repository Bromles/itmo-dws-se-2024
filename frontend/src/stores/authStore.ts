import {defineStore} from "pinia";
import {ref} from "vue";
import {AuthService} from "@/services/authService.ts";

export const useAuthStore = defineStore(
    'storeAuth',
    () => {
        const authenticated = ref(false)
        const userRole = ref("")
        const user = ref({})

        const login = async (auth: AuthService) => {
            const user = await auth.getUser()
            const role = await auth.getUserRole()
            authenticated.value = !!user;
            userRole.value = role;
        }

        const logout = (auth: AuthService) => {
            void auth.logout()
            authenticated.value = false
        }

        return {
            authenticated,
            user,
            login,
            logout,
            userRole
        }
    },
    {
        persist: true
    }
);