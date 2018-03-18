<template>
  <div id="app">
    <login v-if="isShow" 
    :loginFunc="handleLogin" 
    :isLogin="info" 
    :loginSuc="loginSuc"
    :changeIsLogin='changeIsLogin'
    ></login>
    <!-- <img src="./assets/logo.png"> -->
    <router-view 
    :loginFunc="handleLogin" 
    :isLogin="info"
    @logout="logout"
    :uname="username"></router-view>
  </div>
</template>

<script>
import LoginComponent from '@/components/login_register/login'
export default {
  name: 'app',
  data:function(){
      return {
          isShow:false,
          info:"login",
          username:''
      }
  },
  components:{
      'login':LoginComponent
  },
  methods:{
      handleLogin:function(msg,method){
        //   console.log(msg,method)
          this.isShow=msg;
          this.info=method
      },
      loginSuc:function(msg){
        this.username=msg;
        // console.log(this.username)
      },
      logout:function(){
          this.$http.get("http://localhost:3000/logout",{ 
                            withCredentials: true  //打开cookie
                        })
          .then((res)=>{
             // console.log(res)
             if(res.body.status=='ok'){
                 this.username=''
             }
          })
      },
      changeIsLogin:function(msg){
        this.info=msg
      },
      isLogin:function(){
          this.$http.get("http://localhost:3000/isLogin",{ 
                            withCredentials: true  //打开cookie
                        })
          .then((res)=>{
             // console.log(res)
             if(res.body.username){
                 this.username=res.body.username
             }
          })
      }
  }
}
</script>

<style>
/* #app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
} */
*{
  box-sizing: border-box;
}

  body,div {
    font:14px/1.5 microsoft Yahei,Verdana,Arial,Helvetica,sans-serif;
    margin: 0px;
    padding: 0px;
}
a,a:hover{
    text-decoration: none;
}
input:focus{
    outline: 0;
}
a {
    color: #133d55;
}
a:hover,a.active{
    color:#fcc779;
}
a:focus{
	color:#0aa1ed;
}
ul, li, p, h1, h2, h3, h4, h5, h6, dl, dt, dd {
    margin: 0px;
    padding: 0px;
    border: none;
    list-style: none;
}
input {
    border: none;
}
.lf {
    float: left;
}
.rt {
    float: right;
}
.clear {
    clear: both;
}
</style>
