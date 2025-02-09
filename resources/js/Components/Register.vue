<template>
    <h1 align="center">Регистрация</h1>
    <section class="registration">
        <input v-model="name" placeholder="Имя">
        <input v-model="email" placeholder="Email">
        <input v-model="password" type="password" placeholder="Пароль">
        <button @click.prevent="register">Зарегистрироваться</button>
    </section>
</template>

<script>
import axios from 'axios';

export default {
    name: "Register",
    data() {
        return {
            name: '',
            email: '',
            password: ''
        }
    },
    methods: {
        register() {
            axios.post('/api/register', {
                name: this.name,
                email: this.email,
                password: this.password
            }).then(response => {
                localStorage.setItem('token', response.data.token);
                axios.defaults.headers.common['Authorization'] = `Bearer ${response.data.token}`;
                this.$router.push('/dashboard');
            });
        }
    },
    mounted() {
        
    },
}
</script>

<style scoped>
.registration {
    width: 100%;
    padding: 10px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
</style>