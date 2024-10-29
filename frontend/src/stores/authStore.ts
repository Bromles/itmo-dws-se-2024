import {defineStore} from "pinia";
import {ref} from "vue";

export const useAuthStore = defineStore(
    'storeAuth',
    () => {
        const authenticated = ref(false)
        const user = ref({})
        const test = ref(false)

        const testAction = () => {
            test.value = !test.value
        }

        return {
            authenticated,
            user,
            test,
            testAction
        }
    },
    {persist: true,}
);