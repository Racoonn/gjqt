<template>
    <div class="bgColor" @mousewheel="getWheelDelta()">
        <img src="../assets/img/bg.jpg" alt="">
        <div>
            <div class="mouse-bg" :style="{opacity:mouseOpacity}">
                <div class="xiaosanjiao" :style="{top:sanjiao+'px'}"></div>
            </div>  
            <div class="renjian-text" :style="{height:textHeight+'px'}"></div>
            <ul class="renjian-ul" :style="{opacity:ulOpacity}">
                <li>
                    <p>剑的诞生蕴含着人们对超然之力的渴望。
                        先有蚩尤胞弟以己身殉剑，铸成可伤及神体的“始祖剑”。
                        后有龙渊部族以禁法融合无数魂魄，铸造出七柄极其凶煞的凶剑，被后世称为“太古七剑”。
                    </p>
                    <i>滚动鼠标</i>
                </li>
                <li>
                    <p>这种太古时代的人类铸剑之术，因必须融入魂魄，被众神列为禁法。
                        自女娲将造出太古七剑的工匠带去地界，古法失传于人间。
                    </p>
                    <p>
                        伏羲为始祖剑所伤之后，即命数位仙匠尝试铸造神剑。其中就诞生了神剑•昭明和被后世视为人界皇权象征的“五帝之首剑”。
                    </p>
                    <i>滚动鼠标</i>
                </li>
                <li>
                    <p>传说强大的宝剑中，往往宿有剑心或剑灵。
                        有了剑心乃至剑灵，宝剑才能真正拥有令神鬼皆惊的力量。
                        千百年来，凡人中也不乏以各种新奇之法尝试铸剑的异士高人，谱就成一段段传奇故事。
                    </p>
                </li>
            </ul>
            <div class="jian" :style="{top:jianTop+'px'}"></div>
            <div class="renjian-top" :style="{top:renTop+'px'}"></div>
            <div class="renjian-bottom" :style="{bottom:renBottom}"></div>
        </div>
    </div>  
</template>

<script>
    export default{
        name:'renjian',
        data:function(){
            return {mouseOpacity:1,
            textHeight:0,
            ulOpacity:0,
            jianTop:-408,
            renTop:-673,
            renBottom:-997,
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
               this.textHeight=206;
               this.ulOpacity=1;
               this.jianTop=100;
               this.renTop=0;
               this.renBottom=0;
           }
        }
    }
</script>

<style scoped>
/*.bgColor{
    background:url('../assets/img/bg.jpg') no-repeat;
    height:950px;
    position: fixed;
}*/
.mouse-bg{
  background:url('../assets/img/index_z.png') no-repeat scroll -423px -1052px;
  transition:all 2s linear;
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
.renjian-text{
    background:url('../assets/img/p2-text.png') no-repeat;
    transition:all 2s linear;
    width:94px;
    /* height: 206px; */
    position: fixed;
    top:590px;
    left:650px;
}
.renjian-ul{
    position: fixed;
    transition:all 3s linear;
    top:590px;
    left: 770px;
    width:540px;
    height: 220px;
    color: #684241;
    font-size: 15px;
    line-height: 28px;
}
.jian{
    background:url('../assets/img/p2-bg.png') no-repeat;
    transition:all 6s ease;
    width:245px;
    height: 408px;
    position: absolute;
    left: 914px;
    top:-408px;
}
.renjian-top{
    background: url('../assets/img/p2-top.png') no-repeat;
    transition:all 3s linear;
    width:1920px;
    height: 691px;
    position: absolute;
    top:-673px;
    right:0;
}
.renjian-bottom{
    background:url('../assets/img/p2-bottom.png') no-repeat;
    transition: all 3s linear;
    width:1920px;
    height: 950px;
    position: fixed;
    bottom:-997px; 
    left:0;
}
</style>
