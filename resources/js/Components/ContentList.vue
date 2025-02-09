<template>
    <section class="ContentList" v-if="content">
        <h1 align="center">Оглавление</h1>
        <ul>
            <li v-for="(val, index) in content" :key="index"> <deletebutton :id="val" /> <buttoncontent :value="val"/> </li>
        </ul>
    </section>
    <h2 align="center" v-else> загрузка... </h2>
</template>

<script>
import axios from 'axios';
import ButtonContent from './ButtonContent.vue';
import deleteButton from './admin/deleteButton.vue';

export default {
    name: "ContentList",
    components: {
        'buttoncontent' : ButtonContent,
        'deletebutton' : deleteButton
    },
    data() {
        return {
            content: null
        }
    },
    methods: {
        getContent() {
            axios.get('/api/getContent').then(response => {
                this.content = response.data;
            });
        }
    },
    created() {
        this.getContent();
    },
}
</script>

<style scoped>
ul {
   list-style: none ; 
}
</style>