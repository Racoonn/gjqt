<template>
  <ul class="content">
    <li :class="datas[0].class">
      <div class="role-inner">
        <ul class="gender">
          <li :class="datas[0].role1" v-if="!isShow" >
            <img :src="require('../assets/'+datas[0].img)" alt="">
          </li>
          <li :class="datas[0].role2" v-if="isShow">
            <img :src="require('../assets/'+datas[0].fimg)" alt="">
          </li>
        </ul>
        <ul class="hero-jineng">
          <li class="jineng1 jineng">
            <i></i>
            <span>{{datas[0].jn1}}</span>
            <div class="jineng-content" v-html="datas[0].Jn_1">
            </div>
          </li>
          <li class="jineng2 jineng">
            <i></i>
            <span>{{datas[0].jn2}}</span>
            <div class="jineng-content" v-html="datas[0].Jn_2">
            </div>
          </li>
          <li class="jineng3 jineng">
            <i></i>
            <span>{{datas[0].jn3}}</span>
            <div class="jineng-content" v-html="datas[0].Jn_3">
            </div>
          </li>
          <li class="jineng4 jineng">
            <i></i>
            <span>{{datas[0].jn4}}</span>
            <div class="jineng-content" v-html="datas[0].Jn_4">
            </div>
          </li>
        </ul>
        <div class="video">
          <div class="bg"></div>
          <img src="../assets/img/person/Hperson/bg/a1.png" alt="">
          <p class="name">职业宣传</p>
          <em class="ico_video"></em>
        </div>
        <div class="star">
          <span class="nandu-star">上手难度:</span>
          <span class="stars">★★★</span>
        </div>

        <div :class="datas[0].herosName" class="info"></div>
        <div class="change_gender" @click="changeGender()"></div>
      </div>
    </li>
  </ul>
</template>

<script>
  export default{
    props:["datas"],
    data:function(){
      return {
        isShow:false,
      }
    },
    methods:{
      changeGender(){
        this.isShow = !this.isShow;
      }
    }
  }
</script>

