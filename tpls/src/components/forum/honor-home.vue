<template>
  <div class="right">
        <ul>
          <li v-for="(medal,index) of medalList" :key="index">
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
      </div>
</template>
<script>
    export default{
        props:["medalList"],
        data:function(){
            return {
                
            }
        }
    }
</script>
<style  scoped>
     /*右侧*/
  .honor .right{
    width:1020px;
    background:#fff;
    padding:15px;
  }
  .honor .right>ul>li{
    padding:20px 0;
    float: left;
    margin-left:80px;
    text-align: center;
  }
  .honor .right>div{
    padding-top:20px;
  }
  .honor .right>div>p{
    height: 30px;
    border-bottom: 1px dashed #ccc;
  }
  .honor .right>div li{
    height: 50px;
    line-height: 50px;
    border-bottom: 1px dashed #ccc;
  }
  .honor .right>div li>img{
    width:24px;
    height:24px;
    position: relative;
    top:6px;
  }
  .honor .right>div li>a{
    float:right;
  }
</style>

