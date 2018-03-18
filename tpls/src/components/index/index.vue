<template>
  <div class="index">
      <!--header-->
      <div class="header">
          <p class="lf" v-if="!uname">
              亲爱的玩家，请
              <a href="#" class="active" @click.prevent="loginFunc(true,'login')">登录</a>
          </p>
          <p class="lf" v-else>
              欢迎回来 <a href="#">{{uname}}</a>
              <a href="#" class="active" @click.prevent="$emit('logout')">退出</a>
          </p>
          <ul class="rt">
              <li>
                  <a href="#/index">首页</a>
              </li>
              <li>
                  <a href="#/new">新闻</a>
              </li>
              <li>
                  <a href="#/index">游戏印象</a>
              </li>
              <li>
                  <a href="#/index">新手指南</a>
              </li>
              <li>
                  <a href="#/forum">论坛客服</a>
              </li>
          </ul>
      </div>
      <!--内容1200px-->
      <div class="content">
          <div class="logo">
              <a href="#/index"></a>
              <br/>
              <img src="../../assets/img/index/slogan-n2.png" alt="">
              <a href="#" class="video"></a>
              <p class="video"></p>
          </div>
          <div class="carousel">
              <div class="left lf">
                  <a href="#"></a>
                  <a href="#"> 
                      <i></i><span>注册账号</span>  
                  </a>
                  <a href="#"> 
                      <i></i><span>账号激活</span>  
                  </a>
                  <a href="#"> 
                      <i></i><span>游戏下载</span>  
                  </a>
              </div>
              <div class="center lf">
                  <div v-if="isOfficial">
                      <img :class="{on:isFirst}"  src="../../assets/img/index/banner1.jpg" alt="">
                      <img :class="{on:!isFirst}"  src="../../assets/img/index/banner2.jpg" alt="">
                  </div>
                  <div v-else>
                      <img :class="{on:isFirst}" src="../../assets/img/index/banner3.jpg" alt="">
                      <img :class="{on:!isFirst}" src="../../assets/img/index/banner4.jpg" alt="">
                  </div>
                  <p>
                    <a href="#"  :class="{hover:isFirst}" @click.prevent="changeIsFirst(true)"></a>
                    <a href="#"  :class="{hover:!isFirst}" @click.prevent="changeIsFirst(false)"></a>
                  </p>
                  <ul>
                      <li :class="{hover:isOfficial}" @click="changeIsOfficial(true)">官方</li>
                      <li :class="{hover:!isOfficial}"  @click="changeIsOfficial(false)">合作</li>
                  </ul>
              </div>
              <div class="right lf">
                  <h4>
                      <ul>
                          <li @click="changeNewTitle(index)" :class="{on:index==nowNew}" v-for="(tmp,index) of newsTitle" :key="index">{{tmp}}</li>
                      </ul>
                      <span class="add"></span>
                      <p class="clear"></p>
                  </h4>
                  <h3><span></span><a href="#">重阳壁纸 | 登高赏秋 拦山河盛景</a></h3>
                  <ul>
                     <li v-for="(tmp,index) of news[nowNew]" :key="index">
                         <span class="lf">{{tmp.content}}</span>
                         <span class="rt">{{tmp.date}}</span>
                    </li> 
                  </ul>
              </div>
              <p class="clear"></p>
          </div>
          <div class="plotSetting">
              <div class="container">
                  <div :key="index" 
                        v-for="(tmp,index) of plotList" 
                        @mouseenter="mouseEvent($event,true)" 
                        @mouseleave="mouseEvent($event,false)"
                        @click="linkToPlot(tmp[2])">
                    <img :src="require('../../assets/'+tmp[0])" alt="">
                    <img :src="require('../../assets/'+tmp[1])" alt="">
                  </div>
              </div>    
          </div>
          <div class="menpai">
              <div class="left">
                  <ul>
                      <li v-for="(tmp,index) of menpaiList[0]" 
                        :key="index"
                        :class="{hover:index==menpai}"
                        @click="changeMenpai(index)"
                      >
                      {{tmp}}
                      </li>
                  </ul>
                  <div>
                    <img :src="require('../../assets/'+menpaiList[1][menpai])" alt="">
                  </div>
              </div>
              <div class="right">
                  <ul>
                      <li v-for="tmp of 6" 
                      :key="tmp" 
                      :class="{on:tmp==role.list}"
                      @click="changeRole(tmp)">
                      </li>
                  </ul>
                  <div>
                      <img :src="require('../../assets/'+roleList.img[role.list-1][2])">
                      <p>{{roleList.word[role.list-1]}}</p>
                      <a href="#">更多&gt;</a>
                      <p>【难度】：</p>
                      <p>【天赋】：</p>
                      <button :class='{on:role.gender==0}' @click='changeRoleGender(0)'>男</button><button @click='changeRoleGender(1)' :class='{on:role.gender==1}'>女</button>
                  </div>
                  <img v-if="role.gender==0" :src="require('../../assets/'+roleList.img[role.list-1][0])">
                  <img v-else :src="require('../../assets/'+roleList.img[role.list-1][1])">
              </div>
          </div>
          <div class="writing">
              <div class="left">
                  <h3>
                      <span></span>
                      <span>同人作品</span>
                      <span class="add"></span>
                  </h3>
                  <ul>
                      <li v-for="(tmp,index) of writing" :key="index">
                          <img :src="require('../../assets/'+tmp)" alt="">
                      </li>
                  </ul>
              </div>
              <div class="right">
                   <h3>
                      <span></span>
                      <span>视频</span>
                  </h3>
                  <div>
                      <img src="../../assets/img/index/video1.png" alt="">
                      <a href="#" class="video"></a>
                      <p class="video"></p>
                  </div>
              </div>
          </div>
          <div class="wechat">
              <div>
                  <p></p>
                  <span>官方微信</span> 
              </div>
              <div>
                  <p></p>
                  <span>官方微博</span> 
              </div>
              <p>客服电话：0756-8888888</p>
          </div>
      </div>
      
      <!--尾部-->
      <div class="footer">
          <div class="prize">
              <div></div>
              <div></div>
          </div>
          <div class="parter">
              <div></div>
              <div>
                  <img v-for="(tmp,index) of parter" :key="index" :src="require('../../assets/'+tmp)" alt="">
              </div>
          </div>
          <footer-about></footer-about>
      </div>
  </div>
  
