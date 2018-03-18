<template>
  <div>
      <!--<dramaLoading></dramaLoading>-->
      <router-link to="index" class="logo"></router-link>
      <object type="application/x-shockwave-flash" 
      data="http://localhost/gjqt_server/video/main.swf" 
      width="1920" height="986" id="flash" 
      style="visibility: visible;"><param name="wmode" 
      value="opaque"></object> 
  </div>
</template>
<script>
import DramaLoading from '@/components/drama/dramaBg'
    export default{
        data:function(){
            return {}
        },
        components:{
            dramaLoading:DramaLoading,
        }

    }
</script>
<style scoped>
    .logo{
        width:174px;height:77px;
        position:fixed;top:0;left:50px;
        background: url(../../assets/img/drama/logo.png) no-repeat center center;
    }
</style>
