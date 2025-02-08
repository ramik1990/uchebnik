<template>
    <main-menu />
    <router-view />
</template>

<script>
import Navigation from './Navigation.vue';

export default {
    name: "App",
    components: {
        'main-menu' : Navigation
    }, 
    data() {
        return {
            
        }
    },
    methods: {
        
    },
}
</script>

<style scoped>

</style>