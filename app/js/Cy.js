define(['jquery', 'jquery.colorbox-min', 'jquery-ui.min', 'jquery.cookie', 'CookieBase'], function($, colorbox, jqueryui, $cookie, CookieBase) {

	return {
		init: function() {
			$('body').append('<div id="Commodity">');
			$('#Commodity').load('../html/Commodity.html', function() {
				//开始
				//放大镜的插件
				$.fn.magnifying = function() {
					var that = $(this),
						$imgCon = that.find('.con-fangDaIMg'), //正常图片容器
						$Img = $imgCon.find('img'), //正常图片，还有放大图片集合
						$Drag = that.find('.magnifyingBegin'), //拖动滑动容器
						$show = that.find('.magnifyingShow'), //放大镜显示区域
						$showIMg = $show.find('img'), //放大镜图片
						$ImgList = that.find('.con-FangDa-ImgList > li >img'),
						multiple = $show.width() / $Drag.width();

					$imgCon.mousemove(function(e) {
						$Drag.css('display', 'block');
						$show.css('display', 'block');

						var iX = e.pageX - $(this).offset().left - $Drag.width() / 2,
							iY = e.pageY - $(this).offset().top - $Drag.height() / 2,
							MaxX = $imgCon.width() - $Drag.width(),
							MaxY = $imgCon.height() - $Drag.height();

						iX = iX > 0 ? iX : 0;
						iX = iX < MaxX ? iX : MaxX;
						iY = iY > 0 ? iY : 0;
						iY = iY < MaxY ? iY : MaxY;
						$Drag.css({
							left: iX + 'px',
							top: iY + 'px'
						});
						$showIMg.css({
							marginLeft: -multiple * iX + 'px',
							marginTop: -multiple * iY + 'px'
						});
						//return false;
					});
					$imgCon.mouseout(function() {
						$Drag.css('display', 'none');
						$show.css('display', 'none');
					});

					$ImgList.mouseenter(function() {
						var NowSrc = $(this).data('bigimg');
						$Img.attr('src', "http://localhost/" + NowSrc);
						$(this).parent().addClass('active').siblings().removeClass('active');
					});
				}

				$("#fangdajing").magnifying();

				//截取URL地址后面的商品数据的UID信息
				function getArrayFromSearch(search) {
					if(search.length > 0 && search[0] == "?") {

						var str = search.substring(1);

						var arr = str.split("&");

						var newArr = [];

						for(var i = 0; i < arr.length; i++) {

							var arr2 = arr[i].split("=");
							if(arr2.length >= 2) {
								newArr.push(arr2[1]);
							}
						}
						return newArr;
					} else {
						return [];
					}
				}

				//截取到的UID信息
				var arr = getArrayFromSearch(location.search);

				console.log(arr[0]);

				//请求数据库里面的商品数据用来做和UID传过来的商品做比较
				$.post("../../php/Supuli3.php", {},
					function(data) {
						//console.log(data);
						update(data);
					}, "json");

				//遍历商品UID，得出正确的商品信息
				function update(data) {

					var $smallimg1 = $('.con-FangDa-ImgList').children('li').eq(0).children('img'),
						$smallimg2 = $('.con-FangDa-ImgList').children('li').eq(1).children('img'),
						$smallimg3 = $('.con-FangDa-ImgList').children('li').eq(2).children('img'),
						$smallimg4 = $('.con-FangDa-ImgList').children('li').eq(3).children('img'),
						$smallimg5 = $('.con-FangDa-ImgList').children('li').eq(4).children('img');

					for(var i = 0; i < data.length; i++) {

						var uid = data[i].uid;

						if(arr == uid) {

							var url = data[i].imgUrl;
							var name = data[i].name;
							var price = data[i].price;
							var describe = data[i].describe;
							var xiaotu = data[i].xiaotu;
							var Datu = data[i].Datu;

							var arrlist = xiaotu.split("?");
							console.log(arrlist);

							var arrlistbig = Datu.split("?");
							console.log(arrlistbig);

							$('.con-fangDaIMg').children('img').attr("src", "http://localhost/" + url);
							$('.magnifyingShow').children('img').attr("src", "http://localhost/" + url)

							$smallimg1.attr({
								"src": "http://localhost/" + arrlist[0],
								"data-bigimg": arrlistbig[0]
							});
							$smallimg2.attr({
								"src": "http://localhost/" + arrlist[1],
								"data-bigimg": arrlistbig[1]
							});
							$smallimg3.attr({
								"src": "http://localhost/" + arrlist[2],
								"data-bigimg": arrlistbig[2]
							});
							$smallimg4.attr({
								"src": "http://localhost/" + arrlist[3],
								"data-bigimg": arrlistbig[3]
							});
							$smallimg5.attr({
								"src": "http://localhost/" + arrlist[4],
								"data-bigimg": arrlistbig[4]
							});

							var $contt = $(".magnifyingShow").children();
							$contt.attr("src", "http://localhost/" + url);

							//商品描述
							var $cons = $(".details-s");
							$cons.html(describe);

							//价格
							var $cons2 = $(".details-ss-1");
							$cons2.html(price);

						}
					}

				}

				//商品飞入购物车的特效
				$(".ggffuu").on("click", function() {

					var cart = $(".shopping-cart");
					var imgtodrag = $(".con-fangDaIMg").children("img").eq(0);

					if(imgtodrag) {
						var imgclone = imgtodrag.clone().offset({
							top: imgtodrag.offset().top,
							left: imgtodrag.offset().left
						}).css({
							'opacity': '0.5',
							'position': 'absolute',
							'height': '150px',
							'width': '150px',
							'z-index': '100'
						}).appendTo($('body')).animate({
							'top': cart.offset().top + 10,
							'left': cart.offset().left + 10,
							'width': 75,
							'height': 75
						}, 1000, 'easeInOutExpo');
						setTimeout(function() {
							cart.effect('shake', {
								times: 2
							}, 200);
						}, 1500);
						imgclone.animate({
							'width': 0,
							'height': 0
						}, function() {
							$(this).detach();
						});
					}
				});

				//添加cookie
				var Ment = $(".ggffuu");

				Ment.click(function() {
						var sCookie = getCookie('list');
						var aList = sCookie ? JSON.parse(sCookie) : []; //转换成json对象的时候一定要判断
						var bool = true; //判断是否存在  true 不存在
						//				//遍历cookie  判断商品是否存在
						for(var j = 0; j < aList.length; j++) {
							//					//表示商品存在
							if(aList[j].gid == arr[0]) {
								bool = false;
								//修改数量
								var num1 = parseInt(aList[j].num);
								//输入框的数字
								var num2 = $('.details-ss3-b').val() - 0;
								num = num1 + num2;
								aList[j].num = num;
							}
						}
						//当商品不存在的时候 添加整个商品信息
						if(bool) {
							aList.push({
								"gid": arr[0],
								"num": $('.details-ss3-b').val()
							})
						}
						//设置cookie后一定要查看log
						setCookie('list', JSON.stringify(aList), 7, '/');
						console.log(getCookie('list'));

						var uid = arr;
						var imgUrls = $(".con-fangDaIMg").children().attr("src");
						var names = $(".details-s").html();
						var jiages = $(".details-ss-1").html();
						var shula = $(".details-ss3-b").val();
						console.log(uid, num);

						//				    	var postli = {};
						//				    	postli.names = names;
						//				        postli.imgUrls = imgUrls;
						//				        postli.jiage = jiages;

						//				    	var postli = {};
						//				    	postli.uid = uid;
						//				        postli.num = 1;

						$.cookie(uid, {
							path: '/',
							expires: 10
						});

					})
					//				Ment.click(function(event) {
					//
					//					var uid = arr;
					//					var imgUrls = $(".con-fangDaIMg").children().attr("src");
					//					var names = $(".details-s").html();
					//					var jiages = $(".details-ss-1").html();
					//				    var shula = $(".details-ss3-b").val();
					//				    console.log(uid,num);
					//
					//					//				    	var postli = {};
					//					//				    	postli.names = names;
					//					//				        postli.imgUrls = imgUrls;
					//					//				        postli.jiage = jiages;
					//
					//					//				    	var postli = {};
					//					//				    	postli.uid = uid;
					//					//				        postli.num = 1;
					//
					//					$.cookie(uid,{
					//						path: '/',
					//						expires: 10
					//					});
					//
					//				})

				//点击商品数量增加
				var num;
				$('.details-ss3').click(function(e) {
					console.log(e.target.className);
					if(e.target.className == "increase") {
						num = $('.details-ss3-b').val() - 0;
						$('.details-ss3-b').val(num + 1 + "");
					} else if(e.target.className == "decrease" && $('.details-ss3-b').val() > 0) {
						num = $('.details-ss3-b').val() - 0;
						$('.details-ss3-b').val(num - 1 + "");
					}
				})

				//结束
			});
			return this;
		},
		bind: function() {
			//开始
                
                
			//结束
		}

	}
})