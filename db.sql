
#创建home的f4表
CREATE TABLE food_hf(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url varchar(255),
  title varchar(255)
);
INSERT INTO food_hf VALUES(null,'img/homef4/hf1.jpg','以简单为美味，以自然为美味,美食简约哲学的极致表现');
INSERT INTO food_hf VALUES(null,'img/homef4/hf2.jpg','不仅仅是简单的味觉感受，更是一种精神享受');
INSERT INTO food_hf VALUES(null,'img/homef4/hf3.jpg','品味更多美食，享受更多健康');
select * from  food_hf;

#homed的lb
CREATE TABLE food_lb(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url varchar(255)
);
INSERT INTO food_lb VALUES(null,'img/index/banner1.jpg');
INSERT INTO food_lb VALUES(null,'img/index/banner2.jpg');
INSERT INTO food_lb VALUES(null,'img/index/banner3.jpg');

#home 的九宫格
CREATE TABLE food_jgg(
  id INT PRIMARY KEY AUTO_INCREMENT,
   title varchar(255),
  img_url varchar(225)
);
INSERT INTO  food_jgg VALUES(null,"饮料饮品","img/grid/menu1.png");
INSERT INTO  food_jgg VALUES(null,"汉堡快餐","img/grid/menu2.png");
INSERT INTO  food_jgg VALUES(null,"新鲜水果","img/grid/menu3.png");
INSERT INTO  food_jgg VALUES(null,"糖果点心","img/grid/menu4.png");
INSERT INTO  food_jgg VALUES(null,"中式美食","img/grid/menu5.png");
INSERT INTO  food_jgg VALUES(null,"调味食品","img/grid/menu6.png");



