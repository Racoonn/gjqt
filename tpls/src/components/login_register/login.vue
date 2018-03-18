<template>
  <div class="login">
      <div>
          <img class="lf" src="../../assets/img/lgnzopn.jpg" alt="">
          <div class="right rt">
              <a href="#" @click="loginFunc(false)"></a>
              <h2>账号{{isLogin=="login"?"登录":"注册"}}</h2>
              <p>
                  <input v-model="username" type="text" placeholder="账号">
              </p>
              <p>
                  <input v-model="password" type="password" placeholder="密码" >
              </p>
            
              <p class="checkbox" v-if="isLogin=='login'">
                  <input type="checkbox"><span>1周内自动登录</span>
              </p>
              <p v-else>
                  <input type="password" placeholder="重复密码" v-model="cpwd">
              </p>
              <button @click="clickHandle">{{isLogin=="login"?"登录":"注册"}}</button>
              <p class="warn">{{showMsg}}</p>
              <p>
                  <a href="#"  @click="changeIsLogin('login')">{{isLogin=="login"?"找回密码":"直接登录"}}</a>
                  |
                  <a href="#" @click="changeIsLogin('register')">注册账号</a>
              </p>
          </div>
      </div>
  </div>
</template>
<script>
    export default{
        props:["loginFunc",'isLogin',"loginSuc",'changeIsLogin'],
        data:function(){
            return {
                info:["登录","注册"],
                username:"",
                password:"",
                cpwd:"",
                showMsg:""
            }
        },
        created:function(){
            //判断是否登录
        },
        methods:{
            clickHandle:function(){
                //console.log(1)
                if(this.isLogin=="register"){//注册
                    if(!this.username||!this.password||!this.cpwd){
                        this.showMsg="请将信息填写完整"
                    }else if(this.password!==this.cpwd){
                        this.showMsg="两次密码不一致"
                    }else{
                        //发送请求
                        console.log("register")
                         this.$http.post("http://localhost:3000/register", {
                            username: this.username, 
                            password: this.password
                        }).then( res => {
                            console.log(res);
                            if(res.body.status=="ok"){
                                alert("注册成功")
                                this.changeIsLogin('login')
                            }
                        }).catch( error => {
                            console.log(error);
                        });
                    }
                }else{//登录
                    if(!this.username||!this.password){
                        this.showMsg="请将信息填写完整"
                    }else{
                        //发送请求
                        //console.log("login")
                        this.$http.post("http://localhost:3000/login", {
                            username: this.username, 
                            password: this.password
                        },{ 
                            withCredentials: true  //打开cookie
                        }).then( res => {
                           // console.log(res);
                            if(res.body.status=="ok"){
                                alert("登录成功")
                                this.loginFunc(false);
                                this.loginSuc(this.username)
                            }else{
                                this.showMsg="账号或密码错误，请重试！"
                            }
                        }).catch( error => {
                            console.log(error);
                        });
                    }
                }
            }
        }
    }
</script>
<style scoped>
    .warn{
        margin-top:10px;
        color:#133d55;
    }
    .login{
        width:100%;
        height:100%;
        background:rgba(0,0,0,0.2);
        position: fixed;
        top:0;
        left:0;
        z-index: 1000;
    }
    .login>div{
        width:540px;
        margin:100px auto;
    }
    .login div.right{
        width:376px;
        height:300px;
        padding:20px;
        position: relative;
        background:#fff;
    }
    .login div.right>a{
        display: inline-block;
        width:14px;
        height:10px;
        background:url(../../assets/img/sdk_02.png);
        position:absolute;
        top:10px;
        right:10px;
    }
    .login div.right>h2{
        font-weight: normal;
        margin-bottom:15px;
    }
    .login div.right>p{
        height:40px;
    }
    .login div.right input{
        width:280px;
        height:30px;
        border:1px solid #ccc;
        padding-left: 10px;
    }
    .login div.right>.checkbox>input{
        width:13px;
        height:13px;
    }
    .login div.right>.checkbox>span{
        font-size: 12px;
    }
    .login div.right button{
        width:120px;
        height:40px;
        line-height: 40px;
        text-align: center;
        font-size:18px;
        background:#63AEE6;
        border:1px solid #2C86CD;
        border-radius: 4px;
        color:#fff;
    }
    .login div.right>p:last-child{
        position: absolute;
        width:350px;
        height: 38px;
        line-height: 38px;
        text-align: right;
        bottom:0px;
        right: 10px;
        border-top:1px solid #ccc;
    }
</style>
