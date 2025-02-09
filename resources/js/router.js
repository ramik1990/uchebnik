import { createRouter, createWebHistory } from "vue-router";
import Home from './Components/Home.vue';
import About from "./Components/About.vue";
import ContentList from "./Components/ContentList.vue";
import FullContent from "./Components/FullContent.vue";

const routes = [
    {path: '/', component: Home},
    {path: '/about', component: About},
    {path: '/content', component: ContentList},
    {path: '/fullcontent/:id', component: FullContent},
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;