</template>
<script>
import FooterAbout from '../footer/footer'
    export default{
        props:["loginFunc","uname","logout"],
        components:{'footer-about':FooterAbout},
        data:function(){
            return {
                //小轮播
                isOfficial:true,
                isFirst:true,
                timer:null,
                //新闻模块
                nowNew:0,
                newsTitle:["最新","新闻","公告","攻略","媒体"],
                news:[
                    [
                        {content:"【最新】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【最新】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【最新】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【最新】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【最新】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"}
                    ],
                    [
                        {content:"【新闻】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【新闻】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【新闻】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【新闻】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【新闻】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"}
                    ],
                    [
                        {content:"【公告】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【公告】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【公告】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【公告】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【公告】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"}
                    ],
                    [
                        {content:"【攻略】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【攻略】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【攻略】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【攻略】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【攻略】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"}
                    ],
                    [
                        {content:"【媒体】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【媒体】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【媒体】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【媒体】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"},
                        {content:"【媒体】“人为财死，鸟为食亡，我其实是个鸟人” 古剑OL“吃货”大盘点",date:"10-19"}
                    ]
                ],
                plotList:[
                    ["img/index/01.png","img/index/001.png","inhert"],
                    ["img/index/02.png","img/index/002.png","Sjg"],
                    ["img/index/03.png","img/index/003.png","drama"],
                    ["img/index/04.png","img/index/004.png","project"],
                    ["img/index/05.png","img/index/005.png","heros"]
                ],
                menpai:0,
                menpaiList:[
                    ['门派','场景','剧情','战斗','玩法','传承'],
                    ["img/index/feature1.png","img/index/feature2.png","img/index/feature3.png","img/index/feature4.png","img/index/feature5.png","img/index/feature6.png"]
                ],
                role:{
                    list:1,
                    gender:0
                },
                roleList:{
                    img:[
                        ["img/index/role1-boy.jpg","img/index/role1-girl.jpg","img/index/role_01.png"],
                        ["img/index/role2-boy.jpg","img/index/role2-girl.jpg","img/index/role_02.png"],
                        ["img/index/role3-boy.jpg","img/index/role3-girl.jpg","img/index/role_03.png"],
                        ["img/index/role4-boy.jpg","img/index/role4-girl.jpg","img/index/role_04.png"],
                        ["img/index/role5-boy.jpg","img/index/role5-girl.jpg","img/index/role_05.png"],
                        ["img/index/role6-boy.jpg","img/index/role6-girl.jpg","img/index/role_06.png"]
                    ],
                    word:[
                        "天罡夜枕绿沉枪， 敌血尚温金甲凉。 明朝与子同穴死， 再托魂梦寄故乡。",
                        "来则斩风去擎苍， 醉眼何曾侧侯王。 一壶乾坤八千梦， 卧看青山入斜阳。",
                        "朝往昆仑御剑游， 暮观沧海自东流。 不求无为证大道， 且与苍生共白头。",
                        "无边妙法何处求， 蓬山倾倒白云头。 琴心只共松月老， 红尘白雪赏春秋。",
                        "造化司命开鸿蒙， 驱鸾凰兮驭飞虹。 谁踏千劫出万壑， 便乘长风补苍穹。",
                        "咒隐通幽访灵都， 千魂万魄入洪炉。 誓将此身临泉壤， 再化孤月照三途。"
                    ]
                },
                writing:[
                    "img/index/tr1-3.jpg","img/index/tr2-2.jpg","img/index/tr3-2.jpg","img/index/tr4-2.jpg","img/index/tr5-3.jpg"
                ],
                parter:[
                    'img/index/logo02.png','img/index/logo03.png','img/index/logo04.png','img/index/logo05.png','img/index/logo06.png','img/index/logo07.png',
                    'img/index/logo08.png','img/index/logo09.png','img/index/logo10.png','img/index/logo11.png','img/index/logo12.png','img/index/logo13.png',
                    'img/index/logo14.png','img/index/logo15.png','img/index/logo16.png','img/index/logo17.png','img/index/logo18.png','img/index/logo19.png',
                ]
            }
        },
        mounted:function(){
            this.timer=setInterval(()=>{
                this.isFirst=!this.isFirst
            },3000)
        },
        methods:{
            mouseEvent:function(e,isEnter){
                //鼠标进入翻转动画效果
                if(isEnter){
                    e.target.className="run"
                }else{
                    e.target.className=""
                }
            },
            linkToPlot(url){
                if(url==="Sjg"){
                    location.href="http://gjol.yy.com/s/sjg.html"
                }else if(url==="drama")
                    location="http://gjol.yy.com/s/jqz.html"
                //传入跳转路径
                else this.$router.push('/'+url)
            },
            changeMenpai(index){
                //门派列表点击切换事件
                this.menpai=index;
            },
            changeRole(tmp){
                //点击切换不同角色
                this.role.list=tmp;
            },
            changeRoleGender(num){
                this.role.gender=num;
            },
            changeNewTitle(index){
                this.nowNew=index
            },
            changeIsOfficial(res){
                this.isOfficial=res;
            },
            changeIsFirst(msg){
                this.isFirst=msg
            }
        }
    }
