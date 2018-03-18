<template>
  <div class="forum-home">
      <h5>
          <p>当前位置：论坛首页</p>
          <ul>
              <li>今日:<span>14</span></li>
              <li>昨日:<span>63</span></li>
              <li>帖子:<span>504379</span></li>
              <li>会员:<span>19726</span></li>
              <li>欢迎新会员：<a href="#">云雨飞</a></li>
          </ul>
      </h5>
      <div class="carousel">
          <div class="left">
              <img :src="require('../../assets/'+carousel.img[carouselIndex])" alt="">
              <ul>
                  <li  
                  v-for="(tmp,index) of carousel.key" 
                  :key="index"
                  :class="{hover:index==carouselIndex}"
                  @mouseenter="changeCarousel(false)"
                  @mouseout="changeCarousel(true)"
                  @click="changeIndex(index)">{{tmp}}</li>
              </ul>
          </div>
          <div class="right">
              <h3>活动热帖</h3>
              <ul>
                  <li v-for="(tmp,index) of hot" :key="index">
                      <a href="#">{{tmp.title}}</a>
                      <span>{{tmp.date}}</span>
                  </li>
              </ul>
          </div>
          <div class="right">
              <h3>精华攻略</h3>
              <ul>
                  <li v-for="(tmp,index) of strategy" :key="index">
                      <a href="#">{{tmp.title}}</a>
                      <span>{{tmp.date}}</span>
                  </li>
              </ul>
          </div>
      </div>
      <div class="floor" v-for="(floor,index) of modules" :key="index" >
          <h3>
              <span>{{floor.module}}</span>
              <img v-if="isShow[index]"  
              src="../../assets/img/forum/icon_no.png" 
              title="收起/展开" 
              @click="changeIsShow(index)">
              <img v-else 
              src="../../assets/img/forum/icon_yes.png"  
              title="收起/展开" 
              @click="changeIsShow(index)">
          </h3>
          <ul v-if="isShow[index]" >
              <li v-for="(tmp,index1) of floor.details" :key="index1">
                  <img class="lf" :src="require('../../assets/'+tmp.img)" alt="">
                  <div class="rt">
                      <h2> <a href="#" :class="{mRed:index==0}"> {{tmp.title}}</a></h2>
                      <p v-for="(sub,index2) of tmp.subscribe" 
                      :key="index2"
                      :class="{lightGreen:floor.styles&&index1==0&&index2!=2,darkYellow:floor.styles&&index1==1&&index2!=2,lightBlue:floor.styles&&index1==2&&index2!=2,
                      darkRed:floor.styles&&index1==3&&index2!=2,purple:floor.styles&&index1==4&&index2!=2,darkGreen:floor.styles&&index2!=2&&index1==5}">{{sub}}</p>
                      <p class="title">主题:{{tmp.titleCount}} 贴数:{{tmp.totleCount}}</p>
                  </div>
              </li>
          </ul>
      </div>
  </div>
