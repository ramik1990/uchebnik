<template>
<router-link :to="{ path: `/fullcontent/${value.id}` }">{{ value.title }}</router-link>
</template>

<script>

export default {
    props: {
        value: Object
    },
    name: "fullcontentbutton"
}
</script>

<style scoped>
a {
    font-size: 20px;
    text-decoration: none;
    text-transform: uppercase;
    color: black;
}
a:hover {
    transition: all .1s linear;
    color: rgb(20, 156, 156);
}
</style>