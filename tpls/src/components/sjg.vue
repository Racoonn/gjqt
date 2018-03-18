<template>
  <div id="bgColor">
    <div>
      <router-view></router-view>
      <div id="daohang">
        <i class="booking"></i>
        <a href="#">立即抢码</a>
        <i class="download"></i>
        <a href="#">进入官网</a>
      </div>
      <div id="nav">
        <ul>
          <li class="item" @click="$router.push('/shouye')">
            <i class="icon" ></i>
            <br/>
            <span>首页</span>
          </li>
          <li class="dots"></li>
          <li class="item" @click="$router.push('/taigu')">
            <span>
              太古 <br/>
              记事
            </span>
          </li>
          <li class="dots"></li>
          <li class="item" @click="$router.push('/renjian')">
            <span>
              人间 <br/>剑史
            </span>
          </li>
          <li class="dots"></li>
          <li class="item" @click="$router.push('/qinling')">
            <span>
              秦陵 <br/>之盟
            </span>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'sjg'
 
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
#daohang{
  background:url('../assets/img/index_z.png') no-repeat scroll 212px 895px;
  width:288px;
  height: 37px;
  line-height: 37px;
  position:fixed;
  top:45px;
  right: 70px;
  text-align: center;
  letter-spacing: 4px;
  border:1px solid #ac9472;
  border-radius: 15px;
}
#daohang .booking{
  background:url('../assets/img/index_z.png') no-repeat scroll -488px -1023px;
  display: inline-block;
  width:12px;
  height:12px;
  vertical-align: middle;
}
#daohang .download{
  background:url('../assets/img/index_z.png') no-repeat scroll -490px -1038px;
  display: inline-block;
  width:10px;
  height:11px;
  vertical-align: middle;
}
#nav{
  position: fixed;
  right: 20px;
  top: 50%;
  margin-top: -225px;
}
#nav li.item{
  background:url('../assets/img/index_z.png') no-repeat scroll -419px -103px;
  width: 81px;
  height: 81px;
  cursor: pointer;
  text-align: center;
  font-family: Microsoft YaHei;
  font-size: 16px;
  color: #fff7e7;
  position: relative;
  vertical-align: middle;
  display: table-cell;
}
#nav li.dots{
  background: url('../assets/img/index_z.png') no-repeat scroll -497px -271px;
  width:3px;
  height: 11px;
  margin-left:47%;
}
#nav i.icon{
  background:url('../assets/img/index_z.png') no-repeat scroll -482px -84px;
  display: block;
  width:18px;
  height: 16px;
  position: absolute;
  top:22px;
  left:50%;
  margin-left:-9px;

}
</style>
