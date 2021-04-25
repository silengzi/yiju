import Vue from 'vue'
import App from '@/App.vue'
import store from '@/store'
import router from '@/router'

import VueAwesomeSwiper from 'vue-awesome-swiper'
import 'swiper/swiper-bundle.css'

Vue.config.productionTip = false
Vue.use(VueAwesomeSwiper)

new Vue({
  el: '#app',
  render: h => h(App),
  store,
  router
})
