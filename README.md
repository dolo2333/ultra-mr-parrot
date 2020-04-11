# JPetStore by spring-boot
===========================

###########环境依赖
maven ~

jdk1.8

mysql 5.7



###########项目开发人员    
刘映东
卢学贤
康力天



###########部署步骤



1. 将项目克隆到本地：

   > git clone https://github.com/dolo2333/ultra-mr-parrot.git

2. 初始化

   > mvn clean install

3. 数据库的用户名和密码、程序采用的端口可以在/src/resources/application.properites中修改（默认用户名root无密码、端口8442）

4. 运行项目

   > mvn run

   之后打开http://127.0.0.1:8442 （这里可以改为自定义端口）

   

###########目录结构描述
│  .gitignore  
│  mvnw  
│  mvnw.cmd  
│  mypetstore.iml  			
│  pom.xml             		 // maven 配置文件  
│  README.md               // 帮助文件  
│
├─.idea							// idea ide配置文件  
│  └─libraries  
├─.mvn  
│  └─wrapper  
│          maven-wrapper.jar  
│          maven-wrapper.properties  
│          MavenWrapperDownloader.java  
└─src  
    ├─main  
    │  ├─java  
    │  │  └─org  
    │  │      └─csu  
    │  │          └─mypetstore  
    │  │              │  MypetstoreApplication.java	//项目入口程序  
    │  │              │  
    │  │              ├─controller  
    │  │              │      AccountController.java  
    │  │              │      CartController.java  
    │  │              │      CatalogController.java  
    │  │              │      OrderController.java  
    │  │              │  
    │  │              ├─domain  
    │  │              │      Account.java  
    │  │              │      Cart.java  
    │  │              │      CartItem.java  
    │  │              │      Category.java  
    │  │              │      Item.java  
    │  │              │      LineItem.java  
    │  │              │      Order.java  
    │  │              │      Product.java  
    │  │              │  
    │  │              ├─persistence  
    │  │              │      AccountMapper.java  
    │  │              │      CategoryMapper.java  
    │  │              │      ItemMapper.java  
    │  │              │      OrderMapper.java  
    │  │              │      ProductMapper.java  
    │  │              │  
    │  │              └─service  
    │  │                      AccountService.java  
    │  │                      CatalogService.java  
    │  │                      OrderService.java  
    │  │  
    │  └─resources  
    │      │  application.properties						// 项目配置  
    │      │  
    │      ├─mapper												//mybatis映射器  
    │      │      AccountMapper.xml  
    │      │      CategoryMapper.xml  
    │      │      ItemMapper.xml  
    │      │      OrderMapper.xml  
    │      │      ProductMapper.xml  
    │      │  
    │      ├─static													//静态文件  
    │      │  │  index.html  
    │      │  │  
    │      │  ├─css  
    │      │  │      jpetstore.css  
    │      │  │  
    │      │  └─images												//存放素材图片略  
    │      │  
    │      └─templates  
    │          ├─account  
    │          │      edit_account.html  
    │          │      include_account_fields.html  
    │          │      new_account.html  
    │          │      signon.html  
    │          │  
    │          ├─cart  
    │          │      cart.html  
    │          │      checkout.html  
    │          │      include_my_list.html  
    │          │  
    │          ├─catalog  
    │          │      category.html  
    │          │      item.html  
    │          │      main.html  
    │          │      product.html  
    │          │      search_products.html  
    │          │  
    │          ├─common  
    │          │      bottom.html  
    │          │      error.html  
    │          │      top.html  
    │          │  
    │          └─order  
    │                  orderList.html  
    │                  viewOrder.html  
    │  
    └─test  
        └─java  
             └─org  
                └─csu  
                    └─mypetstore  
                            MypetstoreApplicationTests.java  

###########V1.0.0 版本内容更新

1. （待实现）订单功能
2. （待实现）电话验证码