</script>
<style scoped>

  .index{
    background:url(../../assets/img/index/bg.jpg) no-repeat;
  }
 /* 头部 */
    .index .header{
        width:100%;
        height:53px;
        line-height: 53px;
        color: #133d55;
        padding-left:200px;
        background:url(../../assets/img/index/sprite.png) -834px -129px;
    }
    .header>ul>li{
        float: left;
        width:90px;
    }
/* 内容主体 */
    .content>.logo{
        position: relative;
        width:1200px;
         margin:0 auto;
    }
    .content>.logo>a:first-child{
        display:inline-block;
        width:235px;
        height:140px;
        background:url(../../assets/img/index/sprite.png) -917px -389px;
        margin:65px 0 0 165px;
    }
    a.video{
        display: block;
        width:60px;
        height: 61px;
        background:url(../../assets/img/index/sprite.png) -715px -618px;
        position: absolute;
        animation: rotate 2s linear  infinite ;
        z-index: 2;
    }
    p.video{
        width:22px;
        height: 25px;
        background:url(../../assets/img/index/sprite.png) -2281px -528px;
        position: absolute;  
        /* z-index: -1; */
    }
    .content>.logo>a.video{
        top:230px;
        left:509px;
    }
    .content>.logo>p.video{
        top:248px;
        left:532px;
    } 
