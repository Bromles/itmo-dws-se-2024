<script setup lang="ts">
import {inject, onBeforeMount} from "vue";
import {useRouter} from "vue-router";
import {AuthService} from "@/services/authService.ts";

const authService = inject<AuthService>('authService')!
const router = useRouter()

onBeforeMount(() => {
  authService.userManager.signinCallback().finally(() => {
    router.push('/')
  })
})
</script>

<template>
  <p>Processing signin callback</p>
</template>

<style scoped>

</style>