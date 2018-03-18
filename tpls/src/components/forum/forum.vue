<template>
  <div class="forum">
    
    <!-- 头部 -->
    <div class="header">
      <a href="#/index"></a>
      <div>
        <p>
          <a href="#">设为首页</a>
          <a href="#">收藏本站</a>
        </p>
        <div v-if="!uname">
          <p>你好，请 
            <a href="#" class="login" @click="loginFunc(true,'login')">登录</a>
          </p>
          <p>
            <a href="#" class="register" @click="regFunc">立即注册</a>
            <a href="#">找回密码</a>
          </p>
        </div>
        <div v-else>
          <p>
            <a href="#">{{uname}}</a>
          </p>
          <p>
            <a href="#"  @click.prevent="$emit('logout')">退出</a>
          </p>
        </div>
      </div>
      <p class="clear"></p>
    </div>
    <!-- 导航菜单 -->
    <div class="nav">
      <ul>
        <li v-for="(tmp,index) of navList" :key="index">
          <a :href=" '#/forum/'+index" @click.prevent="changeLinkTo(index)">{{tmp}}</a>
        </li>
      </ul>
      <div>
        <a href="#">快捷导航</a>
      </div>
      <p>
        <input type="text" placeholder="热搜：游戏攻略 官方活动">
        <a href="#"></a>
      </p>
    </div>
    <!-- 内容（组件） -->
    <router-view :loginState="uname" :loginFunc="loginFunc"></router-view>
    <!-- 尾部引入 -->
    <div class="footer">
      <footer-about></footer-about>
    </div>
  </div>
</template>
<script>
import FooterAbout from '../footer/footer'

  export default{
    props:["loginFunc","isLogin","uname","logout"],
    data:function(){
      return {
        navList:["论坛首页","每日签到","勋章中心","官网首页","排行榜"]
      }
    },
    components:{
      'footer-about':FooterAbout,
      
    },
    methods:{
      changeLinkTo:function(index){
        var arr=['/home','/sign','/honor','index','/ranklist']
        this.$router.push(arr[index])
      },
      regFunc:function(){
        this.loginFunc(true,"register")
      }
    }
  }
</script>
<style scoped>
  .forum{
    background:url(../../assets/img/forum/bg.jpg) no-repeat;
    width:100%;
    padding-top:10px;
  }
  .forum>div{
    width:1200px;
    margin:0 auto ;
  }
/*头部*/
  .header{
    background:none;
    margin:10px 0;
  }
  .header>a:first-child{
    display:block;
    width:235px;
    height:140px;
    background:url(../../assets/img/index/sprite.png) -917px -389px;
    float:left;
    /* margin:65px 0 0 165px; */
  }
  .header>div{
    float: right;
  }
  .header>div>p>a{
    color:#fcc779;
  }
  .header>div>div{
    margin-top:10px;
    padding:15px;
    background:rgba(255,255,255,0.5);
    border-radius: 5px;
  }
  .header .login{
    display: inline-block;
    width:48px;
    height: 22px;
    text-align: center;
    line-height: 22px;
    background:#fcc779;
    border:1px solid rgb(143, 141, 141);
    border-radius: 4px;
    color:#fff;
    margin-left:3px;
    margin-bottom:5px;
  }
  .header .register{
    color:#7bad46;
  }

/*导航菜单栏*/
  .nav{
    height:44px;
    background:url(../../assets/img/forum/nav.png);
  }
  /*导航列表*/
  .nav>ul{
    float: left;
  }
  .nav>ul>li{
    float: left;
  }
  .nav>ul>li>a{
    display: inline-block;
    padding:0 30px;
    font-size:20px;
    line-height: 44px;
    color:#6f523d;
  }
  .nav a:hover{
    color:#fff;
    background:rgba(255,255,255,0.2);
  }
  /*快捷导航*/
  .nav>div{
    float: left;
    position: relative;
  }
  .nav>div>a{
    display:block;
    font-size:16px;
    height:32px;
    width:100px;
    text-align: center;
    line-height: 32px;
    border:1px solid #6f523d;
    border-radius: 32px;
    font-weight: bold;
    margin-top:8px;
    margin-left:25px;
  }
  /*搜索框*/
  .nav>p{
    float:right;
    background:#F7F2E3;
    height: 32px;
    width:280px;
    line-height: 32px;
    border-radius: 3px;
    padding:0 10px;
    margin-top:6px;
    margin-right:10px;
    position: relative;
  }
  .nav>p>a{
    display:block;
    width:20px;
    height: 20px;
    background:url(../../assets/img/forum/icon-search.png);
    position:absolute;
    top:5px;
    right:10px;
  }
  .nav>p>input{
    background:none;
    outline: none;
    width:240px;
    font-size:16px;
  }
/*尾部*/
  .forum>.footer{
    width:100%;
    height:200px;
    padding-top:30px;
    background:#fff;
    margin-top:50px;
  }
</style>
