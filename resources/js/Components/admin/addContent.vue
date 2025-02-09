<template>
    <h1 align="center">Добавить тему</h1>
    <section class="addContent">
        <input type="text" name="title" id="title" v-model="title" placeholder="Название темы" style="width: 80%;" required>
        <textarea name="content" id="content" v-model="content" placeholder="Содержание темы" style="width: 80%;" rows="20" required></textarea>
        <button @click.prevent="addContent()">Добавить</button>        
    </section>
</template>

<script>
import axios from 'axios';

export default {
    name: "addContent",
    data() {
        return {
            title: '',
            content: ''
        }
    },
    methods: {
        addContent() {
            if((this.title != '') && (this.content) ) {
                axios.post('/api/addContent', {
                    title: this.title,
                    content: this.content
                }).then(response => {
                    console.log(response.data.message);
                    this.$router.push('/content');
                });
            } else {
                alert('Заполните все поля!');
            }
        }
    },
    created() {
       
    },
}
</script>

<style scoped>
.addContent {
    width: 100%;
    padding: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    gap: 10px;
}
</style>