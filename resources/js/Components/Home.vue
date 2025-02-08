<template>
    <section class="mainPage" v-if="settings">
        <h1 align="center">{{ settings.title }}</h1>
        <h3 align="center">{{ settings.organization }}</h3>
        <img :src="settings.imgUrl" :alt="settings.title">
        <p>{{ settings.description }}</p>
        <span>Автор: {{ settings.autor }}</span>
    </section>
</template>

<script>
import axios from 'axios';

export default {
    name: "Home",
    data() {
        return {
            settings: null
        }
    },
    methods: {
        getSettings() {
            axios.get('/api/getSettings').then( response => {
                console.log(response.data);
                this.settings = response.data;
            });
        }
    },
    created() {
        this.getSettings();
    },
}
</script>

<style scoped>
.mainPage {
    width: 100%;   
    display: flex;
    flex-direction: column; 
    justify-content: center;
    align-items: center;
}
.mainPage h1 {
    text-transform: uppercase;
    font-weight: bolder;
}
.mainPage p {
    font-size: 20px;
    width: 50%;
}
.mainPage span {
    font-weight: bold;
    font-size: 18px;
}
</style>