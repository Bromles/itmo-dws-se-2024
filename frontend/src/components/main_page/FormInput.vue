<template xmlns:height="http://www.w3.org/1999/xhtml">
  <div class="mb-4 flex flex-col" style="width: 90%;">
    <label :for="id" class="block text-lg font-medium text-gray-700 mb-1">
      {{ label }}
    </label>
    <input
        :id="id"
        :type="type"
        :placeholder="placeholder"
        v-bind="inputAttrs"
        class="block text-lg border-gray-300  text-center rounded-md shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
        :style="{ backgroundColor: backgroundColor, height: '40px' }"
    />
  </div>
</template>

<script>
export default {
  props: {
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
    backgroundColor: {
      type: String,
      default: '#d9d9d9'
    },
    inputAttrs: {
      type: Object,
      default: () => ({})
    }
  }
};
</script>

<style scoped>

</style>