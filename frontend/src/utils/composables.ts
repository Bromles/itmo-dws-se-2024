import {inject} from "vue";
import {AuthService} from "@/services/authService.ts";
import {AuthServiceStateSymbol} from "@/components/AuthProvider.ts";

export const useAuth = (): AuthService => {
    return inject<AuthService>(AuthServiceStateSymbol)!
}
