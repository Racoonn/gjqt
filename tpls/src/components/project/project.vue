<template>
    <div id="main">
        <div id="container">
            <!-- logo图标 -->
            <div id="logo">
                <a href="#/index"><img src="../../assets/img/img/logo.png"></a>
            </div>
            <!--左右按钮-->
            <div id="button">
                <img class="left" src="../../assets/img/img/i-page-l.png">
                <img class="right" src="../../assets/img/img/i-page-r.png">
            </div>
            <!--文字部分-->
            <div id="text">
                <p class="top">眼前 岂止碧海蓝天</p>
                <img src="../../assets/img/img/line.png">
                <p class="bottom">阴晴雨雪 四时不同</p>
            </div>
            <!--更多场景-->
            <div id="more">
                <!--更多场景-->
                <div class="center">
                    <p id="centerItem">更多场景</p>
                </div>
                <!--万千世界-->
                <ul class="top-left">
                    <li v-on:mouseenter="addClass1()" v-on:mouseleave="removeClass1()">
                        <img src="../../assets/img/img/icon-0.png">
                        万千世界
                    </li>
                    <li  v-on:mouseenter="addClass1()"  v-on:mouseleave="removeClass1()"  :class="{item2:index==0&&show1,item3:index==1&&show1,item4:index==2&&show1,item5:index==3&&show1,item6:index==4&&show1,item7:index==5&&show1,item8:index==6&&show1}" class="item" v-for="(tmp,index) in item1" :key="index">{{tmp}}</li>
                    
                </ul>
                <!--昼夜更替-->
                <ul class="top-right" >
                    <li v-on:mouseenter="addClass2()"  v-on:mouseleave="removeClass2()">
                        <img src="../../assets/img/img/icon-1.png">
                        昼夜更替
                    </li>
                    <li  class="item" v-on:mouseenter="addClass2()"  v-on:mouseleave="removeClass2()"  :class="{item2:index==0&&show2,item3:index==1&&show2}" v-for="(tmp,index) in item2" :key="index">{{tmp}}</li>

                </ul>
                <!--门派洞天-->
                <ul class="bottom-left">
                    <li  v-on:mouseenter="addClass3()"  v-on:mouseleave="removeClass3()">
                        <img src="../../assets/img/img/icon-2.png">
                        门派洞天
                    </li>
                    <li class="item" v-on:mouseenter="addClass3()"  v-on:mouseleave="removeClass3()"  :class="{item2:index==0&&show3,item3:index==1&&show3,item4:index==2&&show3,item5:index==3&&show3,item6:index==4&&show3,item7:index==5&&show3}" v-for="(tmp,index) in item3" :key="index">{{tmp}}</li>
                   
                </ul>
                <!--气象万千-->
                <ul class="bottom-right">
                    <li  v-on:mouseenter="addClass4()"  v-on:mouseleave="removeClass4()">
                        <img src="../../assets/img/img/icon-3.png">
                        气象万千
                    </li>
                    <li class="item" v-on:mouseenter="addClass4()"  v-on:mouseleave="removeClass4()"  :class="{item2:index==0&&show4,item3:index==1&&show4,item4:index==2&&show4,item5:index==3&&show4}" v-for="(tmp,index) in item4" :key="index">{{tmp}}</li>
       
                </ul>
            </div>
            <!--继续探索-->
            <div id="continue">
                <img src="../../assets/img/img/search.png">
            </div>
        </div>
        <!--背景动画-->
        <div id="video">
            <embed src="http://gjol.yy.com/s/gjqtscene20160728/image/video_btn_final.swf?volume=0&amp;showButton=0&amp;clickAndPause=0&amp;width=1920&amp;height=1080&amp;progresscb=null&amp;flv=http://yygame.duowan.com/tv/gj/cjz/bxt_n.f4v&amp;completecb=completeOneVideo" name="btn_final" id="params4" quality="high" allowscriptaccess="always" swliveconnect="true" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1920" height="1080">
        </div>
    </div>
</template>

<script>
    export default{
        data:function(){
            return{
                show1:false,
                show2:false,
                show3:false,
                show4:false,
                item1:["终南山麓","太华山","步云洲","百草谷","江都城","补天岭","长安"],
                item2:["夜雪","晨雾"],
                item3:["酩酊坊","秒成山","临魁舟","沉壁渊","杳冥涧","擎香海"],
                item4:["雷暴","晴天","下雪","阴天"]
            }
        },
        methods:{
            addClass1:function(){
                this.show1=true;
            },
            removeClass1:function(){
                this.show1=false;
            },
            addClass2:function(){
                this.show2=true;
            },
            removeClass2:function(){
                this.show2=false;
            },
            addClass3:function(){
                this.show3=true;
            },
            removeClass3:function(){
                this.show3=false;
            },
            addClass4:function(){
                this.show4=true;
            },
            removeClass4:function(){
                this.show4=false;
            }
        }
    }
</script>


