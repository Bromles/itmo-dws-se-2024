import {useAuthStore} from "@/stores/authStore.ts";
import {App} from "@vue/runtime-core";
import {Options} from "@vitejs/plugin-vue";
import {Pinia} from "pinia";

const authStorePlugin = {
    install(app: App, option: Options & { pinia: Pinia }) {
        app.config.globalProperties.$store = useAuthStore(option.pinia)
    }
};

export default authStorePlugin;
