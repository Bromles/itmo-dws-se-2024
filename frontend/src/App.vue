<script lang="ts" setup>
import NavBar from "@/components/NavBar.vue";
import AuthProvider from "@/components/AuthProvider.ts";
</script>

<template>
  <AuthProvider>
    <Suspense>
      <template #default>
        <div>
          <NavBar/>
          <RouterView/>
        </div>
      </template>

      <template #fallback>
        Loading...
      </template>
    </Suspense>
  </AuthProvider>
</template>

<style scoped>
</style>
