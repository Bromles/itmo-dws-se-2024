<template>
  <div class="mb-4 flex flex-col w-[90%]">
    <label :for="id" class="block text-lg font-medium text-gray-700 mb-1">
      {{ label }}
    </label>
    <select
        :id="id"
        class="select select-bordered bg-form_grey border-2 border-main_green"
        v-bind="selectAttrs">
      <option v-for="(option, index) in options" :key="index" :value="option.value">
        {{ option.text }}
      </option>
    </select>
  </div>
</template>

<script lang="js" setup>
defineProps({
  label: {
    type: String,
    required: true
  },
  id: {
    type: String,
    default: () => `input-${Math.random().toString(36).substr(2, 9)}`
  },
  type: {
    type: String,
    default: 'text'
  },
  placeholder: {
    type: String,
    default: 'text'
  },
  inputAttrs: {
    type: Object,
    default: () => ({})
  },
  options: {
    type: Array,
    required: true,
    default: () => []
  },
  selectAttrs: {
    type: Object,
    default: () => ({})
  }
})
</script>

<style scoped>

</style>