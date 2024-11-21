<script lang="ts" setup>
const {
  label,
  id = `input-${Math.random().toString(36).substring(2, 9)}`,
  type = 'text',
  placeholder = 'text',
  inputAttrs = {}
} = defineProps<{
  label: string,
  id?: string,
  type?: string,
  placeholder?: string,
  inputAttrs?: object
}>()
</script>

<template>
  <div class="mb-4 flex flex-col" style="width: 90%;">
    <label :for="id" class="block text-lg font-medium text-gray-700 mb-1">
      {{ label }}
    </label>
    <input
        :id="id"
        :placeholder="placeholder"
        :style="{ height: '40px' }"
        :type="type"
        class="block text-lg border-gray-300  text-center rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
        v-bind="inputAttrs"
    />
  </div>
</template>

<style scoped>
</style>