<template>
  <div id="app">
    <Header></Header> <!-- 顶部导航栏 -->
    <router-view></router-view> <!-- 内容区 -->
    <MainAside></MainAside>
    <Footer></Footer>
  </div>
</template>

<script>
import Header from "@/components/tools/common/header/header.vue";
import Footer from '@/components/tools/common/footer/footer.vue'
import MainAside from '@/components/tools/common/aside/main_aside.vue'

export default {
  name: "App",
  components: {
    Header,
    Footer,
    MainAside
  }
};
</script>

<style>
@import "~@/assets/css/reset.css";
</style>
