<template>
    <h1 align="center">Личный кабинет</h1>
    <section class="dashboard">
        <h2>Привет, {{ user.name }}, выбери, что хочешь отредактировать:</h2>
        <div class="groupButton">
            <router-link to="/editSettings">Общая информация</router-link>
            <router-link to="/addContent">Добавить новую тему</router-link>
        </div>
        <button @click.prevent="logout">Выйти</button>
    </section>
</template>

<script>
import axios from 'axios';

export default {
    name: "Dashboard",
    data() {
        return {
            user: {}
        }
    },
    methods: {
        logout() {
            axios.post('/api/logout', {}, {
                headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
            }).then(response => {
                localStorage.removeItem('token');
                this.$router.push('/login');
            });
        }
    },
    mounted() {
        try {
            axios.get('/api/user', {
                headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
            }).then(response => {
                this.user = response.data;
            });
        } catch {
            this.$router.push('/login');
        }
    },
}
</script>

<style scoped>
.dashboard {
    width: 100%;
    padding: 10px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.groupButton {
    width: 80%;
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 5px;
    margin: 10px;
}
a {
    text-decoration: none;
    height: 20px;
    padding: 5px;
    background-color: rgb(43, 43, 43);
    color: white;
}
a:hover {
    background-color: white;
    color: rgb(43, 43, 43);
    border: rgb(43, 43, 43) 1px solid;
    transition: all linear .15s;
    font-weight: bold;
}
</style>