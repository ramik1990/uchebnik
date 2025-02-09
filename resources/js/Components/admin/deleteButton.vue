<template>
    <a :href="`/api/delete/${id.id}`" title="УДАЛИТЬ ТЕМУ" @click.prevent="deleteContent()">❌</a>
</template>

<script>
import axios from 'axios';

export default {
    props: {
        id: Object
    },
    name: "deleteButton",
    data() {
        return {

        }
    },
    methods: {
        deleteContent() {
            axios.get(`/api/delete/${this.id.id}`).then(response => {
                this.$router.replace('/reload').then(() => this.$router.replace('/content'));
            });
        }
    },
    created() {
        
    },
}
</script>

<style scoped>
a {
    text-decoration: none;
    display: inline-block;
}
a:hover {
    transform: scale(1.2);
}
</style>