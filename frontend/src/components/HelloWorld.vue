<script lang="ts" setup>
import {ref} from 'vue'
import {useAuthStore} from '@/stores/authStore.ts'

defineProps<{ msg: string }>()

const count = ref(0)
const msg = ref("")

const get = async () => {
  const res = await fetch('http://localhost:8080/api/v1/sample')
  msg.value = await res.text()
}

const store = useAuthStore()
</script>

<template>
  <h1 class="text-3xl font-bold underline">{{ msg }}</h1>

  <div class="card">
    <button
        class="mr-15"
        type="button"
        title="Test persisted state"
        @click="store.testAction"
    >
      Test ({{ store.test }})
    </button>
    <button type="button" @click="count++">count is {{ count }}</button>
    <button type="button" @click="get">msg is {{ msg }}</button>
    <p>
      Edit
      <code>components/HelloWorld.vue</code> to test HMR
    </p>
  </div>

  <p>
    Check out
    <a href="https://vuejs.org/guide/quick-start.html#local" target="_blank"
    >create-vue</a
    >, the official Vue + Vite starter
  </p>
  <p>
    Learn more about IDE Support for Vue in the
    <a
        href="https://vuejs.org/guide/scaling-up/tooling.html#ide-support"
        target="_blank"
    >Vue Docs Scaling up Guide</a
    >.
  </p>
  <p class="read-the-docs">Click on the Vite and Vue logos to learn more</p>
</template>

<style scoped>
.read-the-docs {
  color: #888;
}
</style>
