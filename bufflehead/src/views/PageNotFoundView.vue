<template>
    <div class="d-flex align-items-center justify-content-center vh-100 bg-body-tertiary">
        <div class="text-center">
            <h1 class="display-1 fw-bold">404</h1>
            <p class="fs-3">Page not found.</p>
            <p class="lead">
                The page <mark>{{ $route.params.notFound }}</mark> doesn’t exist.
                </p>
            <router-link to="/" class="btn btn-outline-success">Go Back Home</router-link>
        </div>
    </div>
</template>

<style scoped>
    h1 {
        font-size: 80px;
        font-weight: bolder;
    }
</style>