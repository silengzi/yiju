// 配置路由相关信息
import Vue from 'vue'
import VueRouter from 'vue-router'

// 路由懒加载
const Home = () => import('@/components/content/home/home.vue')
const CheckPrice = () => import('@/components/content/check_price/check_price.vue')
const Knowledge = () => import('@/components/content/knowledge/knowledge.vue')
const NewHouse = () => import('@/components/content/new_house/new_house.vue')
const OldHouse = () => import('@/components/content/old_house/old_house.vue')
const Renovation = () => import('@/components/content/renovation/renovation.vue')
const RentHouse = () => import('@/components/content/rent_house/rent_house.vue')
const loginRegister = () => import('@/components/tools/public/loginRegister.vue')

// 1.通过Vue.use(插件)，安装插件
Vue.use(VueRouter)

// 2.创建VueRouter对象
const router = new VueRouter({
    // 配置路由和组件之间的应用关系
    routes: [
        {
            path: '/',  // 默认重定向至首页
            redirect: '/home'	// 重定向
        },
        {
            path: '/home',  // 首页
            component: Home
        },
        {
            path: '/check_price',   // 查房价
            component: CheckPrice
        },
        {
            path: '/knowledge', // 房产百科
            component: Knowledge
        },
        {
            path: '/new_house', // 新房
            component: NewHouse
        },
        {
            path: '/old_house', // 二手房
            component: OldHouse
        },
        {
            path: '/renovation',    // 装修家居
            component: Renovation
        },
        {
            path: '/rent_house',    // 租房
            component: RentHouse
        },
        {
            path:'/loginRegister',
            component: loginRegister
        }
    ],
    mode: 'history'
})

// 3.将router对象传入到Vue实例中
export default router