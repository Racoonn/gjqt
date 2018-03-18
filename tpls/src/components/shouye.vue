<template>
  <div @mousewheel="$router.push('/taigu')">
      <img src="../assets/img/main-bg.jpg" alt="" > 
      <div id='logo'>
        <a href="#"></a>
      </div>
      <object type="application/x-shockwave-flash" data="btnplayer.swf" width="185" height="185" id="play-flash" style="visibility: visible;" class="">
        <param name="allowfullscreen" value="false">
        <param name="movie" value="../assets/swf/btn.swf">
        <param name="allowscriptaccess" value="btn.swf">
        <embed src="../assets/swf/btn.swf"/>
        <param name="quality" value="high">
      </object>
      <div id="bofang"></div>
      <div id='shubiao'></div>
      <div class='xiaosanjiao' :style="{top:sanjiao+'px'}"></div>
  </div>
</template>

<script>
   export default{
       name:'shouye',
       data:function(){
         return {sanjiao:920,bianliang:10}
       },
       created:function(){
         setInterval(()=>{
            this.sanjiao+=this.bianliang;
            if(this.sanjiao>=940){
              this.bianliang=-10;
            }
            if(this.sanjiao<=920){
              this.bianliang=10;
              }
          },400)
       }
   } 
</script>

<style scoped>
#logo a{
  display: block;
  background: url('../assets/img/index_z.png') no-repeat scroll -219px -458px;
  width:281px;
  height:118px;
  position: absolute;
  left: 35px;
  top:20px;
}
#bofang{
  position: absolute;
  top:436px;
  left: 867px;
  z-index:10;
  width:185px;
  height: 185px;
  cursor: pointer;
}
#play-flash{
  position: absolute;
  top:436px;
  left:867px;
}
#shubiao{
  background-image:url('../assets/img/index_z.png');
  background-position: -430px -803px;
  background-repeat: no-repeat;
  width:70px;
  height:74px;
  position:absolute;
  top:840px;
  left:924px;
}
.xiaosanjiao{
  background: url('../assets/img/index_z.png') no-repeat scroll -480px -880px;
  transition:all .5s linear;
  width:20px;
  height:12px;
  position: absolute;
  /* top:930px; */
  left:49.5%;
}
</style>