<style scoped>
    p,h1,h2,h3,h4,h5,h6,ul,ol,dl,dd{
        margin:0px;
        padding:0px;
        list-style:none;
    }
    img{
        /*改变基线对齐多出的像素*/
        vertical-align:middle;
    }
    #main{
        position:relative;
        width:100%;
    }
   
    #container{
        position:relative;
        z-index:10000;
    }

    #video{
        width:100%;
        height:980px;
        position:absolute;
        top:-60px;
        overflow: hidden;
    }
    #main>#container>#logo{
        width:200px;
        height:90px;
        position: absolute;
        left: 30px;
        top:-20px;
    }
    #main>#container>#button>.left{
        position:absolute;
        left:50px;
        top:400px;
    }
    #main>#container>#button>.right{
        position:absolute;
        right:50px;
        top:400px;
    }
    #main>#container>#text{
        width:350px;
        height:100px;
        position: absolute;
        left: 150px;
        top:300px;
        text-align: left;
    }
    #main>#container>#text>.top{
        height: 28px;
        line-height:28px;
        color:#fff;
        font-size:24px;
        margin-top: 5px;
    }
     #main>#container>#text>img{
         margin-left:20px;
     }
      #main>#container>#text>.bottom{
        height: 46px;
        line-height:46px;
        color:#E0B372;
        font-size:42px;
        margin-top: 5px;
      }
      #more{
          position:absolute;
          top:300px;
          right:20%;
      }
      #more>.center,#more>.top-left,#more>.top-right,#more>.bottom-left,#more>.bottom-right{
          width:163px;
          height: 163px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          text-align: center;
          line-height: 163px;
          cursor: pointer;
          margin:2px;
      }
      #more>.top-left{
          position: absolute;
          top:-83px;
          left: -83px;
      }
      #more>.top-left>.item,#more>.top-right>.item,#more>.bottom-left>.item,#more>.bottom-right>.item{
          position: absolute;
          top:0px;
          left: 0px;
          opacity:0;
      }
      
       #more>.top-right{
          position: absolute;
          top:-83px;
          left: 83px;
         
      }
       #more>.bottom-left{
          position: absolute;
          top:83px;
          left:-83px;
      }
       #more>.bottom-right{
          position: absolute;
          top:83px;
          left:83px;
      }
      #more img{
          display:block;
          position:absolute;
          top:30px;
          left:60px;
        
      }
      #more p{
          color:#E0B372;
          font-size:18px;
          
      }
      ul li{
          color:#E0B372;
          font-size:18px;
          margin-top: 10px;
          margin:1.5px;
          width: 163px;
          position: relative;
          top:10px
      }
      

    
       #more>.top-left>.item2{
          position:absolute;
          top:-168px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
      }

        #more>.top-left>.item3{
          position:absolute;
          top:-86px;
          left:83px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
      }

        #more>.top-left>.item4{
          position:absolute;
          top:-86px;
          left:-83px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
       }

        #more>.top-left>.item5{
          position:absolute;
          top:0px;
          left:-166px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
       }
        #more>.top-left>.item6{
          position:absolute;
          top:81px;
          left:-83px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
       }
        #more>.top-left>.item7{
          position:absolute;
          top:81px;
          left:-249px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
      }
        #more>.top-left>.item8{
          position:absolute;
          top:163px;
          left:-166px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
      }

        #more>.top-right>.item2{
            position:absolute;
            top:-86px;
            left:-83px;
            background:url(../../assets/img/img/item-bg.png) no-repeat;
            opacity: 1;
            transition: all .5s ease;
        }
        #more>.top-right>.item3{
            position:absolute;
            top:81px;
            left:81px;
            background:url(../../assets/img/img/item-bg.png) no-repeat;
            opacity: 1;
            transition: all .5s ease;
        }
        

        #more>.bottom-left>.item2{
          position:absolute;
          top:-170px;
          left:-170px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
        }

        #more>.bottom-left>.item3{
          position:absolute;
          top:-86px;
          left:-253px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
        }
        #more>.bottom-left>.item4{
          position:absolute;
          top:-86px;
          left:-86px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
        }
        #more>.bottom-left>.item5{
          position:absolute;
          top:-3px;
          left:-170px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
        }
        #more>.bottom-left>.item6{
          position:absolute;
          top:83px;
          left:-86px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
        }
        #more>.bottom-left>.item7{
          position:absolute;
          top:83px;
          left:83px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
        }



         #more>.bottom-right>.item2{
          position:absolute;
          top:-86px;
          left:83px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
        }
        #more>.bottom-right>.item3{
          position:absolute;
          top:83px;
          left:83px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
        }
        #more>.bottom-right>.item4{
          position:absolute;
          top:83px;
          left:-86px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
        }
        #more>.bottom-right>.item5{
          position:absolute;
          top:168px;
          left:-168px;
          background:url(../../assets/img/img/item-bg.png) no-repeat;
          opacity: 1;
          transition: all .5s ease;
        }

        #more>.center>#moreItem:hover{
            background:red;
        }








      #continue{
          position: absolute;
          left:50%;
          top:800px;
      }
</style>













