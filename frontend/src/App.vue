<script lang="ts" setup>
import NavBar from "@/components/NavBar.vue";
import AuthProvider from "@/components/AuthProvider.ts";
</script>

<template>
  <AuthProvider>
    <NavBar/>
    <RouterView/>
  </AuthProvider>
</template>

<style scoped>
</style>
