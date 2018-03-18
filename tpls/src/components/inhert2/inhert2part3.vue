<template>
<div class="part1">
  <div class="main_inner"  :style="{backgroundImage:'url('+require('../../assets/img/kb2/bd2.jpg')+')'}" >
    <div class="img_video">
      <a class="a1" href="#">
        <img src="../../assets/img/kb2/b1.jpg" alt="">
      </a>
      <div class="video">
        <img src="../../assets/img/kb2/b4.jpg" alt="">
        <div class="mask_video" :style="{backgroundImage:'url('+require('../../assets/img/kb2/mask_video.png')+')'}" ></div>
      </div>
      <a class="a2" href="#">
        <img src="../../assets/img/kb2/b3.jpg" alt="">
      </a>
      <a class="a3" href="#">
        <img src="../../assets/img/kb2/b2.jpg" alt="">
      </a>
      <ul class="musicList" :style="{backgroundImage:'url('+require('../../assets/img/kb2/bg_musicList.png')+')'}">
        <li>
          百草谷
          <div></div>
        </li>
        <li>
          副本音乐
          <div></div>
        </li>
        <li>
          天玄教
          <div></div>
        </li>
        <li>
          敬请期待
          <div></div>
        </li>
        <li>
          轻轻期待
          <div></div>
        </li>
      </ul>
    </div>
    <div class="wheelMap"  :style="{backgroundImage:'url('+require('../../assets/img/kb2/map2.png')+')'}"   >
      <ul class="role_list">
        <li class="role">
          <img src="../../assets/img/kb2/p21.png" alt="">
        </li>
        <li class="role">
          <img src="../../assets/img/kb2/p31.png" alt="">
        </li>
        <li class="role rc">
        </li>
        <li class="role">
          <img src="../../assets/img/kb2/p11.png" alt="">
        </li>
        <li class="role">
          <img src="../../assets/img/kb2/p41.png" alt="">
        </li>
      </ul>
      <div class="wheelWrap">
        <div class="ver ver_left" v-on:click="changeView('-48deg',0)"></div>
        <div class="ver ver_right" v-on:click="changeView('48deg',1)"></div>
        <div class="ver ver_top" v-on:click="changeView('0deg',2)"></div>
        <div class="ver_bottom"></div>
        <div class="ver_center"></div>
      </div>
    </div>
  </div>
</div>
</template>
<script>
export default{
  data:function(){
    return {}
  },
  created:function(){
    this.loadData();
  },
  methods:{
    loadData:function(index){
    
    },
    changeView:function(deg,msg){
      var wheel=document.querySelector("div.wheelMap div.wheelWrap div.ver_bottom");
      console.log(wheel);
      wheel.style.transform='rotate('+deg+')';
      setTimeout(()=>{
        this.$emit('sendToInhert2',msg);
      },2000);
    }
  }
}
</script>
<style scoped>
.part1{
  width:100%;
  background:url(../../assets/img/kb2/bg3.jpg) no-repeat center top; 
}
div.main_inner{
  width:1100px;height:878px;
  margin:0 auto;
  position:relative;
  background:no-repeat 0 0;
}
div.img_video{
  width:483px;height:455px;
  float:right;
  margin-top:40px;
}
div.img_video a.a1{
  display:inline-block;
  float:left;
}
div.img_video div.video{
  width:256px;height:134px;
  box-sizing: border-box;
  position: relative;
  float:right;
}
div.img_video div.video div.mask_video{
  width:256px;height:134px;
  position: absolute;top:0;left:0;
  background:no-repeat center center;
  cursor: pointer;
}
div.img_video a.a2{
  display:inline-block;
  float:right;
  margin-top:6px;
}
div.img_video a.a3{
  display:inline-block;
  float:left;
  margin-top:6px;
}
div.img_video ul.musicList{
  width:257px;height:168px;
  float:right;
  margin-top:6px;
  margin-bottom:0;
  font-size:14px;color:#D4882F;
  background:no-repeat center center;
  background-size:100% 100%;
}
div.img_video ul.musicList li{
  position:relative;
  width:100%;height: 28px;
  margin-top:5px;
  line-height:28px;
  padding-left:25px;
  cursor:pointer;
}
div.img_video ul.musicList li div{
  position:absolute;right:40px;top:4px;
  width:24px;height:24px;
  overflow:hidden;
  background:url(../../assets/img/kb2/index_z.png) no-repeat 0px -46px;
}
div.wheelMap{
  position: absolute;
  width:100%;
  bottom:0;left:0;
  z-index:2;
  background:no-repeat center center;
}
div.wheelMap ul.role_list{
  width:1006px;
  position:absolute;
  top:8px;left:50%;
  margin-left:-503px;
  display: flex;justify-content: center;
}
div.wheelMap ul.role_list li{
  float:left;margin-right:5px;
}
div.wheelMap ul.role_list li.role{
  width:99px;
  height:121px;
}
div.wheelMap ul.role_list li.rc{
  margin-right:140px;margin-left:140px;
  }
div.wheelMap div.wheelWrap{
  width:852px;height:332px;
  overflow:hidden;
  position:relative;
  margin-left:124px;
}
div.wheelMap div.wheelWrap div.ver{
  position:absolute;
  width:205px;height: 100px;
  cursor:pointer;
}
div.wheelMap div.wheelWrap div.ver_top{
  top:50px;left:50%;margin-left:-95px;
}
div.wheelMap div.wheelWrap div.ver_left{
  top:189px;left:24px;
}
div.wheelMap div.wheelWrap div.ver_right{
  top:184px;right:12px;
}
div.wheelMap div.wheelWrap div.ver_bottom{
  width:591px;height:591px;
  background:url(../../assets/img/kb2/wheel.png) no-repeat 0px 0px;
  position:absolute;
  top:150px;left:120px;
  transition:transform 2s linear;
}
div.wheelMap div.wheelWrap div.ver_center{
  width:188px;height:66px;
  background:url(../../assets/img/kb2/wheel_tips.png) no-repeat center center;
  position: absolute;bottom:30px;left:50%;margin-left:-100px;
}
</style>