#home的F5
CREATE TABLE food_hfive(
  id INT PRIMARY KEY AUTO_INCREMENT,
  logo varchar(255),
  title varchar(255),
  img_url varchar(255)
);
INSERT INTO food_hfive VALUES(null,'img/homef5/xxj.png','竹雨凇风琴韵，茶点梧月书声','img/homef5/xxj.gif');
INSERT INTO food_hfive VALUES(null,'img/homef5/ycyt.png','茶香型麻辣烫汤底及绿茶植物油的概念','img/homef5/ycyt.gif');
INSERT INTO food_hfive VALUES(null,'img/homef5/ttxs.png','岁月如歌，湘味永恒
舌尖上的湘与乡愁','img/homef5/ttxs.gif');
select * from food_hfive;



#创建about的表
CREATE TABLE food_abone(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url varchar(255),
  title varchar(255)
);
INSERT INTO food_abone VALUES(null,'img/about/daily-1.jpg','“Daily” is a place you can visit on a daily basis in order to drink coffee, to have a chat, to work or just to spend some good time. This coffee place has an arthouse movie atmosphere. From every perspective, you have a sense of a movie episode where people casually interact with each other.');
INSERT INTO food_abone VALUES(null,'img/about/daily-2.jpg','«Daily» is not just a coffee shop, but also kind of urban space, offering some social events like ‘’Breakfast with an interesting person”, happening once in two weeks, hosting different famous people sharing some inspiring speeches with guests.');
select * from  food_abone;

#创建about的第二个表
CREATE TABLE food_abtwo(
   id INT PRIMARY KEY AUTO_INCREMENT,
   img_url varchar(255)
);
INSERT INTO food_abtwo VALUES(null,'img/about/daily-3.jpg');
INSERT INTO food_abtwo VALUES(null,'img/about/daily-4.jpg');
INSERT INTO food_abtwo VALUES(null,'img/about/daily-5.jpg');
INSERT INTO food_abtwo VALUES(null,'img/about/daily-6.jpg');
INSERT INTO food_abtwo VALUES(null,'img/about/daily-7.jpg');
INSERT INTO food_abtwo VALUES(null,'img/about/daily-8.jpg');
INSERT INTO food_abtwo VALUES(null,'img/about/daily-9.jpg');
INSERT INTO food_abtwo VALUES(null,'img/about/daily-10.jpg');
INSERT INTO food_abtwo VALUES(null,'img/about/daily-11.jpg');
select * from  food_abtwo;

#创建menu-m
CREATE TABLE food_menum(
   id INT PRIMARY KEY AUTO_INCREMENT,
   img varchar(255)
);
INSERT INTO food_menum VALUES(null,'img/menu-m/featured-1-mobile.jpg');
INSERT INTO food_menum VALUES(null,'img/menu-m/cake2.gif');
INSERT INTO food_menum VALUES(null,'img/menu-m/cafe.gif');
INSERT INTO food_menum VALUES(null,'img/menu-m/cake.gif');
INSERT INTO food_menum VALUES(null,'img/menu-m/hanbao.gif');
select * from  food_menum;

#创建menu-ms
CREATE TABLE food_menums(
     id INT PRIMARY KEY AUTO_INCREMENT,
     img varchar(255),
     title varchar(255)
);
INSERT INTO food_menums VALUES(null,'img/menu-ms/ms1.jpg','美式松饼');
INSERT INTO food_menums VALUES(null,'img/menu-ms/ms2.jpg','蓝莓麦芬');
INSERT INTO food_menums VALUES(null,'img/menu-ms/ms3.jpg','巧克力麦芬');
INSERT INTO food_menums VALUES(null,'img/menu-ms/ms4.jpg','旋风玉桂酥');
INSERT INTO food_menums VALUES(null,'img/menu-ms/ms5.jpg','法式香酥可颂');
INSERT INTO food_menums VALUES(null,'img/menu-ms/ms6.jpg','法式焦糖酥');
INSERT INTO food_menums VALUES(null,'img/menu-ms/ms7.jpg','榛子果仁酥');
INSERT INTO food_menums VALUES(null,'img/menu-ms/ms8.jpg','蜂蜜提子司康');
INSERT INTO food_menums VALUES(null,'img/menu-ms/ms9.jpg','燕麦焦糖布丁');
INSERT INTO food_menums VALUES(null,'img/menu-ms/ms10.jpg','提子干松饼');
select * from food_menums;

#创建menu-yl
CREATE TABLE food_menuyl(
     id INT PRIMARY KEY AUTO_INCREMENT,
     img varchar(255),
     title varchar(255)
);
INSERT INTO food_menuyl VALUES(null,'img/menu-yl/yl1.jpg','阿馥奇朵');
INSERT INTO food_menuyl VALUES(null,'img/menu-yl/yl2.jpg','红茶拿铁');
INSERT INTO food_menuyl VALUES(null,'img/menu-yl/yl3.jpg','美式咖啡');
INSERT INTO food_menuyl VALUES(null,'img/menu-yl/yl4.jpg','摩卡');
INSERT INTO food_menuyl VALUES(null,'img/menu-yl/yl5.jpg','拿铁');
INSERT INTO food_menuyl VALUES(null,'img/menu-yl/yl6.jpg','卡布奇诺');
INSERT INTO food_menuyl VALUES(null,'img/menu-yl/yl7.jpg','冰摇柚柚蜂蜜红茶');
INSERT INTO food_menuyl VALUES(null,'img/menu-yl/yl8.jpg','冰摇红梅黑加仑');
INSERT INTO food_menuyl VALUES(null,'img/menu-yl/yl9.jpg','冰摇芒果花草');
INSERT INTO food_menuyl VALUES(null,'img/menu-yl/yl10.jpg','冰摇桃桃乌龙');
select * from food_menuyl;

#创建menu-hb
CREATE TABLE food_menuhb(
     id INT PRIMARY KEY AUTO_INCREMENT,
     img varchar(255),
     title varchar(255)
);
INSERT INTO food_menuhb VALUES(null,'img/menu-hb/hb1.jpg','牛油果鸡肉培果');
INSERT INTO food_menuhb VALUES(null,'img/menu-hb/hb2.jpg','培根蛋可颂堡');
INSERT INTO food_menuhb VALUES(null,'img/menu-hb/hb3.jpg','蜜汁培根蛋卷');
INSERT INTO food_menuhb VALUES(null,'img/menu-hb/hb4.jpg','层层牛肉法棍');
INSERT INTO food_menuhb VALUES(null,'img/menu-hb/hb5.jpg','牛肉芝士可颂');
INSERT INTO food_menuhb VALUES(null,'img/menu-hb/hb6.jpg','凯撒鸡肉卷');
INSERT INTO food_menuhb VALUES(null,'img/menu-hb/hb7.jpg','鸡肉芝香帕尼尼');
INSERT INTO food_menuhb VALUES(null,'img/menu-hb/hb8.jpg','炒蛋菌菇虾仁卷');
INSERT INTO food_menuhb VALUES(null,'img/menu-hb/hb9.jpg','火腿芝士可颂');
INSERT INTO food_menuhb VALUES(null,'img/menu-hb/hb10.jpg','帕斯雀牛肉三明治');
select * from food_menuhb;

#创建detail
CREATE TABLE food_detail(
     id INT PRIMARY KEY AUTO_INCREMENT,
     imga varchar(255),
     titlea varchar(255),

     imgb varchar(255),
     titleb varchar(255),
     imgb_text varchar(255),
     titleb2 varchar(255),

     imgc varchar(255),
     titlec varchar(255),
     imgc_text varchar(255),
     titlec2 varchar(255),

     imgd varchar(255),
     titled varchar(255),
     imgd_text varchar(255),
     titled2 varchar(255),

     imge varchar(255),
     titlee varchar(255),
     imge_text varchar(255),
     titlee2 varchar(255)
);
INSERT INTO food_detail VALUES(null,'img/detail/d1.jpg','灵感源自臻选®烘焙工坊，咖啡大师的巧思探索，创意突破咖啡常态，在与冰淇淋的巧妙搭配中，创造专属味蕾体验——为我们钟爱的咖啡，精心调制出彰显其个性风味的特调配方，品尝那一刻，瞬间沉醉在咖啡与冰淇淋的奇妙融合中。','img/detail/d2.jpg','阿馥奇朵™','img/detail/affogato.png','双份精萃浓缩咖啡，新西兰进口香草冰淇淋','img/detail/d3.jpg','麦芽雪冷萃™','img/detail/coldbrewfloat.png','冷萃咖啡,巧克力味苦味酒，麦芽成分','img/detail/d4.jpg','冷萃浮乐朵™','img/detail/coldbrewmalt.png','冷萃咖啡，新西兰进口香草冰淇淋','img/detail/d5.jpg','气致™冷萃浮乐朵™','img/detail/nitorcoldbrewfloat.png','气致™冷萃咖啡，新西兰进口香草冰淇淋');
select * from food_detail;

#创建购物车表
CREATE TABLE food_cart(
     id INT PRIMARY KEY AUTO_INCREMENT,  
     img varchar(255),
     title varchar(255),
     count int
);

#注册表
CREATE TABLE food_register(
     id INT PRIMARY KEY AUTO_INCREMENT,  
     zphone  varchar(255),
     zpwd varchar(225),
     email varchar(225)
);

#评论表
CREATE TABLE food_comment(
     id INT PRIMARY KEY AUTO_INCREMENT,  
     img   varchar(255),
     title  varchar(255)
);
INSERT INTO  food_comment VALUES(null,"img/food-comment/uid1.jpg","味道真棒唉111");
INSERT INTO  food_comment VALUES(null,"img/food-comment/uid1.jpg","味道真棒唉222"); 
INSERT INTO  food_comment VALUES(null,"img/food-comment/uid1.jpg","味道真棒唉333"); 
INSERT INTO  food_comment VALUES(null,"img/food-comment/uid2.jpg","味道真棒唉444"); 
INSERT INTO  food_comment VALUES(null,"img/food-comment/uid2.jpg","味道真棒唉555"); 
INSERT INTO  food_comment VALUES(null,"img/food-comment/uid2.jpg","味道真棒唉666"); 
INSERT INTO  food_comment VALUES(null,"img/food-comment/uid3.jpg","味道真棒唉777"); 
INSERT INTO  food_comment VALUES(null,"img/food-comment/uid3.jpg","味道真棒唉888"); 
INSERT INTO  food_comment VALUES(null,"img/food-comment/uid3.jpg","味道真棒唉999"); 
select * from food_comment;