/*旋转动画*/
    @keyframes rotate {
        0%{
            transform: rotate(0deg)
        }
        100%{
            transform: rotate(360deg)
        }
    }
    @keyframes move {
        0%{
            left:0px;
        }
        100%{
             left:5px;
        }
    }
/* 动画轮播栏 */
    .carousel{
        width:1200px;
        margin:0 auto;
        margin-top:150px;
    }
    .carousel>.left>a:first-child{
        display:block;
        background:url(../../assets/img/index/sprite.png) -397px -389px;
        width:240px;
        height:119px;
        margin-top:2px;
    }
    .carousel>.left>a:not(:nth-child(1)){
        display:block;
        background:url(../../assets/img/index/sprite.png) -1457px -268px;
        width:240px;
        height:49px;
        margin-top:2px;
        text-align:center;
        line-height: 49px;
        color:#fff;
    }
    .carousel>.left>a>i{
        display:inline-block;
        vertical-align:middle;
        margin-right:10px;
         background-image:url(../../assets/img/index/sprite.png)
    }
    .carousel>.left>a:nth-child(2)>i{   
        width:35px;
        height: 27px;
        background-position:  -2285px -389px;      
    }
    .carousel>.left>a:nth-child(3)>i{
        width:33px;
        height: 38px;
        background-position:  -2081px -528px;
    }
    .carousel>.left>a:nth-child(4)>i{
        width:39px;
        height:35px;
        background-position:  -2226px -389px;
    }
    /* 中间轮播 */
    .carousel>.center{
        width:565px;
        height:272px;
        margin:2px 10px 0px;
        position: relative;
    }
    .carousel>.center>div{
        position: relative;
    }
    /*轮播图片设置*/
    .carousel>.center>div>img{
        position: absolute;
        top:0;
        left:0;
        opacity: 0;
    }
    .carousel>.center>div>img.on{
        opacity: 1;
        transition:1s linear;
    }
    /*官方、合作*/
    .carousel>.center>ul{
        position: absolute;
        top:0;
        right:0;
    }
    .carousel>.center>ul>li{
        width:30px;
        color:#fff;
        background:#05415b;
        padding:8px;
        cursor: pointer;
    }
    .carousel>.center>ul>li:hover,.carousel>.center>ul>li.hover{
        background:#fcc77c
    }
    /*小圆点*/
    .carousel>.center>p{
        position: absolute;
        right: 10px;bottom:10px;
    }
    .carousel>.center>p>a{
        display: inline-block;
        width:14px;
        height:14px ;
        transform: rotate(45deg);
        background:#fff;
        margin-right:10px;
        border:2px solid #fff;
    }
    .carousel>.center>p>a:hover,.carousel>.center>p>a.hover{
        background:#fcc77c;
    }
    .carousel>.right{
        margin-top:2px;
        width:373px;
        height:272px;
        background: #ffffff;
        opacity: 0.9;
        padding:10px;
        color:#646464;
    }
    .carousel>.right>h4 li{
        float: left;
        margin-right:20px;
        cursor: pointer;
    }
    .carousel>.right>h4 li:hover,.carousel>.right>h4 li.on{
        color:#fcc77c;
    }
    .carousel>.right>h4{
        padding:10px 10px 10px 20px;
        border-bottom:1px solid #ececec;
    }
    .carousel>.right>h3{
        padding:10px;
    }
    .carousel>.right>h3>span{
        display: inline-block;
        width:17px;
        height: 17px;
        background:url(../../assets/img/index/sprite.png) -1761px -300px;
        margin-right:8px;
        vertical-align: middle;
        position: relative;
        left:0px;
        top:-1px;
    }
    .carousel>.right>h3>span:hover{
        animation:move .5s linear infinite ;
    }
    .carousel>.right>ul{
        padding-right:10px;
    }
    .carousel>.right>ul span.lf{
        display: inline-block;
        width:300px;
        white-space:nowrap;
        text-overflow:ellipsis;
        overflow:hidden;
        margin-bottom:12px;
    }
    .carousel>.right>ul span.rt{
        color:#a8a8a8;
    }
