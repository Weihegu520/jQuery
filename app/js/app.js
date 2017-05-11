
// require 第一个参数 数组  元素为加载模块的地址
//第二个参数 回调函数  为模块加载完毕以后的处理
// require(['js/slide/slide.js'],function(slide){
//     console.log(slide);

// 对模块化加载进行基本设置
requirejs.config({
    baseUrl:"../",
    //设置依赖
    shim:{
        'common_jquery':['jquery'],
        'jquery.flexslider-min':['jquery'],
        'jquery.colorbox-min':['jquery'],
        'jquery-ui.min':['jquery'],
        'Calculation':['Calculation'],
        'jquery.cookie':['jquery']
    },

    //加载路径  和加载对象   //省略后缀
    paths:{
        'jquery':"lib/jquery",
        'common_jquery':"lib/common_jquery",
        'jquery-1.11.0.min':'lib/jquery-1.11.0.min',
        'template':'lib/template-debug',
        'jquery-ui.min':'lib/jquery-ui.min',
        'jquery.flexslider-min':'lib/jquery.flexslider-min',
        'jquery.colorbox-min':'lib/jquery.colorbox-min',
        'Calculation':'lib/Calculation',
        'jquery.cookie':'lib/jquery.cookie',
        'CookieBase':'js/CookieBase',
        'Supu':'js/Supu',
        'top':'js/top',
        'Garouse':'js/Garouse',
        'banner':'js/banner',
        'foot':'js/foot',
        'zhuc':'js/zhuc',
        'zc':'js/zc',
        'denglu':'js/denglu',
        'dl':'js/dl',
        'Pr':'js/Pr',
        'Product':'js/Product',
        'Cy':'js/Cy',
        'Commodity':'js/Commodity',
        'Shoppingcart':'js/Shoppingcart',
        'Sp':'js/Sp',
        'Commoditys':'js/Commoditys',
        'Cods':'js/Cods'
    }

    //加载新的模块
})


//require 属于按需加载

require(["jquery",'Supu','zhuc','denglu','Product','Commodity','Shoppingcart','Commoditys'],function($,Supu,zhuc,denglu,Product,Commodity,Shoppingcart,Commoditys){
    
//    zhuc.init();
    // var test = new Test();
       var path = location.pathname; //进行路由设置

       if(path=="/Supu/app/index/index.html"){
           Supu.init();
       }else if(path=="/Supu/app/zhuc/zhuc.html"){
           zhuc.init();
       }else if(path=="/Supu/app/denglu/denglu.html"){
           denglu.init();
       }else if(path=="/Supu/app/Product/Product.html"){
       	   Product.init();
       }else if(path=="/Supu/app/Commodity/Commodity.html"){
       	   Commodity.init();
       }else if(path=="/Supu/app/Shoppingcart/Shoppingcart.html"){
       	   Shoppingcart.init();
       }else if(path=="/Supu/app/Commoditys/Commoditys.html"){
       	   Commoditys.init();
       }
    //如果想要添加新的页面

    //1 建一个文件夹 放入index.html
    //2 建一个新的模块 在模块里面对页面进行设置
    //3 在入口js 设置访问路由
})



//mvc m =model v = view 页面视图  c=control 控制器