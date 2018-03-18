const express=require("express");
const mysql=require("mysql");
const bodyParser=require("body-parser");
const path=require("path")
const session=require("express-session");
const cookieParser=require("cookie-parser");


let pool=mysql.createPool({
	user:"root"
})

let app=new express();
//ÅäÖÃcors¿çÓò
app.all('*', function(req, res, next) {  
    res.header('Access-Control-Allow-Origin', "http://localhost:8080");
	res.header('Access-Control-Allow-Credentials', true); 
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");  
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");  
    res.header("X-Powered-By",' 3.2.1');
    res.header("Content-Type", "application/json;charset=utf-8");  
    next();  
}); 
//ÅäÖÃÖĞ¼ä¼ş
app.use(bodyParser.json());
app.use(cookieParser());
app.use(session({
	resave:false,
	saveUninitialized:true,
	secret:"web1708"
}))

app.get("/",(req,res)=>{
	res.end("hello,hi")
})

app.post("/login",(req,res)=>{
	let uname=req.body.username;
	let upwd=req.body.password;

	let sql="SELECT * FROM gjqt.user WHERE uname=? AND upwd=md5(?)";
	pool.query(sql,[uname,upwd],(err,results)=>{
		if (err) throw err;
		if (results.length>=1){
			req.session.uid=results[0].uid
				//console.log(results[0].uname)
			res.send({"status":"ok","username":results[0].uname})
		}else{
			res.send({"status":"err"})
		}
	})

})

app.post("/register",(req,res)=>{
	let uname=req.body.username;
	let upwd=req.body.password;
	let sql="INSERT INTO gjqt.user(uname,upwd) VALUES(?,md5(?))";
	pool.query(sql,[uname,upwd],(err,results,fields)=>{
		if(err) throw err;
		//console.log(results)
		console.log(2)
		if(results.affectedRows==1){
			res.send({"status":"ok"})
		}else{
			res.send({"status":"err"})
		}
	})	
})

app.get("/logout",(req,res)=>{
	//console.log(req.session.uid)
	req.session.uid=null;
	res.send({"status":"ok"})
})

app.get("/isLogin",(req,res)=>{
	console.log(req.session.uid)
	if(req.session.uid){
		let sql="SELECT uname FROM gjqt.user WHERE uid=?";
		pool.query(sql,[req.session.uid],(err,results,fields)=>{
			if(err) throw err;
			if(results.length>=1){
				res.send({"username":results[0].uname})
			}
		})	
	}
})

app.listen(3000);

