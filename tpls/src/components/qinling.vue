<template>
  <div @mousewheel="getWheelDelta()">
      <img src="../assets/img/bg.jpg" alt="">
      <div>
         <div class="mouse-bg" :style="{opacity:mouseOpacity}">
                <div class="xiaosanjiao" :style="{top:sanjiao+'px'}"></div>
         </div> 
         <div class="qin-text" :style="{height:textHeight+'px'}"></div>
         <ul class="qin-ul" :style="{opacity:ulOpacity}">
             <li>
                 <p>
                     距今九百年前，秦陵不朽军团在其首脑羡门泽的带领下，欲冲出秦陵为祸天下。
                     危难之际，百草谷冠月木提前发出警示。
                     女仙蓝瑶期得冠月木警讯，邀请当世四位法力高强的修仙同道，赶赴秦陵，抗击不朽军团。
                     而除了这五位顶尖高人外，当时还有一些自愿相随的修仙者高手，
                     如西南尞族的大司命静舒云、剑仙沈湘君之徒-赤霞子、百草谷墨者巨子禹天峰等。
                     （第一次秦陵之变）
                 </p>
                 <p>
                     在那场惊天动地的大战中，不朽军团被蓝瑶期等五位高人压制，
                     眼看就要将之灭除，但却异变陡生：魔龙燎煞突然现身，并突施偷袭，
                     将五位高人重创。五位高人与之激斗，最终以两败俱伤的代价将它击退。
                 </p>
                 <i>滚动鼠标</i>
             </li>
             <li>
                 <p>
                     魔龙通过咸阳宫方镜退走魔域，蓝瑶期等人以残缺法力结成“天衡五珏阵”，
                     将咸阳宫方镜连接魔域的通道封印，使其不能再轻易回返。
                 </p>
                 <p>
                     五位高人临终前，将此机要告知于静舒云、赤霞子、禹天峰等人。
                     并让他们将此事以及加固“天衡五珏阵”的法门世代传授。
                     若封印有变，则需再度来到秦陵加固封印。
                     静舒云等人牢记蓝瑶期之言，并在这场战斗中，结下深厚情谊，
                     以致数百年来，彼此后世子弟往来频繁，渊源极深。这就是“秦陵之盟”的前身。
                 </p>
                 <i>滚动鼠标</i>
             </li>
            <!-- <li>
                 <p>
                     九百年前的秦陵之变期间，蓝瑶期率领众修仙者，
                     利用秦陵附近商谷洞天中的天然灵气，结合其运转原理，
                     在洞天中的一座浮岛上设下“天衡五钰阵”，以封印秦陵。
                     这块浮岛名为“步云洲”。九百年间，除了原先镇守此地的一些修仙者之外，
                     各大修仙门派每隔一段时间都会遣门下弟子前来巡逻换防，修补法阵，修仙者彼此之间也就产生了各种交流。
                 </p>
                 <p>
                     随着时间的流逝，步云洲逐渐发展成为一个修仙者聚集地，现在则被作为秦陵之盟的重要据点，主要负责秦陵相关事务。
                 </p>
             </li>-->
         </ul>
         <div class="qin-right" :style="{backgroundPosition:qinRight+'px'}"></div>
         <div class="qin-bottom" :style="{backgroundPosition:qinLeft+'px'}"></div>
      </div>
  </div>
</template>

<script>
   export default{
       name:'qinling',
       data:function(){
           return {mouseOpacity:1,
               textHeight:0,
                ulOpacity:0,
                qinRight:1920,
                qinLeft:-1918,
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
           getWheelDelta:function(){
                this.mouseOpacity=0;
                this.textHeight=226;
                this.ulOpacity=1;
                this.qinRight=0;
                this.qinLeft=0;
           }
       }
   } 
</script>

<style scoped>
.mouse-bg{
  background:url('../assets/img/index_z.png') no-repeat scroll -423px -1052px;
  transition:all 3s linear;
  width:77px;
   height: 176px; 
  position: fixed;
  top:50%;
  left:50%;
  margin-left:-38px;
  margin-top:-88px;
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
.qin-text{
    background: url('../assets/img/p3-text.png') no-repeat;
    transition:all 3s linear;
    position: absolute;
    top:300px;
    left: 530px;
    width:94px;
    /* height: 226px; */
}
.qin-ul{
    position: absolute;
    transition:all 3s linear;
    top:300px;
    left: 640px;
    width: 540px;
    height: 220px;
    color: #684241;
    font-size: 15px;
    line-height: 28px;
}
.qin-right{
    background: url('../assets/img/p3-top.png') no-repeat -1920px 0px;
    transition:all 5s linear;
    width:1920px;
    height: 950px;
    position: absolute;
    top:0;
}
.qin-bottom{
    background:url('../assets/img/p3-bottom.png') no-repeat -1918px 0px;
    transition:all 5s linear;
    width:1918px;
    height:473px;
    position: absolute;
    bottom:0px;
}
</style>