</template>
<script>
    export default{
        data:function(){
            return {
                timer:null,
                carouselIndex:0,
                carousel:{
                    img:['img/forum/banner1.jpg','img/forum/banner2.png','img/forum/banner3.jpg','img/forum/banner4.png'],
                    key:['奇谭贺年卡',"古网知识十一期五题","场景赏一渭川塬","速拼渭川塬"]
                },
                hot:[
                    {title:"【活动】我问你答第十二期—第五题",date:"2018-01-05"},
                    {title:"【公告】新签到系统上线公告",date:"2018-01-05"},
                    {title:"【攻略】龙星积分、金钱快速获取",date:"2018-01-05"},
                    {title:"【场景赏】—渭川塬",date:"2018-01-05"}
                ],
                strategy:[
                    {title:"【副本攻略】古网副本视频合集",date:"2018-01-05"},
                    {title:"【手法篇】各职业输出手法教学",date:"2018-01-05"},
                    {title:"【进击篇】初级装备产出、声望配方讲解",date:"2018-01-05"}
                ],
                /*模块*/
                isShow:[true,true,true,true],
                modules:[
                        {module:"官方公告区",details:[
                            {img:'img/forum/common1.png',title:"官方公告",subscribe:["官方公告、更新维护、论坛公告"],
                    titleCount:'22',totleCount:"155"},
                        ]},
                        {module:"玩家交流区",details:[
                            {img:'img/forum/common2-1.png',title:"综合讨论",subscribe:["玩家主讨论区","论坛主讨论区，欢迎发表各种游戏趣闻。"],
                            titleCount:'1万',totleCount:"32万"},
                            {img:'img/forum/common2-2.png',title:"同人区",subscribe:["同人作品专区","美图、美绘、影音、小说大荟萃"],
                            titleCount:'19',totleCount:"121"},
                            {img:'img/forum/common2-3.png',title:"盟会讨论区",subscribe:["加好友建帮派专区","与好友一起纵横和谐的古剑大世界"],
                            titleCount:'166',totleCount:"2364"},
                            {img:'img/forum/common2-4.png',title:"灌水区",subscribe:["游戏内外趣事分享区","恩怨情仇、八卦新闻在此畅所欲言"],
                            titleCount:'62',totleCount:"15万"},
                            {img:'img/forum/common2-5.png',title:"新手区",subscribe:["游戏、论坛新手交流区","从零开始，新手问题等讨论"],
                            titleCount:'15',totleCount:"63"},
                        ]},
                        {module:"门派讨论区",styles:true,details:[
                            {img:'img/forum/common3-1.png',title:"斩风",subscribe:["来则斩风去擎苍， 醉眼何曾侧侯王。","一壶乾坤八千梦， 卧看青山入斜阳。","斩风职业攻略、操作手法等在此交流"],
                            titleCount:'22',totleCount:"1966"},
                            {img:'img/forum/common3-2.png',title:"妙法",subscribe:["无边妙法何处求， 蓬山倾倒白云头。","琴心只共松月老， 红尘白雪赏春秋。","妙法职业攻略、操作手法等在此交流"],
                            titleCount:'12',totleCount:"2618"},
                            {img:'img/forum/common3-3.png',title:"御剑",subscribe:["朝往昆仑御剑游， 暮观沧海自东流。","不求无为证大道， 且与苍生共白头。","御剑职业攻略、操作手法等在此交流"],
                            titleCount:'20',totleCount:"2529"},
                            {img:'img/forum/common3-4.png',title:"天罡",subscribe:["天罡夜枕绿沉枪， 敌血尚温金甲凉。","明朝与子同穴死， 再托魂梦寄故乡。","天罡职业攻略、操作手法等在此交流"],
                            titleCount:'19',totleCount:"1895"},
                            {img:'img/forum/common3-5.png',title:"咒隐",subscribe:["咒隐通幽访灵都， 千魂万魄入洪炉。","誓将此身临泉壤， 再化孤月照三途。","咒隐职业攻略、操作手法等在此交流"],
                            titleCount:'26',totleCount:"1331"},
                            {img:'img/forum/common3-6.png',title:"司命",subscribe:["造化司命开鸿蒙， 驱鸾凰兮驭飞虹。","谁踏千劫出万壑， 便乘长风补苍穹。","司命职业攻略、操作手法等在此交流"],
                            titleCount:'18',totleCount:"2089"}
                        ]},
                        {module:"官方客服区",details:[
                            {img:'img/forum/common4-1.png',title:"收集区",subscribe:["游戏BUG、建议提交专区"],
                            titleCount:'207',totleCount:"633"},
                            {img:'img/forum/common4-2.png',title:"玩家反馈",subscribe:["游戏内遇到的各种问题可以在此进行反馈。"],
                            titleCount:'939',totleCount:"3738"}
                        ]}
                ],
               
            }
        },
        mounted:function(){
            this.startCarousel();
        },
        methods:{
            /*设置小轮播定时器*/
            startCarousel:function(){
                this.timer=setInterval(()=>{
                    this.carouselIndex++;
                    if(this.carouselIndex==4){
                        this.carouselIndex=0;
                    }
                },2000)
            },
            /*鼠标进入li暂停轮播*/
            changeCarousel:function(msg){
                if(msg){
                    this.startCarousel();   
                }else{
                    clearInterval(this.timer)
                    this.timer=null;
                }
            },
            /*点击切换轮播图片*/
            changeIndex:function(index){
                this.carouselIndex=index
            },
            changeIsShow:function(index){
                this.isShow[index]=!this.isShow[index];
            }
        }
    }
