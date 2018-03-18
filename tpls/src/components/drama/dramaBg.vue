<template>
  <div class="loading" v-if="stape!=100">
        <div class="loadingOne">
            <div class="loadingPic">
                <div class="loadingPic1"></div>
                <div class="loadingPic2"></div>
                <p>{{stape}}%</p>
            </div>
            <p>古剑奇谭即将揭秘！loading>>><span v-if="isShow==0">>>></span>
            </p>
        </div>
    </div>
</template>
<script>
    export default{
        data:function(){
            return {
                stape:0,//进度数
                isShow:0//是否展示
            }
        },
        mounted:function(){
            var timer=setInterval(()=>{
                this.stape++;
                if(this.isShow==0){
                    this.isShow=1;
                }else{this.isShow=0;}
                if(this.stape==100){
                    console.log(this.isShow);
                    clearInterval(timer);
                }
            },300)
        }
    }
</script>
<style scoped>
    div.loading{
        width:100%;min-width:1910px;
        height:100%;min-height:976px;
        background-color:#1E1B1A;opacity:0.7;
        position: absolute;
    }
    div.loading div.loadingOne{
        width:300px;height: 300px;
        position:absolute;top:300px;left:500px;
        text-align:center;
    }
    div.loading div.loadingOne div.loadingPic{
        width:150px;height:150px;
        position: relative;
        border:1px solid #000;
        border-radius:50%;
        margin:0 auto;
        margin-top:40px;margin-bottom:40px;
    }
    div.loading div.loadingOne>p{
        text-align:left;margin-left:50px;
    }
    @keyframes bubbles{
        0%{
           width:160px;height:160px;
           top:-6px;left:-6px; 
        }
        100%{
            width:180px;height:180px;
            top:-16px;left:-16px;
        }
    }
    div.loading div.loadingOne div.loadingPic div.loadingPic1{
        position:absolute;
        width:160px;height:160px;
        top:-6px;left:-6px; 
        border:1px dashed #000;
        border-radius:50%;
        animation:bubbles 6s linear 0s infinite normal;
    }
    div.loading div.loadingOne div.loadingPic div.loadingPic2{
        position:absolute;
        border:1px dashed #000;
        border-radius:50%;
        animation:bubbles 3s linear 2s infinite normal;
    }
    div.loading div.loadingOne div.loadingPic>p{
        font-size:20px;margin-top:55px;
    }
</style>
