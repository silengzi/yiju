<!-- The ref attr used to find the swiper instance -->
<template>
  <swiper class="swiper-container" :options="swiperOption" :not-next-tick="notNextTick" ref="mySwiper">
    <!-- slides -->
    <swiper-slide class="swiper-slide"><a href=""><img src="@/assets/img/banner/banner1.jpg"></a></swiper-slide>
    <swiper-slide class="swiper-slide"><a href=""><img src="@/assets/img/banner/banner2.jpg"></a></swiper-slide>
    <swiper-slide class="swiper-slide"><a href=""><img src="@/assets/img/banner/banner3.jpg"></a></swiper-slide>
    <swiper-slide class="swiper-slide"><a href=""><img src="@/assets/img/banner/banner4.jpg"></a></swiper-slide>
    <swiper-slide class="swiper-slide"><a href=""><img src="@/assets/img/banner/banner5.jpg"></a></swiper-slide>
    <!-- Optional controls -->
    <div class="swiper-pagination"  slot="pagination"></div>
    <div class="swiper-button-prev" slot="button-prev"></div>
    <div class="swiper-button-next" slot="button-next"></div>
    <!-- <div class="swiper-scrollbar"   slot="scrollbar"></div> -->
  </swiper>
</template>

<script>
  // swiper options example:
  export default {
    name: 'carrousel',
    data() {
      return {
        // NotNextTick is a component's own property, and if notNextTick is set to true, the component will not instantiate the swiper through NextTick, which means you can get the swiper object the first time (if you need to use the get swiper object to do what Things, then this property must be true)
        // notNextTick是一个组件自有属性，如果notNextTick设置为true，组件则不会通过NextTick来实例化swiper，也就意味着你可以在第一时间获取到swiper对象，假如你需要刚加载遍使用获取swiper对象来做什么事，那么这个属性一定要是true
        notNextTick: true,
        swiperOption: {
          // swiper options 所有的配置同swiper官方api配置
          autoplay: 3000,
          autoplayDisableOnInteraction: false,
          loop: true,
          // direction: 'vertical',
          // grabCursor: true,
          setWrapperSize: true,
          autoHeight: false,
          pagination: '.swiper-pagination',
          paginationClickable: true,
          prevButton: '.swiper-button-prev',
          nextButton: '.swiper-button-next',
          // scrollbar: '.swiper-scrollbar',
          // mousewheelControl: true,
          observer:true,
          observeParents: true,
          // if you need use plugins in the swiper, you can config in here like this
          // 如果自行设计了插件，那么插件的一些配置相关参数，也应该出现在这个对象中，如下debugger
          // debugger: true,
          // swiper callbacks
          // swiper的各种回调函数也可以出现在这个对象中，和swiper官方一样
          // onTransitionStart (swiper) {
          //   console.log(swiper)
          // },
          // more Swiper configs and callbacks...
          // ...
        }
      }
    },
    // you can find current swiper instance object like this, while the notNextTick property value must be true
    // 如果你需要得到当前的swiper对象来做一些事情，你可以像下面这样定义一个方法属性来获取当前的swiper对象，同时notNextTick必须为true
    computed: {
      swiper() {
        // console.log(this.$refs.mySwiper.swiper);
        return this.$refs.mySwiper.swiper
      }
    },
    mounted() {
      // you can use current swiper instance object to do something(swiper methods)
      // 然后你就可以使用当前上下文内的swiper对象去做你想做的事了
      // console.log('this is current swiper instance object', this.swiper)
      // this.swiper.onSlideTo(3, 1000, false)
    }
  }
</script>

<style scoped>
.swiper-container {
  z-index: 0;
}
.swiper-slide {
  height: 460px;
}
img {
  width: 100%;
  height: 100%;
}
.swiper-button-prev {
  margin-left: 10%;
  color: #fff;
  transition: all 1s;
}
.swiper-button-prev:hover {
  color: rgb(175, 0, 0);
}
.swiper-button-next {
  margin-right: 10%;
  color: #fff;
  transition: all 1s;
}
.swiper-button-next:hover {
  color: rgb(175, 0, 0);
}
</style>