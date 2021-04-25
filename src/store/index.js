import Vue from 'vue'
import Vuex from 'vuex'

// 1.安装插件
Vue.use(Vuex)

// 2.创建对象
const store = new Vuex.Store({
    state: {
      // 状态（变量）
      addr: '全国', // 存放选择的城市
      visible: false, // 这里放的就是共享的状态
      loginRegister: {
        username: '请登录',
        logined: false
      }
    },
    mutations: {
      // 方法
      setVisible(state) { // 通过修改visible的值实现 选择城市 框的显示与隐藏
        state.visible = !state.visible
      },
      changeAddr(state, newAddr) { // 修改选择的城市
        state.addr = newAddr
      },
      login(state, username) {
        state.loginRegister.username = username
      }
    },
    actions: {
    // 处理异步操作
    },
    getters: {
    // 类似于计算属性
    },
    modules: {
    // 划分模块
    }
})

// 3.导出sotre对象
export default store