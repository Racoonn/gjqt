<template>
  <div class="index">
    <!-- logo -->
      <a class="logoImg-a" href="#"  @click.prevent="$router.push('/index')"><img class="logoImg-a-img" src="../assets/img/logo/logo.png" alt="logo"></a>

    <!-- 英雄展示图 -->
    <ul class="heros-box clear">
      <li class="heros-box-list" 
      :class='{hover:isHover==index,hero1:index==0,hero2:index==1,hero3:index==2,hero4:index==3,hero5:index==4,hero6:index==5,}'
       :style="{backgroundImage: 'url(' + require('../assets/'+tmp.img) + ')'}"
       :key="index"
       @mouseenter="moveOn(index)" 
       v-for="(tmp,index) in data">

       <div class="bg" :style="{backgroundImage: 'url(' + require('../assets/'+tmp.imgBg) + ')'}"></div>
        <div class="card">
          <ul class="M-skill">
            <li class="item">
              上手难度 :
              <span class="difficult">
                <em class="inner" :style="{width:tmp.nandu}"></em>
              </span>
            </li>
            <li class="item">
              职业特点 :
              <span class="feature">
                <img class="ico" :src="require('../assets/'+tmp.t1img)" width="35" height="35">{{tmp.tedian1}}
              </span>
              <span class="feature">
                <img class="ico" :src="require('../assets/'+tmp.t2img)" width="35" height="35">{{tmp.tedian2}}
              </span>
            </li>
          </ul>
          <div class="name"></div>
          <a class="btn_detail" href="#" @click.prevent="jump(index)">查看详情</a>
        </div>
      </li>
      
    </ul>
  </div>
</template>

<script>
  export default{
    created:function () {
      this.$http.get("http://127.0.0.1/gjqt/gjqt_server_php/heros/heros.php").then(function(response){
        this.data = response.data;
        console.log(response.data);
      })
    },
    data:function(){
      return {
        data:[],
        isHover:0
      }
    },
    methods:{
      jump:function (index) {
        this.$router.push('/hdetails/'+(index+1));
      },
      moveOn:function(index){
        this.isHover=index
      }
    },
  }
</script>

<style scoped>
/* 框架背景 */
  .index{
    position: relative;
    height: 986px;
    max-width: 1900px;
    min-width: 1120px;
    background:#111;
    /* box-sizing: border-box; */
  }
  /* 左上角logo */
  .logoImg-a{
    width: 196px;
    height: 88px;
    margin: 20px 0 0;
    position: absolute;
    left: 50px;
    z-index: 1;
  }
  .logoImg-a-img{
    height: 100%;
  }
  /* 主体人物容器 */
  .heros-box{
    max-width: 1900px;
    margin: 0 auto;
    height: 100%;
    border-top: 2px solid #e1b473;

  }
  /* .clear:after{
    display: block;
    clear: both;
    visibility: hidden;
    height: 0;
    content: " ";
    font-size: 0;
  } */
  /* 放大后彩色图片 */
  /* .heros-box .heros-box-list.hero1{
    background-image: url(../assets/img/person/person/1_h.jpg);
  }
  .heros-box .heros-box-list.hero2{
    background-image: url(../assets/img/person/person/2_h.jpg);
  }
  .heros-box .heros-box-list.hero3{
    background-image: url(../assets/img/person/person/3_h.jpg);
  }
  .heros-box .heros-box-list.hero4{
    background-image: url(../assets/img/person/person/4_h.jpg);
  }
  .heros-box .heros-box-list.hero5{
    background-image: url(../assets/img/person/person/5_h.jpg);
  }
  .heros-box .heros-box-list.hero6{
    background-image: url(../assets/img/person/person/6_h.jpg);
  } */
  /* 人物背景灰度处理图片 */
  /* .heros-box .heros-box-list.hero1 .bg{
    background-image: url(../assets/img/person/bg/1.jpg);
  }
  .heros-box .heros-box-list.hero2 .bg{
    background-image: url(../assets/img/person/bg/2.jpg);
  }
  .heros-box .heros-box-list.hero3 .bg{
    background-image: url(../assets/img/person/bg/3.jpg);
  }
  .heros-box .heros-box-list.hero4 .bg{
    background-image: url(../assets/img/person/bg/4.jpg);
  }
  .heros-box .heros-box-list.hero5 .bg{
    background-image: url(../assets/img/person/bg/5.jpg);
  }
  .heros-box .heros-box-list.hero6 .bg{
    background-image: url(../assets/img/person/bg/6.jpg);
  } */
  /* 放大后样式 */
