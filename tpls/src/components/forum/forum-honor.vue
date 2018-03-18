<template>
  <div class="honor">
    <h5>
      <img src="../../assets/img/forum/home.png" alt="">
      >
      <span>勋章</span>
    </h5>
    <div>
      <ul class="left">
        <li><h3>勋章</h3></li>
        <li><a href="#" :class="{on:!myMedal}">勋章中心</a></li>
        <li><a href="#" :class="{on:myMedal}" @click.prevent="toMyMedal">我的勋章</a></li>
      </ul>
      <router-view :medalList="medals"></router-view>
      <!-- <div class="right">
        <ul>
          <li v-for="(medal,index) of medals" :key="index">
            <img :src="require('../../assets/'+medal.img)" alt="">
            <h5>{{medal.title}}</h5>
          </li>
        </ul>
        <div class="clear">
          <p>勋章中心</p>
          <ul>
            <li>
              <img src="" alt="">
              <span>在2018-1-4 16:58 获得 <b>天天有你</b> 勋章</span>
              <a href="#">lixiaojuan</a>
            </li>
          </ul>
        </div>
      </div> -->
    </div>
  </div>
</template>
<script>
    export default{
      props:["loginState","loginFunc"],
      data:function(){
        return {
          medals:[
            {img:'img/forum/medal1.gif',title:'怒涛龙骧'},
            {img:'img/forum/medal2.gif',title:'剑赋奇谭'},
            {img:'img/forum/medal3.gif',title:'勤勉侠客'},
            {img:'img/forum/medal4.gif',title:'天天有你'},
            {img:'img/forum/medal1.gif',title:'永恒之心'}
          ],
          myMedal:false,
        }
      },
      methods:{
        toMyMedal:function(){
          if(!this.loginState){
            alert("您还未登录不能查看该页面")
            this.loginFunc(true)
          }
        }
      }
    }
</script>
<style scoped>
/*当前位置*/
  .honor>h5{
    font-weight: normal;
        color:#666;
        height: 40px;
        padding:12px 0 5px 12px;
  }
/*勋章*/
  .honor>div{
    border:1px solid #ccc;
    background:#F6F3E8;
    display:flex;
  }
 /*左侧*/
  .honor>div>.left{
    width:180px;
  }
  .honor>div>.left>li{
    height: 40px;
    line-height: 40px;
    text-align: center;
    border-bottom:1px solid #ccc;
  }
  .honor>div>.left a:hover,a:focus{
    color:#133d55;
  }
  .honor>div>.left a.on{
    color:#ff9600;
  }

</style>
