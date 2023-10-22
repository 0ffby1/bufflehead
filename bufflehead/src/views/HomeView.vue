<script setup lang="ts">
import Thread from '../components/Thread.vue'
</script>

<template>
  <main class="bg-body-tertiary justify-content-center d-flex">
    <div class="col-xl-6 col-lg-8 col-11 justify-content-center">
      <Thread 
        title="Do you know of any cool/interesting uses of transformers?"
        body="I've been looking at typia, and I'm really impressed by it.\n\nWhat other nice libraries have been created with transformers?"
        img="https://searx.be/image_proxy?url=https%3A%2F%2Fi.pinimg.com%2F236x%2F66%2Fd5%2F23%2F66d5238900aab3d7b86dc5e53a77c817.jpg&h=bdccdf549eff68b91adfe685c169204f474ece596feb66d07e89a85f0a562e1e"
        created-time="2023-10-20 12:25:23"
        :post-id="123"
        poster="Anymonous"
        :number-of-comments="24"
      />
      <Thread 
        body="What are transforms? Is that like zod or valibot or arktype?"
        poster="France_linux_css"
        created-time="2023-10-20 13:32:45"
        :post-id="124"
      />
      <Thread 
        body=">>124 It’s a compiler plugin that usually adds something to the runtime, like type validation"
        poster="random2819"
        created-time="2023-10-20 13:47:15"
        :post-id="125"
      />
    </div>
  </main>
</template>