/* 单个人物框样式 */
  .heros-box .heros-box-list{
    position: relative;
    float: left;
    width: 15.5%;
    height: 100%;
    background-position: center top;
    background-repeat: no-repeat;
    overflow: hidden;
    transition: width .4s ease-in-out;
  }
  .heros-box .heros-box-list.hover{
    width:22.5%;
  }
  /* .heros-box .heros-box-list:hover{
    width:22.5%;
  } */
  .heros-box .heros-box-list .bg{
    position: absolute;
    top:0;
    height: 100%;
    width:100%;
    background-repeat: no-repeat;
    background-position: center top;
    opacity: 1;
    transition: opacity .6s ease-in-out, background-size .6s;
  }
  .heros-box .heros-box-list.hover .bg{
    opacity: 0;
    background-size:100%;
  }
  .heros-box .heros-box-list:hover .bg{
    opacity: 0;
    background-size:100%;
  }
  .heros-box .heros-box-list .card{
    position: absolute;
    top:50%;
    left: 0;
    width:100%;
    margin-top: 80px;
    text-align: center;
  }
    /* 杀伤力 */
  .M-skill{
    height: 95px;
    padding-top: 15px;
    padding-left: 15px;
    background:url('../assets/img/person/ico/bg_skill.png')no-repeat;
    font-size: 14px;
    color: #faf8f5;
    text-align: left;
  }
  .heros-box .heros-box-list .card .M-skill{
    position: relative;
    left: -100%;
    transition: left .5s ease-in-out;
  }
  .heros-box .heros-box-list:hover .card .M-skill{
    left: 0;
  }
  .heros-box .heros-box-list.hover .card .M-skill{
    left: 0;
  }

  .M-skill .item{
    margin-bottom: 10px;
  }
  .M-skill .difficult{
    display: inline-block;
    width: 148px;
    height: 14px;
    border: 1px solid #c89d64;
    vertical-align: middle;
  }
  .M-skill .difficult .inner{
    display: block;
    height: 100%;
    background: #eee0cb;
  }
  .M-skill .feature{
    margin-right: 10px;
  }
  .M-skill .feature .ico{
    margin-right: 3px;
    vertical-align: middle;
    user-select: none;
  }
  /* 名称 */
  .heros-box .heros-box-list .name{
    width:98px;
    height: 145px;
    margin: 0 auto;
    margin-top: 30px;
  }
  .heros-box .heros-box-list.hero1 .name{
    width: 75px;
    background-image:url('../assets/img/person/ico/icon.png');
    background-position: -107px -322px;
  }
  .heros-box .heros-box-list.hero2 .name{
    width: 98px;
    background-image:url('../assets/img/person/ico/icon.png');
    background-position: -0px -157px;
  }
  .heros-box .heros-box-list.hero3 .name{
    width: 87px;
    background-image:url('../assets/img/person/ico/icon.png');
    background-position: -281px 0px;
  }
  .heros-box .heros-box-list.hero4 .name{
    width: 94px;
    background-image:url('../assets/img/person/ico/icon.png');
    background-position: -167px 0px;
  }
  .heros-box .heros-box-list.hero5 .name{
    width: 88px;
    background-image:url('../assets/img/person/ico/icon.png');
    background-position: -388px 0px;
  }
  .heros-box .heros-box-list.hero6 .name{
    width: 87px;
    background-image:url('../assets/img/person/ico/icon.png');
    background-position: 0px -322px;
  }
  .heros-box .heros-box-list .btn_detail:hover{
    background:#f3c685;
  }
  .heros-box .heros-box-list.hover .btn_detail{
    display: inline-block;
  }
  .heros-box .heros-box-list .btn_detail{
    display: none;
    width: 76px;
    height: 31px;
    line-height: 31px;
    margin-top: 20px;
    color: #111;
    font-size: 14px;
    text-align: center;
    background: url('../assets/img/person/ico/btn_detail.png')no-repeat;
    cursor: pointer;
  }
    .bounceInUp,.heros-box .heros-box-list.hover .btn_detail{
            display:inline-block;

    animation-name: bounceInUp;
    animation-duration: 1s;
    animation-fill-mode: both;
    }
    .bounceInUp,.heros-box .heros-box-list:hover .btn_detail{
      display:inline-block;
    animation-name: bounceInUp;
    animation-duration: 1s;
    animation-fill-mode: both;
    }
  @keyframes bounceInUp {
  0%,
  100%,
  60%,
  75%,
  90% {
    transition-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1); }
  0% {
    opacity: 0;

    transform: translate3d(0, 3000px, 0); }
  60% {
    opacity: 1;

    transform: translate3d(0, -20px, 0); }
  75% {

    transform: translate3d(0, 10px, 0); }
  90% {

    transform: translate3d(0, -5px, 0); }
  100% {

    transform: translate3d(0, 0, 0); } }
</style>
