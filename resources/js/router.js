import { createRouter, createWebHistory } from "vue-router";
import Home from './Components/Home.vue';
import About from "./Components/About.vue";
import ContentList from "./Components/ContentList.vue";

const routes = [
    {path: '/', component: Home},
    {path: '/about', component: About},
    {path: '/content', component: ContentList},
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;