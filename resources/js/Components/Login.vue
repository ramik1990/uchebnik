<template>
    <h1 align="center">Вход</h1>
    <section class="login">
        <input type="email" name="email" id="email" required placeholder="Email" v-model="email">
        <input type="password" name="password" id="password" required placeholder="Password" v-model="password">
        <button @click.prevent="login">Войти</button>        
    </section>
</template>

<script>
import axios from 'axios';

export default {
    name: "Login",
    data() {
        return {
            email: '',
            password: '',
        }
    },
    methods: {
        login() {
            try {
                axios.post('/api/login', {
                    email: this.email,
                    password: this.password
                }).then(response => {
                    localStorage.setItem('token', response.data.token);
                    axios.defaults.headers.common['Authorization'] = `Bearer ${response.data.token}`;
                    this.$router.push('/dashboard');
                });
            } catch (error) {
                console.log('Ошибка входа');
            }
        }
    },
    created() {
        
    },
}
</script>

<style scoped>
.login {
    width: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 10px;
}
</style>