<style scoped>
/* 总体布局 */
  .content{
    position:relative;
    width: 100%;
  }
  /* 人物的布局 */
  .role_slider1,.role_slider2,.role_slider3,.role_slider4,.role_slider5,.role_slider6{
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 986px;
    background: url("../assets/img/person/Hperson/bg/role-bg1.jpg") 50% 0 no-repeat;
  }

  .content .role-inner{
    width: 1260px;
    height: 100%;
    margin: 0 auto;
    position: relative;
  }
    .content .role-inner .gender li{
      position: absolute;
      animation: fadein 2s ease-out;
      z-index: 1;
    }
    .content .role-inner .gender .role1-1{
      right: -266px;
      top: 20px;
    }
    .content .role-inner .gender .role1-2{
      right: -67px;
      top: -4px;
    }
    .content .role-inner .gender .role2-1{
      right: 36px;
      top: 167px;
    }
    .content .role-inner .gender .role2-2{
      right: -351px;
      top: 104px;
    }
    .content .role-inner .gender .role3-1{
      right: -28px;
      top: 94px;
    }
    .content .role-inner .gender .role3-2{
      right: -94px;
      top: 71px;
    }
    .content .role-inner .gender .role4-1{
      right: -37px;
      top: 56px;
    }
    .content .role-inner .gender .role4-2{
      right: 44px;
      top: -6px;
    }
    .content .role-inner .gender .role5-1{
      right: 58px;
      top: 37px;
    }
    .content .role-inner .gender .role5-2{
      right: -120px;
      top: -95px;
    }
    .content .role-inner .gender .role6-1{
      right: -12px;
      top: 0px;
    }
    .content .role-inner .gender .role6-2{
      right: -22px;
      top: -105px;
    }
    /* 图片人物大小 */
    .content .role-inner .gender .role1-1 img{
      width: 1289px;
      height: 903px;
    }
    .content .role-inner .gender .role1-2 img{
      width: 782px;
      height: 870px;
    }
    .content .role-inner .gender .role2-1 img{
      width: 497px;
      height: 783px;
    }
    .content .role-inner .gender .role2-2 img{
      width: 1109px;
      height: 766px;
    }
    .content .role-inner .gender .role3-1 img{
      width: 558px;
      height: 829px;
    }
    .content .role-inner .gender .role3-2 img{
      width: 731px;
      height: 796px;
    }
    .content .role-inner .gender .role4-1 img{
      width: 830px;
      height: 1029px;
    }
    .content .role-inner .gender .role4-2 img{
      width: 614px;
      height: 891px;
    }
    .content .role-inner .gender .role5-1 img{
      width: 894px;
      height: 851px;
    }
    .content .role-inner .gender .role5-2 img{
      width: 1180px;
      height: 1376px;
    }
    .content .role-inner .gender .role6-1 img{
      width: 754px;
      height: 949px;
    }
    .content .role-inner .gender .role6-2 img{
      width: 739px;
      height: 1053px;
    }
  /* 技能样式 */
  .content .role-inner .hero-jineng{
    width: 234px;
    position: absolute;
    top: 160px;
    left: 484px;
    z-index: 20;
  }
  .content .role-inner .hero-jineng .jineng{
      z-index: 1;
  }
  .content .role-inner .hero-jineng .jineng:hover{
      z-index: 20;
    }
  .content .role-inner .hero-jineng .jineng span{
    border-radius:17px;
    padding: 3px 7px;
    background-color: #e1b473;
    font-size: 14px;
    color: #000000;
    position: absolute;
    top: 16px;
    left: 72px;
    animation: fadein 1s ease-in 1.4s ;
  }
  .content .role-inner .hero-jineng .jineng .jineng-content{
    position: absolute;
    width: 482px;
    height: 164px;
    box-sizing: border-box;
    padding: 34px;
    border: 1px solid #c29f5a;
    background: #fffdf3 url(../assets/img/person/Hperson/bg/dialog-bg1.png) no-repeat;
    top: 28px;
    left: 34px;
    display: none;
    z-index: 20;
    animation: fadein .4s ease-in forwards;
    font-size: 14px;
    color: #989275;
  }
  .content .role-inner .hero-jineng .jineng:hover .jineng-content{
    display:block;
    z-index: 10;
  }
  /* 技能图标定位 */
  .content .role-inner .hero-jineng .jineng i{
    display: block;
    width: 68px;
    height: 62px;
    background-image: url("../assets/img/person/Hperson/jineng/gifts.png");
  }
  .role_slider1 .role-inner .hero-jineng .jineng1{
    margin:0 0 77px 81px;
    transform-origin: 293px 227px;
    animation:rotatein1 .8s ease-out .7s both;
    position: relative;
  }
  .role_slider1 .role-inner .hero-jineng .jineng1 i{
    background-position: -88px -249px;
  }
  .role_slider1 .role-inner .hero-jineng .jineng2{
    margin:0 0 112px 6px;
    transform-origin: 364px 84px;
    animation:rotatein1 .8s ease-out .6s both;
    position: relative;
  }
  .role_slider1 .role-inner .hero-jineng .jineng2 i{
    background-position: -264px 0px;
  }
  .role_slider1 .role-inner .hero-jineng .jineng3{
    margin-bottom:81px;
    transform-origin: 360px -64px;
    animation:rotatein2 .8s ease-out .5s both;
    position: relative;
  }
  .role_slider1 .role-inner .hero-jineng .jineng3 i{
    background-position: -174px -331px;
  }
  .role_slider1 .role-inner .hero-jineng .jineng4{
    margin-left:65px;
    transform-origin: 278px -190px;
    animation:rotatein2 .8s ease-out .4s both;
    position: relative;
  }
  .role_slider1 .role-inner .hero-jineng .jineng4 i{
    background-position: 0 -83px;
  }
  .role_slider2 .role-inner .hero-jineng .jineng1{
    margin:0 0 77px 81px;
    transform-origin: 293px 227px;
    animation:rotatein1 .8s ease-out .7s both;
    position: relative;
  }
  .role_slider2 .role-inner .hero-jineng .jineng1 i{
    background-position:-351px 0;
  }
  .role_slider2 .role-inner .hero-jineng .jineng2{
    margin:0 0 112px 6px;
    transform-origin: 364px 84px;
    animation:rotatein1 .8s ease-out .6s both;
    position: relative;
  }
  .role_slider2 .role-inner .hero-jineng .jineng2 i{
    background-position: -174px -166px;
  }
  .role_slider2 .role-inner .hero-jineng .jineng3{
    margin-bottom:81px;
    transform-origin: 360px -64px;
    animation:rotatein2 .8s ease-out .5s both;
    position: relative;
  }
  .role_slider2 .role-inner .hero-jineng .jineng3 i{
    background-position: -87px -331px;
  }
  .role_slider2 .role-inner .hero-jineng .jineng4{
    margin-left:65px;
    transform-origin: 278px -190px;
    animation:rotatein2 .8s ease-out .4s both;
    position: relative;
  }
  .role_slider2 .role-inner .hero-jineng .jineng4 i{
    background-position: -176px 0;
  }
  .role_slider3 .role-inner .hero-jineng .jineng1{
    margin:0 0 77px 81px;
    transform-origin: 293px 227px;
    animation:rotatein1 .8s ease-out .7s both;
    position: relative;
  }
  .role_slider3 .role-inner .hero-jineng .jineng1 i{
    background-position:0 -249px;
  }
  .role_slider3 .role-inner .hero-jineng .jineng2{
    margin:0 0 112px 6px;
    transform-origin: 364px 84px;
    animation:rotatein1 .8s ease-out .6s both;
    position: relative;
  }
  .role_slider3 .role-inner .hero-jineng .jineng2 i{
    background-position: 0 -166px;
  }
  .role_slider3 .role-inner .hero-jineng .jineng3{
    margin-bottom:81px;
    transform-origin: 360px -64px;
    animation:rotatein2 .8s ease-out .5s both;
    position: relative;
  }
  .role_slider3 .role-inner .hero-jineng .jineng3 i{
    background-position: 0 -331px;
  }
  .role_slider3 .role-inner .hero-jineng .jineng4{
    margin-left:65px;
    transform-origin: 278px -190px;
    animation:rotatein2 .8s ease-out .4s both;
    position: relative;
  }
  .role_slider3 .role-inner .hero-jineng .jineng4 i{
    background-position: -88px -83px;
  }
  .role_slider4 .role-inner .hero-jineng .jineng1{
    margin:0 0 77px 81px;
    transform-origin: 293px 227px;
    animation:rotatein1 .8s ease-out .7s both;
    position: relative;
  }
  .role_slider4 .role-inner .hero-jineng .jineng1 i{
    background-position:-351px -164px;
  }
  .role_slider4 .role-inner .hero-jineng .jineng2{
    margin:0 0 112px 6px;
    transform-origin: 364px 84px;
    animation:rotatein1 .8s ease-out .6s both;
    position: relative;
  }
  .role_slider4 .role-inner .hero-jineng .jineng2 i{
    background-position: -264px -83px;
  }
  .role_slider4 .role-inner .hero-jineng .jineng3{
    margin-bottom:81px;
    transform-origin: 360px -64px;
    animation:rotatein2 .8s ease-out .5s both;
    position: relative;
  }
  .role_slider4 .role-inner .hero-jineng .jineng3 i{
    background-position: -351px -246px;
  }
  .role_slider4 .role-inner .hero-jineng .jineng4{
    margin-left:65px;
    transform-origin: 278px -190px;
    animation:rotatein2 .8s ease-out .4s both;
    position: relative;
  }
  .role_slider4 .role-inner .hero-jineng .jineng4 i{
    background-position: -176px -83px;
  }
  .role_slider5 .role-inner .hero-jineng .jineng1{
    margin:0 0 77px 81px;
    transform-origin: 293px 227px;
    animation:rotatein1 .8s ease-out .7s both;
    position: relative;
  }
  .role_slider5 .role-inner .hero-jineng .jineng1 i{
    background-position:-351px -82px;
  }
  .role_slider5 .role-inner .hero-jineng .jineng2{
    margin:0 0 112px 6px;
    transform-origin: 364px 84px;
    animation:rotatein1 .8s ease-out .6s both;
    position: relative;
  }
  .role_slider5 .role-inner .hero-jineng .jineng2 i{
    background-position: -264px -166p;
  }
  .role_slider5 .role-inner .hero-jineng .jineng3{
    margin-bottom:81px;
    transform-origin: 360px -64px;
    animation:rotatein2 .8s ease-out .5s both;
    position: relative;
  }
  .role_slider5 .role-inner .hero-jineng .jineng3 i{
    background-position: -264px -249px;
  }
  .role_slider5 .role-inner .hero-jineng .jineng4{
    margin-left:65px;
    transform-origin: 278px -190px;
    animation:rotatein2 .8s ease-out .4s both;
    position: relative;
  }
  .role_slider5 .role-inner .hero-jineng .jineng4 i{
    background-position: 0 0;
  }
  .role_slider6 .role-inner .hero-jineng .jineng1{
    margin:0 0 77px 81px;
    transform-origin: 293px 227px;
    animation:rotatein1 .8s ease-out .7s both;
    position: relative;
  }
  .role_slider6 .role-inner .hero-jineng .jineng1 i{
    background-position:-176px -249px;
  }
  .role_slider6 .role-inner .hero-jineng .jineng2{
    margin:0 0 112px 6px;
    transform-origin: 364px 84px;
    animation:rotatein1 .8s ease-out .6s both;
    position: relative;
  }
  .role_slider6 .role-inner .hero-jineng .jineng2 i{
    background-position:-87px -166px;
  }
  .role_slider6 .role-inner .hero-jineng .jineng3{
    margin-bottom:81px;
    transform-origin: 360px -64px;
    animation:rotatein2 .8s ease-out .5s both;
    position: relative;
  }
  .role_slider6 .role-inner .hero-jineng .jineng3 i{
    background-position: -261px -331px;
  }
  .role_slider6 .role-inner .hero-jineng .jineng4{
    margin-left:65px;
    transform-origin: 278px -190px;
    animation:rotatein2 .8s ease-out .4s both;
    position: relative;
  }
  .role_slider6 .role-inner .hero-jineng .jineng4 i{
    background-position: -88px 0;
  }

  /* 视频标志 */
  .content .role-inner .video{
    position:absolute;
    top:580px;
    left: 152px;
    width: 147px;
    height: 138px;
    cursor: pointer;
    text-align: center;
  }
  .content .role-inner .video .bg{
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-image: url(../assets/img/person/ico/icon.png);
    background-position: 0 0;
  }
  .content .role-inner .video img{
    margin-top: 9px;
    filter: brightness(50%);
    transition: filter .3s ease-in-out;
  }
  .content .role-inner .video img:hover{
      filter: brightness(100%);
    }
    /* .role_slider1 .role-inner .video .bg:hover{
          transition: all 0.3s linear;
          transform: rotateZ(360deg);
    } */
  .content .role-inner .video p{
    position: absolute;
    left: 0;
    top: 50%;
    width: 100%;
    height: 26px;
    margin-top: 13px;
    color: #e1b473;
    overflow: hidden;
    text-align: center;
  }
  .content .role-inner .video em{
    position: absolute;
    left: 50%;
    top: 50%;
    width: 18px;
    height: 26px;
    background-image: url(../assets/img/person/ico/icon.png);
    background-position:-388px -165px;
    margin-top: -20px;
    margin-left: -5px;
  }
  .content .role-inner .star{
    color: #e0dcca;
    font-size: 14px;
    position: absolute;
    top: 739px;
    left: 150px;
    width: 156px;
    text-align: center;
  }
  .content .role-inner .star .stars{
    font-size: 18px;
    color: #e2b370;
  }
  /* 门派列表 */
  .content .role-inner .info {
  position: absolute;
  width: 420px;
  height: 284px;
  top: 160px;
  left: 14px;
  animation: slidein .4s linear forwards;
  -webkit-animation: slidein .4s linear forwards;
   background-image: url(../assets/img/person/Hperson/heroname/infos.png);
  }
  .content .role-inner .info1{
   background-position:-854px -296px;
   width:381px;
  }
  .content .role-inner .info2{
   background-position:0 -296px;
   width:381px;
  }
  .content .role-inner .info3{
   background-position:-440px -304px;
   width:414px;
   height: 276px;
  }
  .content .role-inner .info4{
   background-position:0 0;
  }
  .content .role-inner .info5{
   background-position:-854px 0;
   width: 381px;
  }
  .content .role-inner .info6{
   background-position:-440px 0;
   width: 412px;
  }
  /* 性别转换按钮 */
  .content .role-inner .change_gender{
    width: 139px;
    height: 33px;
    position: absolute;
    top:760px;
    left: 576px;
    cursor: pointer;
    background-image: url(../assets/img/person/ico/icon.png);
    background-position: -202px -322px;
    z-index: 1;
  }
  /* 动画表 */
@keyframes slidein {
  from {
    opacity: 0;
    filter: alpha(opacify=0);
    transform: translateX(-476px); }
  to {
    opacity: 1;
    filter: alpha(opacify=100);
    transform: translateX(0); } }
/* 人物图片转换效果 */
@keyframes fadein {
  from {
    opacity: 0;
    filter: alpha(opacity=0); }
  to {
    opacity: 1;
    filter: alpha(opacity=100); } }
/* 技能图标动态效果 */
@keyframes rotatein1 {
  0% {
    opacity: 0;
    transform: rotate(60deg); }
  100% {
    opacity: 1;
    transform: rotate(0); } }
    @keyframes rotatein2 {
  0% {
    opacity: 0;
    -webkit-transform: rotate(85deg);
    transform: rotate(85deg); }
  100% {
    opacity: 1;
    -webkit-transform: rotate(0);
    transform: rotate(0); } }

  @keyframes fadein {
  from {
    opacity: 0;
    filter: alpha(opacity=0); }
  to {
    opacity: 1;
    filter: alpha(opacity=100); } }
</style>