</script>
<style  scoped>
/*当前位置*/
    .forum-home>h5{
        font-weight: normal;
        color:#666;
        height: 40px;
        background:url(../../assets/img/forum/home.png) no-repeat 0 50%;
        padding:12px 0 5px 18px;
    }
    .forum-home>h5>p{
        float:left;
    }
    .forum-home>h5>ul{
        float:right;
    }
    .forum-home>h5>ul>li{
        float: left;
        height: 15px;
        line-height: 15px;
        padding:0 5px;
        border-right:1px solid #666;
    }
    .forum-home>h5>ul>li:last-child{
        border:none;
    }
    .forum-home>h5>ul>li>span{
        color:#444;
    }
/*小轮播*/
    .carousel{
        height: 260px;
        background: #eeeeee;
        padding:10px;
        display: flex;
        justify-content: space-between;
    }
    .carousel>.left>img{
        width:460px;
        height:206px;
    }
    .carousel>.left>ul>li{
        float: left;
        width:115px;
        height:34px;
        font-size:12px;
        text-align: center;
        line-height: 34px;
        background:#306270;
        border-top:1px solid #333;
        border-right:1px solid #333;
        color:#c9f3ff;
        cursor: pointer;
        position: relative;
        top:-5px;
    }
    .carousel>.left>ul>li:hover,.carousel>.left>ul>li.hover{
        opacity: 0.9;
        border-bottom: 2px solid #9EE7ED;
    }
/*小轮播右侧*/
    .carousel>.right{
        width:350px;
        height: 240px;
        background:#fff;
        padding:10px;
    }
    .carousel>.right>h3{
        text-align:center;
        padding:5px;
        border-bottom: 1px solid #ccc;
    }
    .carousel>.right>ul>li{
        height: 30px;
        line-height:30px;
        color:#ccc;
        
    }
    .carousel>.right>ul a{
        color:#666;
        display:inline-block;
        width:230px;
        margin-right:10px;
        white-space:nowrap;
        text-overflow:ellipsis;
        overflow:hidden;
    }
    .carousel>.right>ul span{
        vertical-align: top;
    }
/*模块*/
  /*通用*/
    .floor>h3{
        background:url(../../assets/img/forum/header1.png) no-repeat;
        color:#fff;
        height: 40px;
        margin-top:20px;
        line-height: 40px;
        padding:0 10px;
        position: relative;
    }
    .floor>h3>img{
        position:absolute;
        top:10px;
        right:10px;
        cursor: pointer;
    }
    .floor>ul{
        background: #ffffff;
        border:1px solid #ccc;
        padding:10px;
        display: flex;
        flex-wrap: wrap;
    }
    .floor>ul>li{
        margin:10px;
    }
    .floor>ul>li>div{
        margin-left:20px;
        width:250px;
        height:94px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
    .floor>ul>li p{
        font-size: 12px;
    }
    .floor .title{
        color:#666;
    }
    .floor .rt a{
        font-size: 18px;
    }
    .floor .rt a:hover{
        color:#385a7a;
    }
  /*特殊样式*/
   .mRed{color:red;}
   .floor .rt a.mRed:hover{
       color:red;
   }
    .lightGreen{color:rgb(132, 197, 102);}
    .darkYellow{color:rgb(205, 127, 50);}
    .lightBlue{color:rgb(139, 218, 239);}
    .darkRed{color:rgb(221, 112, 96);}
    .purple{color:rgb(188, 127, 210);}
    .darkGreen{color:rgb(76, 153, 144);}
</style>
