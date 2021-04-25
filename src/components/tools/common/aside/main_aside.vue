<template>
  <div>
    <AsideSlot>
      <AsideItem class="aside-item">
        <span class="iconfont icon-fangzi" slot="aside-icon"></span>
        <p slot="aside-font">卖房</p>
      </AsideItem>
      <AsideItem class="aside-item">
        <span class="iconfont icon-shoucang" slot="aside-icon"></span>
        <p slot="aside-font">收藏</p>
      </AsideItem>
      <AsideItem class="aside-item">
        <span class="iconfont icon-jisuan" slot="aside-icon"></span>
        <p slot="aside-font">计算器</p>
      </AsideItem>
      <AsideItem class="aside-item">
        <span class="iconfont icon-app" slot="aside-icon"></span>
        <p slot="aside-font">下载</p>
      </AsideItem>
      <AsideItem class="aside-item">
        <span class="iconfont icon-gongzhonghao" slot="aside-icon"></span>
        <p slot="aside-font">公众号</p>
      </AsideItem>
      <AsideItem class="aside-item">
        <span class="iconfont icon-jiageyuce" slot="aside-icon"></span>
        <p slot="aside-font">查房价</p>
      </AsideItem>
      <AsideItem class="aside-item">
        <span class="iconfont icon-10" slot="aside-icon"></span>
        <p slot="aside-font">客服</p>
      </AsideItem>
    </AsideSlot>
  </div>
</template>

<script>
import AsideItem from '@/components/tools/common/aside/aside_item.vue'
import AsideSlot from '@/components/tools/common/aside/aside_slot.vue'

export default {
  name: 'aside',
  components: {
    AsideItem,
    AsideSlot
  }
}
</script>

<style scoped>
.aside-item {
  margin-bottom: 5px;
}
.aside-item:last-of-type {
  margin-bottom: 0;
}
</style>