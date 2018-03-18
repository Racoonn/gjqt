<template>
  <div style="width:100%;height:100%;min-width:1200px;min-height:873px">
    <header-short></header-short>
    <div class="bg-index">
      <router-link to="inhert2" class="btn-enter" ></router-link>
      <div class="btn-video"></div>
      <ul class="version-bar clear">
        <li class="version" v-bind:key="index" v-for="(tmp,index) in versionPic"
        v-on:mouseenter="stopTimer(index)" v-on:mouseleave="openTimer(index)">
          <img v-bind:class="tmp" :src='backNow==index?now:pre' alt="">
        </li>
      </ul>
    </div>
    <div class="videoPart">
      <div class="videoOne"></div>
    </div>
    <inhertBg :bg_index='backNow'></inhertBg>
  </div>
</template>
<script>
import InhertBg from '@/components/inherit/inherit-bg'
import HeaderShort from '@/components/header'

export default{
  data:function(){
    return{
      pre:require("../../assets/img/ico_index.png"),
      now:require("../../assets/img/cur_index.png"),
      versionPic:['point','point1','point2'],
      fun:null,
      backNow:1
    }
  },
  components:{
    inhertBg:InhertBg,
    headerShort:HeaderShort
  },
  mounted:function(){
    this.fun=setInterval(()=>{
      this.backNow++;
      if(this.backNow>2){this.backNow=0;}
    },1500);
  },
  methods:{
   stopTimer:function(msg){
     clearInterval(this.fun);
     this.backNow=msg;
   },
   openTimer:function(){
    this.fun=setInterval(()=>{
      this.backNow++;
      if(this.backNow>2){this.backNow=0;}
    },1500);
   },
  }
}
</script>
<style scoped>
  .clear:after{
    content:'';
    display:block;
    clear:both;
  }
  div.bg-index{
    width:1100px;height: 894px;
    position:absolute;top:0;left:50%;margin-left:-550px;
    background:url(../../assets/img/bg_index.png) no-repeat center 168px;
    z-index:2;
  }
  a.btn-enter{
    position: absolute;
    width: 267px;
    height: 62px;
    top: 517px;
    left: 417px;
    cursor: pointer;
  }
  div.btn-video{
  position: absolute;
  width: 100px;
  height: 100px;
  top: 217px;
  right: 258px;
  cursor: pointer;
  }
  ul.version-bar{
    position:absolute;
    top: 638px;
    width: 100%;
    height: 130px;
  }
  ul.version-bar li.version{
    position:relative;
    float: left;
    width: 33.3%;
    height: 100%;
    cursor: pointer;
  }
  ul.version-bar li.version img.point{
  position: absolute;
  width: 48px;
  height: 48px;
  left: 114px;
  top: 72px;
  }
  ul.version-bar li.version img.point1{
    position: absolute;
    width: 48px;
    height: 48px;
    left:155px;top: 72px;
  }
  ul.version-bar li.version img.point2{
    position: absolute;
    width: 48px;
    height: 48px;
    left:199px;top: 72px;
  }
  div.videoPart{
    height:100%;min-height:900px;
    width:100%;min-width:1100px;
    background:#636362;
    z-index:10;
    position: fixed;
    opacity:0.9;
    display:none;
  }
  div.videoPart div.videoOne{
    height: 594px;
    width: 960px;
    background:black;
    position: fixed;
    top:200px;
    left:50%;margin-left:-480px;
  }
</style>
