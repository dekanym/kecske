import { createRouter, createWebHistory } from 'vue-router';
import HomeView from '@/views/HomeView.vue';

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView,
  },
  {
    path: '/post',
    name: 'post',
    component: () => import('@/views/PostsView.vue'),
  },
  {
    path: '/postDetail/:id',
    name: 'postDetail',
    component: () => import('@/views/PostsDetailView.vue'),
  },
];

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes,
});

export default router;
