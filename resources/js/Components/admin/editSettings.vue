<template>
    <h1 align="center">Общая информация</h1>
    <section class="editSettings" v-if="settings">
        <input type="text" name="title" id="title" v-model="settings.title" placeholder="Название учебника" style="width: 80%;" required>
        <textarea name="description" id="description" v-model="settings.description" placeholder="Описание учебника" style="width: 80%;" rows="5" required></textarea>
        <input type="text" name="imgUrl" id="imgUrl" v-model="settings.imgUrl" placeholder="imgUrl Логотипа" style="width: 80%;" required>
        <input type="text" name="autor" id="autor" v-model="settings.autor" placeholder="Автор учебника" style="width: 80%;" required>
        <input type="text" name="organization" id="organization" v-model="settings.organization" placeholder="Организация образования автора" style="width: 80%;" required>
        <button @click.prevent="editSettings()">Изменить</button>        
    </section>
</template>

<script>
import axios from 'axios';

export default {
    name: "editSettings",
    data() {
        return {
            settings: null
        }
    },
    methods: {
        getSettings() {
            axios.get('/api/getSettings').then(response => {
                this.settings = response.data;
            });
        },
        editSettings() {
            axios.post('/api/editSettings', {
                id: this.settings.id,
                title: this.settings.title,
                description: this.settings.description,
                imgUrl: this.settings.imgUrl,
                autor: this.settings.autor,
                organization: this.settings.organization
            }).then(response => {
                this.getSettings();
            });
        }
    },
    created() {
        this.getSettings();
    },
}
</script>

<style scoped>
.editSettings {
    width: 100%;
    padding: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    gap: 10px;
}
</style>