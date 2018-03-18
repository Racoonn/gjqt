<template>
  <div @mousewheel="getWheelDelta()" id="div">
      <img src="../assets/img/bg.jpg" alt="">
      <div>
        <div class="mouse-bg" :style="{opacity:mouseOpacity}">
          <div class="xiaosanjiao" :style="{top:sanjiao+'px'}"></div>
        </div>
      </div>
      <div>
        <ul class="text-ul" :style="{opacity:ulOpacity}" @onmousedown="ddd(event)">
          <li>
            <p>远古时，元气未分，浑沌为一。</p>
            <p>“衔烛之龙”在一片寂静中醒来，时间得以开始流转。
              它的一口龙息吹动了静止的创世火种，火种绽放出的光与热，牵动遥远空间中的另一位“神明”——“盘古”。</p>
            <p>衔烛之龙唤醒了盘古，而盘古唤醒了天地。</p>
          </li>
          <li>
            <p>人、兽、仙、妖死去后为“鬼”。鬼魂若前往地界的轮回井，即可重新投胎。</p>
            <p>以伏羲为首的多位清气神，以及追随他们的仙，自以建木登天后，居于天界；人、兽、妖、灵生活在人界，
              这一界包括诸国、妖域、十洲三岛、洞天福地；鬼和少数人类居住在地界。以上区域均属“常世”，而与“常世”相对的“魔域”，
              则被认为是魔的领域。</p>
          </li>
        </ul>
        <div class="text" :style="{height:textHeight+'px'}"></div>
        <div class="taigu-bottom" :style="{backgroundPosition:p1Position}"></div>
        <div class="taigu-right-top" :style="{backgroundPosition:p2Position}"></div>
        <div class="taigu-right-bottom" :style="{backgroundPosition:p3Position}"></div>
      </div>
  </div>
</template>

<script>
 export default{
   name:'taigu',
   data:function(){
     return {textHeight:1,
     mouseOpacity:1,
     ulOpacity:0,
     p1Position:-1920,
     p2Position:1920,
     p3Position:883,
     sanjiao:510,
     bianliang:10
     }
   },
   created:function(){
     setInterval(()=>{
       this.sanjiao+=this.bianliang;
       if(this.sanjiao>=530){
         this.bianliang=-10;
       }
       if(this.sanjiao<=510){
         this.bianliang=10;
       }
     },400)
   },
    methods:{
      ddd:function(event){
        console.log(event)
        console.log(1);
      },
    getWheelDelta:function(){
      var top=document.documentElement.scrollTop;
      console.log(top)
      this.textHeight=top/4;
      this.mouseOpacity=top;
      this.ulOpacity=1;
      this.p1Position=0;
      this.p2Position=parseInt(top/5)+"px,center";
      console.log(this.p2Position)
      this.p3Position=0;
    }
  }
 }   
</script>

<style scoped>
#div{
  position:fixed;
  
}
.mouse-bg{
  background:url('../assets/img/index_z.png') no-repeat scroll -423px -1052px;
  width:77px;
  height: 176px;
  position: fixed;
  top:50%;
  left:50%;
  margin-left:-38px;
  margin-top:-88px;
  transition:all 1s linear;
}
.xiaosanjiao{
  background: url('../assets/img/index_z.png') no-repeat scroll -480px -880px;
  transition:all .5s linear;
  width:20px;
  height:12px;
  position: fixed;
  left:50%; 
  /* top:54%; */
  margin-left:-10px;
}
.text{
  background:url('../assets/img/p1-text.png') no-repeat;
  /* height:226px; */
  width:91px;
  position: fixed;
  top:470px;
  left:510px;
  /* transition:all 1s linear; */
}
.taigu-bottom{
  background:url('../assets/img/p1-bottom.png') no-repeat -1920px 0px;
  transition:all 3s linear;
  width:1900px;
  height:264px;
  position: absolute;
  top:686px;
  /* margin-left:-1900px;  */
}
.taigu-right-top{
  background:url('../assets/img/p1wa.png') no-repeat scroll 1920px 0px;
  transition:all 3s linear;
  width:1900px;
  height:950px;
  position: absolute;
  top:0px;
  /* right:-100px; */
  /* left:1920px; */
}
.taigu-right-bottom{
  background:url('../assets/img/p1-monster.png') no-repeat 833px 0px;
  transition:all 3s linear;
  width:833px;
  height:720px;
  position: absolute;
  top:234px;
  left:1065px;
  /* right:0px; */
}
.text-ul{
  position: fixed;
  top:470px;
  left: 630px;
  width:540px;
  height:220px;
  color: #684241;
  font-size: 15px;
  line-height: 28px;
  transition: all 1s linear;
}
</style>
