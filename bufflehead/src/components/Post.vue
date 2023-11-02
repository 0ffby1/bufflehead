<script setup lang="ts">
//import { PostType } from '../posttype'
const props = defineProps<{
    title?: string,
    body: string,
    img?: string,
    createdTime?: Date,
    poster: string,
    postId: number
    postType?: PostType
}>()
</script>

<script lang="ts">
export const enum PostType {
    Post = 0,
    Response = 1,
    Thread = 2,
}
</script>

<template>
    <div class="mt-3 pt-1 bg-body shadow post-div rounded">
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
            <div class="col-3" v-if="img">
                <img class="w-100 mt-2 post-img align-top" :src=img>
            </div>
            <div class="col-9">
                <router-link 
                    class="link-underline-opacity-0 link-primary display-6"
                    :to="{ path: '/thread/'+postId}" 
                    v-if="postType===PostType.Thread"
                >
                    <h2>{{ title }}</h2>
                </router-link>
                <h2 v-if="postType===PostType.Post">{{ title }}</h2>
                <p>{{ body }}</p>
                <router-link 
                    class="d-inline align-bottom" 
                    :to="{ path: '/thread/'+postId}"
                    v-if="postType===PostType.Thread"
                >
                    <small>View 24 comments</small>
                </router-link>
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