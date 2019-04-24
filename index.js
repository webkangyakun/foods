//app_server_00/app.js
//0:下载mysql express模块
//1:引入二个模块 mysql express
const mysql = require("mysql");
const express = require("express");
//1.1 引入模块 cors
const cors = require("cors");
//
const bodyParser=require("body-parser");
const session = require("express-session");

//2:创建连接池 很大提高效率方法
var pool = mysql.createPool({
  host     : process.env.MYSQL_HOST,
  port     : process.env.MYSQL_PORT,
  user     : process.env.ACCESSKEY,
  password : process.env.SECRETKEY,
  database : 'app_' + process.env.APPNAME
});

//创建express对象
var server=express();
//配置允许访问列 脚手架8080
server.use(cors({
  origin:["http://127.0.0.1:8080",
  "http://localhost:8080"],
  credentials:true
}));
//配置session
server.use(session({
  secret:'128位随机字符串',
  resave:true,           //每次请求更新
  saveUninitialized:false ,  //初始化保存数据
  cookie:{
    maxAge:1000*60*60  //session对象存活
  },//不应响session
}))

//3.2 配置静态资源目录 public
server.use(express.static("public"));
//4:为express对象绑定监听端口 3000
server.listen(5050);
server.use(bodyParser.urlencoded({
  extended:false
}));

//home的f4
server.get('/hf',(req,res)=>{
  var sql='select * from food_hf';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});

//home的f5
server.get('/hfive',(req,res)=>{
  var sql='select * from food_hfive';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});

//about   top
server.get('/abo',(req,res)=>{
  var sql='select * from food_abone';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});
//about   two
server.get('/abt',(req,res)=>{
  var sql='select * from food_abtwo';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});

//menu    menum
server.get('/menum',(req,res)=>{
  var sql='select * from food_menum';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});

//menu   menums
server.get('/menums',(req,res)=>{
  var sql='select * from food_menums';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});

//menu menuyl
server.get('/menuyl',(req,res)=>{
  var sql='select * from food_menuyl';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});

//menu menuhb
server.get('/menuhb',(req,res)=>{
  var sql='select * from food_menuhb';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});

//detail
server.get('/detail',(req,res)=>{
  var sql='select * from food_detail';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});

//cart
server.get('/cart',(req,res)=>{
  var sql='select * from food_cart';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});

//用户点击添加购物车
server.get("/addCart",(req,res)=>{
  //alter table xz_cart add count INT;
  //update xz_cart set count=1;
  //var uid=1;

//拦截没有用户登录  修改
if(!req.session.uid){
  console.log(1)
    res.send({code:-1,data:[],msg:'请登录'});
     return;
}


   var id=req.query.id;
   var sql='select img,title from food_menums where id=? ';
   pool.query(sql,[id],(err,result)=>{
    if(err)throw err;
  console.log(result);
       console.log(result.length)
         if(result.length-1==0){
           var sql=`insert into food_cart values(null,'${result[0].img}','${result[0].title}',1)`;
          //  console.log(sql)
         }else{
           var sql=`update food_cart set count=count+1 where id =${id}`;  
         }
         console.log(sql);
         pool.query(sql,(err,result)=>{
          if(err) throw err;
          res.send({code:1,msg:'OK'});
        })      
 });
  // var sql='insert into xz_cart(id,uid,pid,pname,price,count) values(null,?)';
  // var sql ='update xz_cart set count=count+1 where uid = ? and pid=?';
});

//删除购物车中某个商品
server.post('/removeItem',(req,res)=>{
  var id=req.body.id;
  var sql="delete from food_cart where id=?";
  id=parseInt(id);
  pool.query(sql,[id],(err,result)=>{
    if(err)throw err;
    //执行SQL语句影响行数
    if(result.affectedRows>0){
      res.send({code:1,msg:"删除成功"});
    }else{
      res.send({code:-1,msg:'删除失败'});
    }
  })
})





