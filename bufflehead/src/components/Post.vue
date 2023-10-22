<script lang="ts">
export default {
  props: {
    title: String,
    body: String,
    img: String,
    createdTime: String,
    poster: String,
    postId: Number,
  }
}
</script>

<template>
    <div class="mt-3 pt-1 bg-primary-subtle post-div">
        <div class="mb-1 px-2 row">
            <router-link 
                class="col-auto link-primary bold-link link-underline-opacity-0"
                :to="{ path: '/user/'+poster}"
            >
                {{ poster }}
            </router-link>
            <span class="me-auto col-auto d-inline">{{ createdTime }}</span>
            <a class="col-auto link-secondary">Id.#{{ postId }}</a>
            <a class="col-auto link-danger bold-link">Report</a>
        </div>
        <div class="row px-2 pb-2">
            <div class="col-3">
                <img class="w-100 mt-2 post-img align-top" :src=img v-if="img">
            </div>
            <div class="col-9">
                <h2>{{ title }}</h2>
                <p>{{ body }}</p>
            </div>
        </div>
    </div>
</template>

<style scoped>
    .bold-link {
        font-weight: bold;
    }
    .post-img {
        max-height: 250px;
        object-fit: contain;
    }
    .post-div {
        width: fit-content;
    }

</style>