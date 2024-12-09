import {provide, reactive} from "vue";
import {AuthService} from "@/services/authService.ts";

export const AuthServiceStateSymbol = Symbol('Auth server state provider key')

export default {
    name: 'AuthProvider',
    setup() {
        const authService = reactive(new AuthService())

        provide(AuthServiceStateSymbol, authService)
    },
    render() {
        return this.$slots.default();
    }
}