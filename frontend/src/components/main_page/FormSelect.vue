<script lang="ts" setup>
const {
  label,
  id = `input-${Math.random().toString(36).substring(2, 9)}`,
  placeholder = 'text',
  options = [],
  selectAttrs = {}
} = defineProps<{
  label: string,
  id?: string,
  placeholder: string,
  options: Array<{ value: string, text: string }>,
  selectAttrs?: object
}>()
</script>

<template>
  <div class="mb-4 flex flex-col" style="width: 90%">
    <label :for="id" class="block text-lg font-medium text-gray-700 mb-1">
      {{ label }}
    </label>
    <select
        :id="id"
        class="block text-lg border-gray-300 text-center rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
        style="color: #9ca3af; background-color: #d9d9d9; height: 40px"
        v-bind="selectAttrs"
    >
      <option v-for="(option, index) in options" :key="index" :value="option.value">
        {{ option.text }}
      </option>
    </select>
  </div>
</template>

<style scoped>
</style>