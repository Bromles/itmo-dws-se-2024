<script lang="ts" setup>
import {onBeforeMount} from "vue";
import {useRouter} from "vue-router";
import {useAuth} from "@/utils/composables.ts";
import {useAuthStore} from "@/stores/authStore.ts";

const auth = useAuth()
const router = useRouter()
const store = useAuthStore()

onBeforeMount(() => {
  auth.userManager.signinCallback().finally(() => {
    router.push('/')
    store.login(auth)
  })
})
</script>

<template>
  <p>Processing signin callback</p>
</template>

<style scoped>

</style>