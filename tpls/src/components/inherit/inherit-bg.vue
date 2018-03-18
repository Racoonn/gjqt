<template>
  <ul class="bg-movie clear">
    <li class="bgPic" style="z-index:1;opacity:1" v-if="this.bg_index==0"></li>
    <li class="bgPic bgPic2" style="z-index:1;opacity:1" v-if="this.bg_index==1"></li>
    <li class="bgPic bgPic3" style="z-index:1;opacity:1" v-if="this.bg_index==2"></li>
  </ul>
</template>
<script>
  export default{
    props:['bg_index'],
    methods:{
      timeOne:function(){
        setInterval(()=>{
          console.log(this.bg_index);
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
  ul.bg-movie{
    position: fixed;
    width:100%;height:100%;
    z-index:1;
    top:0;
    left:0;
  }
  ul.bg-movie li.bgPic{
    width:100%;height:100%;min-height:873px;
    background:url(../../assets/img/index1.jpg) no-repeat center center;
    position:absolute;top:0;left:0;
    
  }
  ul.bg-movie li.bgPic2{
    background:url(../../assets/img/index2.jpg);
  }
  ul.bg-movie li.bgPic3{
    background:url(../../assets/img/index3.jpg);
  }
</style>