/* 剧情 */
    .plotSetting{
        /* width:1920px; */
        height: 344px;
        margin-top:20px;
        background:url(../../assets/img/index/sellPoint-bg.jpg) no-repeat center center;
    }
    .plotSetting>.container{
        width:1200px;
        margin:0 auto;
    }
    .plotSetting>.container>div{
        width:240px;
        height:344px;
        position: relative;  
        float:left;   
        
    }
    .plotSetting>.container>div>img{
        position: absolute;
        top:0px;
        left:0px;
        overflow: hidden;
        backface-visibility:hidden;
        transition:all .3s ease-in-out;  
    }
    .plotSetting>.container>div>img:nth-child(1){
        transform: rotateY(90deg);
    }
    .plotSetting>.container>div.run>img:nth-child(2){
        transform: rotateY(180deg);
        perspective: 2000px;
    }
    .plotSetting>.container>div.run>img:nth-child(1){
        transform: rotateY(360deg);
        perspective: 2000px;
    }

/* 门派 */
    .menpai{
        width:1200px;
        height:380px;
        margin:20px auto 0px;
    }
 /* 门派左 */
    .menpai>.left{
        width:814px;
        height: 369px;
        background:url(../../assets/img/index/sprite.png);
        overflow: hidden;
        float: left;
    }
    .menpai>.left>ul{
        float:left;
    }
    .menpai>.left li{
        width:88px;
        height: 30px;
        font-size:12px;
        color:#f1b663;
        border:1px solid #f1b663;
        border-radius: 0px 30px 30px 0px;
        margin-top:20px;
        margin-left:-1px;
        text-align:center;
        line-height:30px;
        cursor: pointer;
        transition: all .3s ease-in-out;
    }
    .menpai>.left li:hover{
        font-size: 14px;
        width:98px;
    }
    .menpai>.left li.hover{
        background:#f1b663;
        color:#fff;
        font-size: 14px;
        width:98px;
    }
    .menpai>.left>div{
        float:right;
        margin:10px 10px 0 0;
    }
 /* 门派右 */
    .menpai>.right{
        width:377px;
        height: 369px;
        /* margin-left:10px; */
        position: relative;
        float:right;
    }
    .menpai>.right>ul{
        float: left;
        margin-right:20px;
        margin-left:10px;
        position: relative;
        z-index: 100;
    }
    .menpai>.right>ul>li{
        width:43px;
        height: 43px;
        margin-top:15px;
        background:url(../../assets/img/index/sprite.png) no-repeat;
        
    }
    .menpai>.right>ul>li:nth-child(1){
        background-position:-1955px -528px;
    }
    .menpai>.right>ul>li:nth-child(1).on{
        background-position:-1892px -528px;
    }
    .menpai>.right>ul>li:nth-child(2){
        background-position:-1703px -528px;
    }
    .menpai>.right>ul>li.on:nth-child(2){
        background-position:-1829px -528px;
    }
    .menpai>.right>ul>li:nth-child(3){
        background-position:-1451px -528px;
    }
    .menpai>.right>ul>li.on:nth-child(3){
        background-position:-1514px -528px;
    }
    .menpai>.right>ul>li:nth-child(4){
        background-position:-1577px -528px;
    }
    .menpai>.right>ul>li.on:nth-child(4){
        background-position:-1325px -528px;
    }
    .menpai>.right>ul>li:nth-child(5){
        background-position:-1640px -528px;
    }
    .menpai>.right>ul>li.on:nth-child(5){
        background-position:-2018px -528px;
    }
    .menpai>.right>ul>li:nth-child(6){
        background-position:-1388px -528px;
    }
    .menpai>.right>ul>li.on:nth-child(6){
        background-position:-1766px -528px;
    }
    .menpai>.right>div{
        margin-top:15px;
        float: left;
        position: relative;
        z-index: 100;
    }
    .menpai>.right>div>p{
        width:120px;
        color:#656565;
        margin-top:10px;
        margin-bottom: 10px;
    }
    .menpai>.right>div>a{
        display: inline-block;
        width:54px;
        height: 25px;
        line-height:25px;
        text-align: center;
        border:1px solid #fcc77c;
        color:#fcc77c;
        margin-bottom: 20px;
    }
    .menpai>.right>div>a:hover,.menpai>.right>div>button:hover{
        background:#fcc77c;
        color:#fff;
    }
    .menpai>.right>div>img{
        height:79px;
    }
    .menpai>.right>div>button{
        width:40px;
        height: 20px;
        line-height:20px;
        text-align: center;
        border:1px solid #fcc77c;
        color:#fcc77c;
        padding:0;
        background:rgba(253,253,253,0.1);
        outline: none;
    }
    .menpai>.right>div>button.on{
        background:#283F4D;
        color:#fff;
        border:1px solid #283F4D;
    }
    .menpai>.right>img{
        position:absolute;
        top:0;
        left:0;
    }
