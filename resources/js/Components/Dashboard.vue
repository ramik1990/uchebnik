<template>
    <h1 align="center">Личный кабинет</h1>
    <section class="dashboard">
        <h2>Привет, {{ user.name }}</h2>
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
</style>