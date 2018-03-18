<template>
<div class="contain">
<!-- logo -->
  <a class="logoImg-a" href="#" @click.prevent="$router.push('/index')"><img class="logoImg-a-img" src="../assets/img/logo/logo.png" alt="logo"></a>

  <div class="sliper-box gallery-slider">
    <router-view :datas="datas" v-if="datas.length>0"></router-view>
    <ul class="sliper-trigger">
      <li class="bullet1 statpid" @click="jumpPage(1)" :class="{hover:index==0}" s_data="/天罡"></li>
      <li class="bullet2 statpid" @click="jumpPage(2)" :class="{hover:index==1}" s_data="/斩风"></li>
      <li class="bullet3 statpid" @click="jumpPage(3)" :class="{hover:index==2}" s_data="/御风"></li>
      <li class="bullet4 statpid" @click="jumpPage(4)" :class="{hover:index==3}" s_data="/妙法"></li>
      <li class="bullet5 statpid" @click="jumpPage(5)" :class="{hover:index==4}" s_data="/司命"></li>
      <li class="bullet6 statpid" @click="jumpPage(6)" :class="{hover:index==5}" s_data="/咒隐"></li>
    </ul>
  </div>
</div>
</template>

<script>
  export default{
    data:function(){
      return {
        isHover:false,
        index:null,
        datas:[]
      }
    },
    created:function(){
      this.index=this.$route.params.page-1
      //console.log(this.index)
      this.$http.get("http://127.0.0.1/gjqt/gjqt_server_php/heros/hdetails.php?index="+(this.index+1))
        .then(function(response){
          this.datas=response.data
        })
    },
    methods:{
      jumpPage:function(index){
      this.index = index-1;
        this.$http.get("http://127.0.0.1/gjqt/gjqt_server_php/heros/hdetails.php?index="+index)
        .then(function(response){
            this.datas=response.data
        })
      }
    }
  }
</script>

<style scoped>
  /* 左上角logo */
  .logoImg-a{
    width: 196px;
    height: 88px;
    margin: 20px 0 0;
    position: absolute;
    left: 50px;
    z-index: 1000;
    animation: fadeLeftIN .4s ease-out forwards;
  }
  .logoImg-a-img{
    height: 100%;
  }
  /* 右侧按钮列表 */
  .sliper-box{
    max-width:1920px;
    height: 986px;
    background: #000;
    overflow: hidden;
    margin :0 auto;
    position: relative;
  }
  .sliper-box .sliper-trigger{
    width: 97px;
    height: 986px;
    background: url('../assets/img/person/Hperson/listImg/tag-line.png') 50% no-repeat;
    position: absolute;
    right: 98px;
    left: initial;
    bottom: initial;
    top: 0;
    z-index:10;
    padding-top:152px;
    box-sizing: border-box;
    animation: r2l .8s ease-out forwards;
  }
  .sliper-box .sliper-trigger .bullet1{
    display: block;
    width: 97px;
    height: 85px;
    background:url('../assets/img/person/Hperson/listImg/tag1.png')no-repeat;
    transition: transform .4s linear;
    margin:13px 0;
    cursor: pointer;
  }
  .sliper-box .sliper-trigger .bullet2{
    display: block;
    width: 97px;
    height: 85px;
    background:url('../assets/img/person/Hperson/listImg/tag2.png')no-repeat;
    transition: transform .4s linear;
    margin:13px 0;
    cursor: pointer;
  }
  .sliper-box .sliper-trigger .bullet3{
    display: block;
    width: 97px;
    height: 85px;
    background:url('../assets/img/person/Hperson/listImg/tag3.png')no-repeat;
    transition: transform .4s linear;
    margin:13px 0;
    cursor: pointer;
  }
  .sliper-box .sliper-trigger .bullet4{
    display: block;
    width: 97px;
    height: 85px;
    background:url('../assets/img/person/Hperson/listImg/tag4.png')no-repeat;
    transition: transform .4s linear;
    margin:13px 0;
    cursor: pointer;
  }
  .sliper-box .sliper-trigger .bullet5{
    display: block;
    width: 97px;
    height: 85px;
    background:url('../assets/img/person/Hperson/listImg/tag5.png')no-repeat;
    transition: transform .4s linear;
    margin:13px 0;
    cursor: pointer;
  }
  .sliper-box .sliper-trigger .bullet6{
    display: block;
    width: 97px;
    height: 85px;
    background:url('../assets/img/person/Hperson/listImg/tag6.png')no-repeat;
    transition: transform .4s linear;
    margin:13px 0;
    cursor: pointer;
  }
  .sliper-box .sliper-trigger .statpid:hover{
    transform:rotateY(180deg);
  }
  .sliper-box .sliper-trigger .bullet1.hover{
    transform:rotateY(180deg);
    background:url('../assets/img/person/Hperson/listImg/tag1_h.png')no-repeat;
  }
  .sliper-box .sliper-trigger .bullet2.hover{
    transform:rotateY(180deg);
    background:url('../assets/img/person/Hperson/listImg/tag2_h.png')no-repeat;
  }
  .sliper-box .sliper-trigger .bullet3.hover{
    transform:rotateY(180deg);
    background:url('../assets/img/person/Hperson/listImg/tag3_h.png')no-repeat;
  }
  .sliper-box .sliper-trigger .bullet4.hover{
    transform:rotateY(180deg);
    background:url('../assets/img/person/Hperson/listImg/tag4_h.png')no-repeat;
  }
  .sliper-box .sliper-trigger .bullet5.hover{
    transform:rotateY(180deg);
    background:url('../assets/img/person/Hperson/listImg/tag5_h.png')no-repeat;
  }
  .sliper-box .sliper-trigger .bullet6.hover{
    transform:rotateY(180deg);
    background:url('../assets/img/person/Hperson/listImg/tag6_h.png')no-repeat;
  }

  /* 动画列表 */
  /* logo动画 */
  @keyframes r2l {
  from {
    transform: translateX(195px); }
  to {
    transform: translateX(0); } }
  /* 列表加载动画 */
  @keyframes fadeLeftIN {
  from {
    opacity: 0;
    transform: translateX(-236px); }
  to {
    opacity: 1;
    transform: translateX(0); } }
</style>
