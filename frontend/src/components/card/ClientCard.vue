<template>
  <div class="p-4 max-w-sm mx-auto rounded-xl shadow-md flex items-center space-x-4" style="background-color: #267873; min-width: 300px;">
    <!-- Первый элемент - фото -->
    <div class="flex-shrink-0 w-1/3">
      <img
          :src="image"
          alt="Фото клиента"
          class="w-full h-auto rounded-full"
      />
    </div>

    <!-- Второй элемент - имя -->
    <div class="flex-grow w-1/2325">
      <h2 class="text-lg font-bold">{{ client.name }}</h2>
    </div>

    <!-- Третий элемент - стрелка вправо -->
    <div class="flex-grow w-1/39999">
      <a href="#" class="text-white text-xl">
        &#10148;<!-- Символ стрелки вправо -->
      </a>
    </div>
  </div>
</template>

<script>
import myImage from "@assets/logo.jpg";

export default {
  props: {
    client: Object,
    image: {
      type: String,
      default: myImage, // Устанавливаем изображение по умолчанию
    },
  },
};
</script>

<style scoped>
/* Дополнительные стили, если необходимо */
.text-white {
  color: white; /* Устанавливаем цвет текста на белый */
}
</style>