/*同人作品*/
    .writing{
        width:1200px;
        height: 390px;
        margin:0 auto;
    }
    .writing>.left{
        width:814px;
        height: 390px;
        padding:20px;
        background:#fff;
        float: left;
    }
    .writing h3{
        padding-bottom: 10px;
        border-bottom:1px solid #ececec;
    }
    .writing>.left>h3>span:nth-child(1){
        float: left;
        display: block;
        width:15px;
        height:15px;
        margin-right:10px;
        margin-top:5px;
        background:url(../../assets/img/index/sprite.png) -1319px -338px; 
    }
    span.add{
        float: right;
        display: block;
        width:21px;
        height:21px;
        background:url(../../assets/img/index/sprite.png) -2387px -389px;
        transition:all .5s ease-in-out; 
        cursor: pointer;
    }
    span.add:hover{
        transform: rotate(180deg)
    }
    .writing>.left>ul{
        margin-top:25px;
    }
    .writing>.left>ul>li:nth-child(1){
        width:248px;
        height: 273px;
        overflow: hidden;
    }
    .writing>.left>ul>li:not(:nth-child(1)){
        width:247px;
        height: 132px;
        overflow: hidden;
    }
    .writing>.left>ul>li{
        float: left;
        margin-right:10px;
        margin-top:8px;
        background:#000;
    }
    .writing>.left>ul>li>img{
        opacity: .5;
        transition: all .5s ease-in-out;
    }
    .writing>.left>ul>li>img:hover{
        opacity: 1;
        transform: scale(1.1);
    }
    .writing>.right{
        width:377px;
        height: 390px;
        padding:20px;
        background:#fff;
        float:right;
    }
    .writing>.right>h3>span:nth-child(1){
        float: left;
        display: block;
        width:24px;
        height:17px;
        margin-right:10px;
        margin-top:5px;
        background:url(../../assets/img/index/sprite.png) -1717px -300px;
    }
    .writing>.right>div{
        width:346px;
        height: 273px;
        /* background:#000; */
        margin-top:34px;
        position: relative;
    }
    .writing>.right>div>a.video{
        top:113px;
        left:130px;
    }
    .writing>.right>div>p.video{
        top:130px;
        left:152px;
    } 
/*官方微信*/
    .wechat{
        margin:35px auto;
         width:350px; 
    }
    .wechat>div:nth-child(1){
        float: left;
        text-align: center;   
    }
    .wechat>div:nth-child(2){
        float: right;
        text-align: center;   
    }
    .wechat>div>p{
        width:139px;
        height:152px;
        background:url(../../assets/img/index/sprite.png);
    } 
    .wechat>div:nth-child(1)>p{
        background-position:-556px -528px;
    }  
    .wechat>div:nth-child(2)>p{
        background-position: -397px -528px;
    }  
    .wechat>p{
        clear:both;
        text-align:center;
        padding-top:20px;
    }
/*游戏底部*/
    .footer{
        width:100%;
        background:#fff;
        padding:30px;
    }
    .footer .prize>div:first-child{
        width:119px;
        height: 37px;
        background:url(../../assets/img/index/sprite.png) -2087px -389px;
        margin:20px auto;
    }
    .footer .prize>div:nth-child(2){
        width:603px;
        height: 50px;
        background:url(../../assets/img/index/sprite.png) -834px -268px;
        margin:20px auto;
    }
    .footer .parter>div:first-child{
        width:120px;
        height: 37px;
        background:url(../../assets/img/index/sprite.png) -1947px -389px;
        margin:20px auto;
    }
    .footer .parter>div:nth-child(2){
        width:960px;
        margin:0  auto;
        display: flex;
        flex-wrap: wrap;
    }
    .footer .parter>div>img{
        margin:10px 10px 0 0;
    }
    .footer .parter {
        margin-bottom: 100px;
    }
</style>
