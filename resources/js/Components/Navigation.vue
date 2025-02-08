<template>
    <nav>
        
        <router-link to="/" :class="{ active: currentRoute === '/' }">Главная страница</router-link>
        <router-link to="/about" :class="{ active: currentRoute === '/about' }">О нас</router-link>
    </nav>
</template>

<script>
export default {
    name: "Navigation",
    data() {
        return {
            
        }
    },
    methods: {
        
    },
    computed: {
        currentRoute() {
            return this.$route.path;
        }
    },
}
</script>

<style scoped>
nav {
    width: 100%;
    height: 50px;
    display: flex;
    justify-content: space-around;
    align-items: center;
    background-color: rgb(43, 43, 43);
}
nav a {
    color: white;
    text-decoration: none;
    text-transform: uppercase;
    font-weight: bolder;
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}
nav a:hover {
    background-color: white;
    color: rgb(43, 43, 43);
    transition: all .2s linear;
}
.active {
    background-color: rgb(252, 252, 252);
    color: rgb(43, 43, 43);
}
</style>