//注册
server.get("/register",(req,res)=>{
  var zphone=req.query.zphone;
  var zpwd=req.query.zpwd;
  var email=req.query.email;
  var sql="insert into food_register values(null,?,?,?)"
  pool.query(sql,[zphone,zpwd,email],(err,result)=>{
    if(err) throw err;
  })
});


//用户登录
//1:用户get 请求路径/login
server.get("/login",(req,res)=>{
  //2:获取二个参数 uname upwd
  var zphone = req.query.lphone;
  var zpwd = req.query.lpwd;
  //3:创建sql
  var sql = "SELECT * FROM food_register where zphone=? and zpwd=?";
  console.log(sql)
  //4:执行sql
  pool.query(sql,[zphone,zpwd],(err,result)=>{
      if(err)throw err;
      console.log(result)
      //5:获取数据库返回结果
      //6:返回客户数据
      if(result.length==0){
        res.send({code:-1,msg:"用户名或密码有误"});
      }else{
        //登陆成功获取用户id保存到session对象中  修改
        var uid=result[0].id;
        req.session.uid=uid;
        res.send({code:1,msg:"登录成功"});

      }
  })
});

//添加评论
server.post("/addcomment",(req,res)=>{
  var title=req.body.comment;
  console.log(title);
  var sql=`insert into food_comment values (null,'http://127.0.0.1:3000/img/food-comment/uid1.jpg',?)`;
  pool.query(sql,[title],(err,result)=>{
       if(err)throw err;
       res.send({code:1,msg:'添加成功'})
  })
})

//加载评论
server.get('/getcomment',(req,res)=>{
  var pno=req.query.pno;
  var pageSize
  if(!pno){
    pno=1;
  }
  if(!pageSize){
    pageSize=3;
  }
  var sql=`select * from food_comment LIMIT ?,? `;
  var offset=(pno-1)*pageSize;
  pageSize=parseInt(pageSize);
  console.log(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err)throw err;
    res.send({code:1,data:result});
  })
})



//功能二:商品分页显示
//用户get 请求路径 /getProducts
server.get("/getProducts",(req,res)=>{
 //1:获取用户参数 pno pageSize
 var pno = req.query.pno;
 var pageSize = req.query.pageSize;
 //2:为参数设置默认值  pno:1 pageSize:4
 if(!pno){pno=1}
 if(!pageSize){pageSize=4}
 //3:创建sql语句
 var sql = "";
 sql+=" SELECT l.lid,l.lname,l.price,p.md";
 sql+=" from xz_laptop l,xz_laptop_pic p";
 sql+=" WHERE l.lid = p.laptop_id";
 sql+=" GROUP BY l.lid";
 sql+=" LIMIT ?,?";
 //3.1:计算开始记录数,几条记录  
 var offset = (pno-1)*pageSize;
 pageSize = parseInt(pageSize);
 //4:执行sql语句
 pool.query(sql,[offset,pageSize],(err,result)=>{
   if(err)throw err;
   res.send({code:1,data:result});
 //5:获取数据库返回结果并且发送脚手架
 })
});
//功能三:首页轮播图
server.get("/imglist",(req,res)=>{
  var sql='select * from food_lb';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});
//功能四:首页九宫格
server.get("/grid",(req,res)=>{
  var sql='select * from food_jgg';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  });
});
//功能五:新闻分页显示
server.get("/news",(req,res)=>{
  //*参数    pno 页码 pageSize 页大小
  var pno = req.query.pno;
  var pagSize = req.query.pageSize;
  //*默认值  1   7
  if(!pno){pno=1}
  if(!pageSize){pageSize=7}
  var sql = " SELECT id,title,ctime,";
      sql +=" point,img_url";
      sql +=" FROM xz_news";
      sql +=" LIMIT ?,?";
  var offset = (pno-1)*pageSize;
  pageSize = parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
       if(err)throw err;
       res.send({code:1,data:result});
  });    
  //*json   {code:1,data:[]}
});

