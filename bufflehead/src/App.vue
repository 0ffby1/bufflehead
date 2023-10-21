<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
import NavBar from './components/NavBar.vue'
import Post from './components/Post.vue';
</script>

<template>
  <NavBar />
  <RouterView />
</template>