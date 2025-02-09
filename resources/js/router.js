import { createRouter, createWebHistory } from "vue-router";
import Home from './Components/Home.vue';
import About from "./Components/About.vue";
import ContentList from "./Components/ContentList.vue";
import FullContent from "./Components/FullContent.vue";
import Login from './Components/Login.vue';
import Register from './Components/Register.vue';
import Dashboard from './Components/Dashboard.vue';
import editSettings from "./Components/admin/editSettings.vue";
import addContent from "./Components/admin/addContent.vue";

const routes = [
    {path: '/', component: Home},
    {path: '/about', component: About},
    {path: '/content', component: ContentList},
    {path: '/fullcontent/:id', component: FullContent},
    {path: '/login', component: Login},
    {path: '/register', component: Register},
    {path: '/dashboard', component: Dashboard, meta: { requiresAuth: true }},
    {path: '/editSettings', component: editSettings, meta: { requiresAuth: true }},
    {path: '/addContent', component: addContent, meta: { requiresAuth: true }},
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});


//Защита роутов
router.beforeEach((to, from, next) => {
    const isAutenticated = localStorage.getItem('token');
    if (to.meta.requiresAuth && !isAutenticated) {
        next('/login');
    } else {
        next();
    }
});

export default router;