<template>
    <section class="oneContent" v-if="content">
        <h2>{{ content.title }}</h2>
        <p v-html="content.content">  </p>
    </section>
    <h2 v-else align="center"> загрузка... </h2>
</template>

<script>
import axios from 'axios';

export default {
    name: "FullContent",
    data() {
        return {
            contentId: this.$route.params.id,
            content: null
        }
    },
    methods: {
        getContent() {
            axios.get(`/api/getContent/${this.contentId}`).then(response => {
                this.content = response.data;
            });
        }
    },
    mounted() {
        this.contentId = this.$route.params.id;
        this.getContent();
    },
}
</script>

<style scoped>
.oneContent {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}
.oneContent p {
    font-size: 18px;
    padding: 10px;
}
</style>