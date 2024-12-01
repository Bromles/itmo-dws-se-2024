<template xmlns:height="http://www.w3.org/1999/xhtml">
  <div class="mb-4 flex flex-col w-[90%]">
    <label :for="id" class="block text-lg font-medium text-gray-700 mb-1">
      {{ label }}
    </label>
    <input :type="type" class="input input-bordered w-full max-w-xs bg-form_grey border-main_green border-2" :placeholder="placeholder" />
  </div>
</template>

<script setup lang="js">

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
    }
  })


</script>

<style scoped>

</style>