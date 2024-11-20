<template>
  <div class="card">
    <div class="child image-block">
      <img :src="image" alt="Image" class="card-image" />
    </div>
    <div class="child text-block">
      <h3>{{ title }}</h3>
      <p>{{ content }}</p>
      <button @click="onButtonClick">Кнопка</button>
    </div>
  </div>
</template>


<script>
import myImage from '@/assets/cardPhoto.jpg'; // Укажите правильный путь к вашему изображению

export default {
  name: 'Card',
  props: {
    title: String,
    content: String,
    image: {
      type: String,
      default: myImage, // Устанавливаем изображение по умолчанию
    },
  },
  methods: {
    onButtonClick() {
      console.log('Кнопка нажата!');
    },
  },
};
</script>

<style scoped>
.card {
  display: flex; /* Устанавливаем flex-контейнер */
  flex-direction: row; /* Устанавливаем направление flex на row */
  max-height: 200px; /* Ограничиваем максимальную высоту карточки */
  overflow: hidden; /* Скрываем переполнение содержимого */
  max-width: 100%; /* Ограничиваем максимальную ширину карточки до ширины экрана */
  margin: 0 auto; /* Центрируем карточку по горизонтали */
  border: 2px solid #267873; /* Добавляем обводку вокруг карточки */
  border-radius: 8px; /* Закругляем углы обводки */
  padding: 16px; /* Добавляем внутренние отступы для содержимого */
}

.image-block {
  flex: 0 0 15%; /* Фиксируем ширину изображения */
}

.text-block {
  flex: 1; /* Занимает оставшееся пространство */
  background-color: #267873;
  border-radius: 8px; /* Закругляем углы текстового блока */
  padding: 16px; /* Добавляем внутренние отступы для текста */
}

.child {
  margin-right: 16px; /* Добавляем отступы между элементами */
}

.card-image {
  max-height: 100%; /* Ограничиваем высоту изображения */
  width: auto; /* Поддерживаем пропорции изображения */
}

h3 {
  margin: 0; /* Убираем отступы у заголовка */
}

p {
  margin: 8px 0; /* Добавляем отступы между абзацем и кнопкой */
}
</style>



