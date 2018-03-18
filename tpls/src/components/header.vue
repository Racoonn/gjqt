<template>
  <div class="header">
    <a href="#/index" class="btn_gw">游戏官网</a>
    <a href="#" class="btn_music"></a>
    <span>|</span>
    <span>分享到：</span>
    <a href="#" title="分享到QQ空间" class="btn_share qq"></a>
    <a href="#" title="分享到新浪微博" class="btn_share xl"></a>
    <a href="#" title="分享到腾讯微博" class="btn_share tx"></a>
    <a href="#" title="分享到微信" class="btn_share wx"></a>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
    .header{
        width:1100px;
        height:60px;
        line-height: 60px;
        margin:10px auto 30px;
        text-align: right;
        position: relative;
        z-index: 1000;
        color:#a47f25;
    }
    a{
        display: inline-block;
        color:#a47f25;
    }
    .btn_gw{
        width:80px;
        height:22px;
        background:url(../assets/header.png) no-repeat 0 -89px;
        line-height:22px;  
        
    }
    .btn_music{
        width:20px;
        height:20px;
        background:url(../assets/index_z1.png) no-repeat -4px 0;
        line-height:19px;  
        vertical-align: middle;
        margin:0 10px;
    }
    .btn_share{
        width:23px;
        height:19px;
        background:url(../assets/header.png) no-repeat;
        margin-right:3px;
        line-height: 19px;
        vertical-align: middle;
    }
    .qq{
        background-position: -183px -91px;
    }
    .xl{
        background-position: -206px -91px;
    }
    .tx{
        background-position: -230px -91px;
    }
    .wx{
        background-position: -159px -91px;
    }
</style>


