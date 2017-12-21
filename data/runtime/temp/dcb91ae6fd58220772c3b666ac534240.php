<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:40:"themes/simpleboot3/shop\index\index.html";i:1513605956;s:42:"themes/simpleboot3/shop\public\header.html";i:1513863841;s:35:"themes/simpleboot3/public\head.html";i:1513602023;s:39:"themes/simpleboot3/public\function.html";i:1513602023;}*/ ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>酒仙网</title>
    <link rel="shortcut icon " href="__STATIC__/shop/img/favicon.ico">
    <link rel="stylesheet" href="__STATIC__/shop/css/index.css">
    <script src="__STATIC__/shop/js/jQuery.js"></script>
    <script src="__STATIC__/shop/js/myAutoplay.js"></script>
    <link rel="stylesheet" href="__STATIC__/shop/css/xiangqing.css">
    
<?php 
/*可以加多个方法哟！*/
function _sp_helloworld(){
	echo "hello ThinkCMF!";
}

function _sp_helloworld2(){
	echo "hello ThinkCMF2!";
}


function _sp_helloworld3(){
	echo "hello ThinkCMF3!";
}

 ?>
<meta name="author" content="ThinkCMF">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<!-- Set render engine for 360 browser -->
<meta name="renderer" content="webkit">

<!-- No Baidu Siteapp-->
<meta http-equiv="Cache-Control" content="no-siteapp"/>

<!-- HTML5 shim for IE8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<![endif]-->
<link rel="icon" href="__TMPL__/public/assets/images/favicon.png" type="image/png">
<link rel="shortcut icon" href="__TMPL__/public/assets/images/favicon.png" type="image/png">
<link href="__TMPL__/public/assets/simpleboot3/themes/simpleboot3/bootstrap.min.css" rel="stylesheet">
<link href="__TMPL__/public/assets/simpleboot3/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"
      type="text/css">
<!--[if IE 7]>
<link rel="stylesheet" href="__TMPL__/public/assets/simpleboot3/font-awesome/4.4.0/css/font-awesome-ie7.min.css">
<![endif]-->
<!-- <link href="__TMPL__/public/assets/css/style.css" rel="stylesheet"> -->
<style>
    /*html{filter:progid:DXImageTransform.Microsoft.BasicImage(grayscale=1);-webkit-filter: grayscale(1);}*/
    #backtotop {
        position: fixed;
        bottom: 50px;
        right: 20px;
        display: none;
        cursor: pointer;
        font-size: 50px;
        z-index: 9999;
    }

    #backtotop:hover {
        color: #333
    }

    #main-menu-user li.user {
        display: none
    }
</style>
<script type="text/javascript">
    //全局变量
    var GV = {
        ROOT: "__ROOT__/",
        WEB_ROOT: "__WEB_ROOT__/",
        JS_ROOT: "static/js/"
    };
</script>
<script src="__TMPL__/public/assets/js/jquery-1.10.2.min.js"></script>
<script src="__TMPL__/public/assets/js/jquery-migrate-1.2.1.js"></script>
<script src="__STATIC__/js/wind.js"></script>
	
</head>
<?php 
    $cur_user = session('user');
    $shuliang = session('shuliang')
 ?>
<body>
<!-- 最上面 -->
<div class="header-wrap">
    <div id="header">
        <div class="pull-left">
            <ul class="list-unstyled">
                <li class=" pull-left">欢迎来酒仙网！</li>
                <?php if($cur_user): ?>
                    <li class=" pull-left"><a href=""><?php echo $cur_user['mobile']; ?>,你好！</a></li>
                    <li class=" pull-left"><a href="<?php echo url('shop/index/logout'); ?>" class="text-danger">退出登录</a></li>
                    <?php else: ?>
                    <li class=" pull-left"><a href="<?php echo url('shop/login/index'); ?>">请登录</a></li>
                    <li class=" pull-left"><a href="<?php echo url('shop/register/index'); ?>">免费注册</a></li>
                <?php endif; ?>
            </ul>
        </div>
        <div class="pull-right">
            <ul class="list-unstyled">
                <li class=" pull-left header-hover">
                    <a href="">网站导航</a>
                    <div class="header-hover-hide header-hover-hide-sp">
                        <table width="170" cellspacing="0">
                            <th>购物</th>
                            <tr>
                                <td><a href="">白酒</a></td>
                                <td><a href="">葡萄酒</a></td>
                                <td><a href="">洋酒</a></td>
                            </tr>
                            <tr >
                                <td><a href="">啤酒</a></td>
                                <td><a href="">保健酒</a></td>
                                <td><a href="">黄酒</a></td>
                            </tr>
                        </table>
                        <table width="170">
                            <th>活动</th>
                            <tr>
                                <td><a href="">进口馆</a></td>
                                <td><a href="">整箱套装</a></td>
                                <td><a href="">清仓</a></td>
                            </tr>
                            <tr >
                                <td><a href="">闪团</a></td>
                                <td><a href="">新品</a></td>
                                <td><a href="">发现</a></td>
                            </tr>
                        </table>

                    </div>
                </li>

                <li class=" pull-left header-hover" id="chen">
                    <a href="/shop/user_center/index">我的酒仙</a>
                    <div class="header-hover-hide">
                        <p><a href="">我的订单</a></p>
                        <p><a href="">我的优惠券</a></p>
                    </div>
                </li>
                <li class=" pull-left"><a href="<?php echo url('shop/index/gouwuche'); ?>">购物车<span><?php echo $shuliang>0?$shuliang:"0"; ?></span>件</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- 最上面结束 -->
<div class="clear"></div>
<!-- 第二层 -->
<div id="guanggao">
    <a href="http://www.google.com" class="guanggao"></a>
</div>
<!-- 第二层结束 -->
<div class="clear"></div>
<!-- search开始-->
<div class="search-wrap">
    <div class="search ct">
        <div class="pull-left logo">
            <a href=""><img src="__STATIC__/shop/img/logo.png" alt=""></a>
            <a href=""><img src="__STATIC__/shop/img/search1.gif" alt=""></a>
        </div>
        <div class="search-input pull-left">
            <div class="input">
                <input type="text">
                <button type="submit">提 交</button>
            </div>
            <div class="input-2">
                <ul>
                    <li><a href="">品质红酒节 </a></li>
                    <li><a href="">结婚季</a></li>
                    <li><a href="">五粮液</a></li>
                    <li><a href="">剑南春</a></li>
                    <li><a href="">汾酒</a></li>
                    <li><a href="">酒鬼酒</a></li>
                    <li><a href="">古井贡</a></li>
                    <li><a href="">拉菲</a></li>
                    <li><a href="" style="color: #c00;">茉莉花</a></li>
                </ul>
            </div>
        </div>
        <div class="pull-right pic">
            <img src="__STATIC__/shop/img/xuebitu.png" alt="">
        </div>
    </div>
</div>
<!-- search结束-->

<div class="clear"></div>
<script src="__STATIC__/shop/js/header.js"></script>
	<!-- 轮播图 -->
	<div class="autoplay">
		<ul>
			<li>
				<div class="banxin" >
					<a href="http://www.baidu.com" target="_blank" ></a>
				</div>
			</li>
			<li>
				<div class="banxin" >
					<a href="http://www.google.com" target="_blank"></a>
				</div>
			</li>
			<li>
				<div class="banxin" >
					<a href="http://www.soso.com" target="_blank"></a>
				</div>
			</li>
		</ul>
		<div class="btns">
			<div class="btn">
				<p>1</p>
				<p>2</p>
				<p>3</p>
			</div>
		</div>
	</div>
	<!-- 轮播图结束 -->
	<div class="clear"></div>
	<!-- 疯狂抢购开始 -->
		<div class="qg-wrap">
		<div class="qg ct">
			<div class="qg-left pull-left">
				<ul>
					<li class="active">
						白酒
						<div class="qg-left-hide" style="display: block;">
							<ol>
								<?php if(is_array($baijiu) || $baijiu instanceof \think\Collection || $baijiu instanceof \think\Paginator): $i = 0; $__LIST__ = $baijiu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
								<li onclick="window.location.href='<?php echo url('shop/index/details',['id'=>$vo['id']]); ?>'">
									<a href="<?php echo url('shop/index/details',['id'=>$vo['id']]); ?>"><img src="<?php echo $vo['img_url']; ?>" alt="" style="width: 80%;"></a>
									<p><a href=""><?php echo $vo['name']; ?></a></p>
									<span>￥<?php echo $vo['shj']; ?>.00</span>
								</li>
								<?php endforeach; endif; else: echo "" ;endif; ?>
							</ol>
						</div>
					</li>
					<li>
						爆款精选
						<div class="qg-left-hide">
							<ol>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou2.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou2.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou2.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou2.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou2.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou2.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou2.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou2.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou2.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou2.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
							</ol>
						</div>
					</li>
					<li>
						整箱囤货
						<div class="qg-left-hide" >
							<ol>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou3.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou3.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou3.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou3.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou3.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou3.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou3.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou3.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou3.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou3.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
							</ol>
						</div>
					</li>
					<li>
						口粮聚惠
						<div class="qg-left-hide" >
							<ol>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou1.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou1.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou1.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou1.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou1.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou1.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou1.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou1.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou1.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou1.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
							</ol>
						</div>
					</li>
					<li>
						商务宴请
						<div class="qg-left-hide" >
							<ol>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou5.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou5.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou5.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou5.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou5.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou5.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou5.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou5.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou5.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
								<li>
									<a href="#"><img src="__STATIC__/shop/img/qianggou5.jpg" alt=""></a>
									<p><a href="">全兴特卖52°全兴头曲...</a></p>
									<span>￥25.00</span>
								</li>
							</ol>
						</div>
					</li>
				</ul>
			</div>
			<div class="qg-right pull-right" >
				<ul>
					<li>
						<ul id="qg-right">
							<li>
								<span >公告信息</span>
								<div class="qg-right-hide" >
									<p>
										<a href="">红酒节满1399送...</a>
										<a href="">红酒节满1399送...</a>
									</p>
									<p>
										<a href="">红酒节满1399送...</a>
										<a href="">红酒节满1399送...</a>
									</p>
									<p>
										<a href="">红酒节满1399送...</a>
										<a href="">红酒节满1399送...</a>
									</p>
								</div>
							</li>
							<li>
								<span>促销信息</span>
								<div class="qg-right-hide">
									<p>
										<a href="">旧县米酒</a>
										<a href="">河东球神</a>
									</p>
									<p>
										<a href="">上杭最吊it程序员</a>
										<a href="">龙岩周杰伦</a>
									</p>
									<p>
										<a href="">福建第一dota高分</a>
										<a href="">中国人</a>
									</p>
								</div>
							</li>
						</ul>
					</li>
					<li style="position: relative;overflow:hidden;">
						<div class="qg-right-img-first" >
							<img src="__STATIC__/shop/img/qg-right-autoplat1.png" alt="">
							<img src="__STATIC__/shop/img/qg-right-autoplat2.png" alt="">
							<img src="__STATIC__/shop/img/qg-right-autoplat3.png" alt="">
							<img src="__STATIC__/shop/img/qg-right-autoplat1.png" alt="">
						</div>
						<div class="qg-right-img-first-btn">
							<p class="active"></p>
							<p></p>
							<p></p>
						</div>
					</li>
					<li style="position: relative;overflow:hidden;">
						<div class="qg-right-img-second" >
							<a href=""><img src="__STATIC__/shop/img/qg-right-autoplat4.png" alt=""></a>
							<a href=""><img src="__STATIC__/shop/img/qg-right-autoplat2.png" alt=""></a>
							<a href=""><img src="__STATIC__/shop/img/qg-right-autoplat6.png" alt=""></a>
							<a href=""><img src="__STATIC__/shop/img/qg-right-autoplat4.png" alt=""></a>
						</div>
						<div class="qg-right-img-second-btn">
							<p class="active"></p>
							<p></p>
							<p></p>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 疯狂抢购结束-->
	<div class="clear"></div>
	<!-- 分隔层开始 -->
	<div class="fenge ct">
		<ul>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
		</ul>
	</div>
	<!-- 分隔层结束 -->
	<div class="clear"></div>
	<!-- 限时优惠开始 -->
	<div class="xsyh ct">
		<h2 class="pull-left">限时优惠</h2>
		<div class="xsyh-btn pull-right" >
			<p  class="pull-left" ></p>
			<p  class="pull-left"></p>
			<p  class="pull-left" ></p>
		</div>
		<div class="clear"></div>
		<hr>
		<div class="xsyh-img">
			<div class="xsyh-img-box">
				<ul>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh1.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh1.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh1.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh1.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh1.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh1.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
				</ul>
				<ul>
					<li >
						<a href=""><img src="__STATIC__/shop/img/xsyh2.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh2.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh2.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh2.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh2.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh2.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
				</ul>
				<ul>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh3.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh3.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh3.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh3.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh3.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/xsyh3.jpg" alt=""></a>
						<p><a href="">52°珍品十年陈单支酒500ml</a></p>
						<p><span style="color: red">￥19.00</span></p>
						<p>剩余:<span class="hour">10</span>小时<span class="minutes">07</span>分钟<span class="second">34</span>秒</p>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 限时优惠结束 -->
	<div class="clear"></div>
	<!-- 1f白酒馆开始 -->
	<div class="one-floor ct" id="of">
		<div class="one-floor-nav">
			<div class="floor pull-left">1F</div>
			<h2 class="pull-left">白酒馆</h2>
			<p><a href="">白酒馆></a></p>
			<ul class="pull-right">
				<li><a href="">贵州</a></li>
				<li><a href="">四川</a></li>
				<li><a href="">山西</a></li>
				<li><a href="">北京</a></li>
				<li><a href="">江苏</a></li>
				<li><a href="">安徽</a></li>
				<li><a href="">湖北</a></li>	
			</ul>
		</div>	
		<div class="clear"></div>
		<div class="one-floor-list">
			<div class="one-floor-list-left">
				<ul class="">
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
				</ul>
				<div class="one-floor-list-left-btn">
					<p></p>
					<p></p>
					<p></p>
				</div>
			</div>
			<div class="one-floor-list-table">
				<ul>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
				</ul>
				<ul>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
				</ul>	
			</div>
			<div class="clear"></div>
			<div class="one-floor-list-footer">
				<p>·热门推荐</p>
				<p>
					<a href="">整箱特惠</a>
					<a href="">海外直采</a>
					<a href="">送礼精选</a>
				</p>
				<p><a href="">澳洲专</a></p>
				<div class="clear"></div>
				<p>·美酒品牌</p>
				<p>
					<a href="">拉菲</a>
					<a href="">茉莉花</a>
					<a href="">奔富</a>
				</p>
				<p><a href="">红魔鬼</a><a href="">长城</a></p>
			</div>
			<div class="one-floor-list-footer-right">
				<div class="one-floor-list-footer-right-top">
					<p>本周热销排行榜</p>
					<ul>
						<li><a href="" style="color: red;">酱香型</a></li>
						<li><a href="">浓香型</a></li>
						<li><a href="">清香型</a></li>
						<li><a href="">其他香型</a></li>
						
					</ul>
				</div>
				<div class="clear"></div>
				<div class="one-floor-list-footer-right-list">
					<ul class="linhuifen-i-love-u-last-time-to-say-it-1f">
						<li>
							<img src="__STATIC__/shop/img/floor/1-1.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/floor/1-2.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/floor/1-3.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/floor/1-4.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/floor/1-5.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
					</ul>
					<ul class="linhuifen-i-love-u-last-time-to-say-it-1f">
						<li>
							<img src="__STATIC__/shop/img/lhf2.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf2.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf2.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf2.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf2.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
					</ul>
					<ul class="linhuifen-i-love-u-last-time-to-say-it-1f">
						<li>
							<img src="__STATIC__/shop/img/lhf3.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf3.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf3.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf3.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf3.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
					</ul>
					<ul class="linhuifen-i-love-u-last-time-to-say-it-1f">
						<li>
							<img src="__STATIC__/shop/img/lhf4.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf4.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf4.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf4.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf4.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 1f白酒馆结束 -->
	<div class="clear"></div>
	<!-- 二楼开始 -->
	<div class="one-floor ct" id="twof">
		<div class="one-floor-nav">
			<div class="floor pull-left">2F</div>
			<h2 class="pull-left">白酒馆</h2>
			<p><a href="">葡萄酒馆></a></p>
			<ul class="pull-right">
				<li><a href="">套装会场</a></li>
				<li><a href="">名庄会场</a></li>
				<li><a href="">礼盒会场</a></li>
				<li><a href="">闪购会场</a></li>
				<li><a href="">高分推荐</a></li>
			</ul>
		</div>	
		<div class="clear"></div>
		<div class="two-floor-list">
			<div class="two-floor-list-left">
				<ul class="">
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
				</ul>
				<div class="two-floor-list-left-btn">
					<p></p>
					<p></p>
					<p></p>
				</div>
			</div>
			<div class="one-floor-list-table">
				<ul>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
				</ul>
				<ul>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
				</ul>	
			</div>
			<div class="clear"></div>
			<div class="one-floor-list-footer">
				<p>·热门推荐</p>
				<p>
					<a href="">整箱特惠</a>
					<a href="">海外直采</a>
					<a href="">送礼精选</a>
				</p>
				<p><a href="">澳洲专</a></p>
				<div class="clear"></div>
				<p>·美酒品牌</p>
				<p>
					<a href="">拉菲</a>
					<a href="">茉莉花</a>
					<a href="">奔富</a>
				</p>
				<p><a href="">红魔鬼</a><a href="">长城</a></p>
			</div>
			<div class="one-floor-list-footer-right">
				<div class="one-floor-list-footer-right-top">
					<p>本周热销排行榜</p>
					<ul>
						<li><a href="" style="color: red;">法国</a></li>
						<li><a href="">澳大利亚</a></li>
						<li><a href="">中国</a></li>
						<li><a href="">西班牙</a></li>
						<li><a href="">智利</a></li>
					</ul>
				</div>
				<div class="clear"></div>
				<div class="one-floor-list-footer-right-list">
					<ul class="linhuifen-i-love-u-last-time-to-say-it" style="display: block;">
						<li>
							<img src="__STATIC__/shop/img/lhf.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
					</ul>
					<ul class="linhuifen-i-love-u-last-time-to-say-it">
						<li>
							<img src="__STATIC__/shop/img/lhf2.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf2.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf2.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf2.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf2.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
					</ul>
					<ul class="linhuifen-i-love-u-last-time-to-say-it">
						<li>
							<img src="__STATIC__/shop/img/lhf3.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf3.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf3.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf3.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf3.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
					</ul>
					<ul class="linhuifen-i-love-u-last-time-to-say-it">
						<li>
							<img src="__STATIC__/shop/img/lhf4.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf4.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf4.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf4.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf4.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
					</ul>
					<ul class="linhuifen-i-love-u-last-time-to-say-it">
						<li>
							<img src="__STATIC__/shop/img/lhf5.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf5.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf5.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf5.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
						<li>
							<img src="__STATIC__/shop/img/lhf5.jpg" alt="" class="pull-left">
							<a href="">周末大抢购之智利干红</a>
							<span >￥354.00</span>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 二楼结束 -->
	<div class="clear"></div>
	<!-- 三楼开始 -->
	<div class="one-floor three-floor ct" id="tf">
		<div class="one-floor-nav">
			<div class="floor pull-left" >3F</div>
			<h2 class="pull-left">白酒馆</h2>
			<p><a href="">洋酒馆</a></p>
			<ul class="pull-right">
				<li><a href="">白兰地</a></li>
				<li><a href="">龙舌兰</a></li>
				<li><a href="">伏特加</a></li>
				<li><a href="">金酒</a></li>
				<li><a href="">朗姆酒</a></li>
				<li><a href="">力娇酒</a></li>	
			</ul>
		</div>	
		<div class="clear"></div>
			<div class="three-floor-list">
				<div class="three-floor-list-left">
					<ul class="">
						<li><a href=""></a></li>
						<li><a href=""></a></li>
						<li><a href=""></a></li>
						<li><a href=""></a></li>
					</ul>
				<div class="three-floor-list-left-btn">
					<p></p>
					<p></p>
					<p></p>
				</div>
			</div>
			<div class="one-floor-list-table">
				<ul>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
				</ul>
				<ul>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
				</ul>	
			</div>
		<div class="one-floor-list-footer">
				<p>·热门推荐</p>
				<p>
					<a href="">整箱特惠</a>
					<a href="">海外直采</a>
					<a href="">送礼精选</a>
				</p>
				<p><a href="">澳洲专</a></p>
				<div class="clear"></div>
				<p>·美酒品牌</p>
				<p>
					<a href="">拉菲</a>
					<a href="">茉莉花</a>
					<a href="">奔富</a>
				</p>
				<p><a href="">红魔鬼</a><a href="">长城</a></p>
			</div>	
	</div>
	</div>
	<!-- 三楼结束 -->
	<div class="clear"></div>
	<!-- 四楼开始 -->
	<div class="one-floor ct" id="four">
		<div class="one-floor-nav">
			<div class="floor pull-left">4F</div>
			<h2 class="pull-left">养生酒&黄酒&啤酒</h2>
			<ul class="pull-right">
				<li><a href="">青岛啤酒</a></li>
				<li><a href="">埃丝伯爵</a></li>
				<li><a href="">瓦伦丁</a></li>
				<li><a href="">竹叶青</a></li>
				<li><a href="">劲牌</a></li>
				<li><a href="">古越龙山</a></li>
				<li><a href="">啤酒馆</a></li>	
			</ul>
		</div>	
		<div class="clear"></div>
		<div class="four-floor-list">
			<div class="four-floor-list-left">
				<ul class="">
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
				</ul>
				<div class="four-floor-list-left-btn">
					<p></p>
					<p></p>
					<p></p>
				</div>
			</div>
			<div class="one-floor-list-table">
				<ul>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
				</ul>
				<ul>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
				</ul>	
			</div>
			<div class="clear"></div>
	</div>
	<!-- 四楼结束 -->
	<div class="clear"></div>
	<!-- 五楼开始 -->
	<div class="one-floor ct" id="fivef">
		<div class="one-floor-nav">
			<div class="floor pull-left">5F</div>
			<h2 class="pull-left">食品</h2>
		</div>	
		<div class="clear"></div>
		<div class="five-floor-list">
			<div class="five-floor-list-left">
				<ul class="">
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
					<li><a href=""></a></li>
				</ul>
				<div class="fives-floor-list-left-btn">
					<p></p>
					<p></p>
					<p></p>
				</div>
			</div>
			<div class="one-floor-list-table">
				<ul>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
				</ul>
				<ul>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
					<li>
						<a href=""><img src="__STATIC__/shop/img/one-floor-right.jpg" alt=""></a>
						<a href="">38°茅台集团贵州囍酒500ml（2003-2004年）</a>
						<span style="color: red">￥79.00</span>
					</li>
				</ul>	
			</div>
			<div class="clear"></div>
	</div>
	</div>
	</div>	
	<!-- 五楼结束 -->
	<div class="clear"></div>
	<!-- 官方推荐开始 -->
	<div class="tuijian ct">
		<div class="tuijian-top">
			<ul>
				<li style="color: red">
					官方推荐
					<div class="slide-div">
						<div id="triangle-up"></div>
					</div>
				</li>
				<li>地方名品</li>
				<li>红洋酒品牌</li>
				<li>明星店铺</li>
			</ul>
		</div>
		<div class="tuijian-store-wrap">
			<div class="tuijian-store">
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian/1.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/2.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/3.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/4.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/5.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/6.jpg" alt=""></li>
				</ul>
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian/7.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/8.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/9.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/10.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/11.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/12.jpg" alt=""></li>
				</ul>
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian/13.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/14.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/15.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/16.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/17.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/18.jpg" alt=""></li>
				</ul>
			</div>
			<div class="tuijian-store-2">
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian/19.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/20.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/21.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/22.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/23.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/24.jpg" alt=""></li>
				</ul>
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian/25.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/26.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/27.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/28.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/29.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/30.jpg" alt=""></li>
				</ul>
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian/31.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/32.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/33.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/33.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/32.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian/31.jpg" alt=""></li>
				</ul>
			</div>
		</div>
		<div class="tuijian-store-wrap">
			<div class="tuijian-store">
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian2/1.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/2.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/3.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/4.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/5.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/6.jpg" alt=""></li>
				</ul>
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian2/7.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/8.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/9.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/10.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/11.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/12.jpg" alt=""></li>
				</ul>
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian2/13.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/14.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/15.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/16.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/17.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian2/18.jpg" alt=""></li>
				</ul>
			</div>
		</div>
		<div class="tuijian-store-wrap">
			<div class="tuijian-store">
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian3/1.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/2.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/3.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/4.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/5.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/6.jpg" alt=""></li>
				</ul>
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian3/7.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/8.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/9.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/10.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/11.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/12.jpg" alt=""></li>
				</ul>
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian3/13.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/14.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/15.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/16.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/17.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/18.jpg" alt=""></li>
				</ul>
			</div>
		</div>
		<div class="tuijian-store-wrap">
			<div class="tuijian-store">
				<ul>
					<li><img src="__STATIC__/shop/img/tuijian3/4-1.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/4-2.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/4-3.jpg" alt=""></li>
					<li><img src="__STATIC__/shop/img/tuijian3/4-4.jpg" alt=""></li>
				</ul>
			</div>
		</div>
		<div class="pre"><</div>
		<div class="next">></div>
	</div>
	<!-- 官方推荐结束 -->
	<div class="clear"></div>
	<!-- 精品店开始 -->
	<div class="jingping ct">
		<div class="jingping-header">
			<h2>品牌精品店</h2>
			<div class="reddian"></div>
		</div>
		<div class="clear"></div>
		<div class="jingping-goods">
			<div class="jingping-goods-1st-div"></div>
			<div class="jingping-goods-2st-div">
				<p>
					<a href="">兰益松</a>
					<a href="">原味老窖</a>
					<a href="">国五液</a>
					<a href="">海福星</a>
					<a href="">茅台集团国隆</a>
					<a href="">元曲</a>
					<a href="">二锅头酒业股份</a>
					<a href="">酒鬼湘品</a>
					<a href="">共创益</a>
				</p>
			</div>
			<div class="jingping-goods-3st-div"></div>
			<div class="jingping-goods-4st-div">
				<p>
					<a href="">统一</a>
					<a href="">法纳提</a>
					<a href="">小企鹅</a>
					<a href="">海福杜隆星</a>
					<a href="">沙莊</a>
					<a href="">香格里拉</a>
				</p>
				<p><a href="">32领域</a></p>
			</div>
			<div class="jingping-goods-2nd">
				<div class="jingping-goods-1st-div"></div>
				<div class="jingping-goods-2st-div">
					<p>
						<a href="">人头马</a>
						<a href="">轩尼诗</a>
						<a href="">国五液</a>
						<a href="">芝华士</a>
						<a href="">杰克丹尼</a>
						<a href="">真露</a>
					</p>
					<p ><a href="">马爹利</a></p>
				</div>
				<div class="jingping-goods-3st-div"></div>
				<div class="jingping-goods-4st-div">
					<p>
						<a href="">青梅酒</a>
						<a href="">竹叶青</a>
						<a href="">诗贝</a>
						<a href="">库斯特</a>
						<a href="">劲牌</a>
						<a href="">尊尼获加</a>
						
					</p>
					<p><a href="">芝华士</a>
						<a href="">路易老爷</a></p>
				</div>
			</div>
		</div>
	</div>
	<!-- 精品店结束 -->
	<div class="clear"></div>
	<!-- 底层开始 -->
	<div id="footer">
		<div class="footer-center ct">
			<div class="footer-center-top">
				<div class="footer-center-top-phone">400-617-9999</div>
				<div class="footer-center-top-phone-right">客服热线9:00-23:00贴心服务</div>

			</div>
			<div class="clear"></div>
			<hr>
			<div class="footer-center-nav">
				<ul>
					<li>新手入门</li>
					<li>购物保障</li>
					<li>服务协议</li>
					<li>发票说明</li>
				</ul>
				<ul>
					<li>常见问题</li>
					<li>红包使用</li>
					<li>返现使用</li>
					<li>兑换码</li>
				</ul>
				<ul>
					<li>配送说明</li>
					<li>配送时间</li>
					<li>配送费用</li>
					<li>配送范围</li>
				</ul>
				<ul>
					<li>支付方式</li>
					<li>货到付款</li>
					<li>在线支付</li>
					<li>线下支付</li>
				</ul>
				<ul>
					<li>售后服务</li>
					<li>品质保证</li>
					<li>退换货政策</li>
					<li>退换货流程</li>
				</ul>
				<ul>
					<li>特色服务</li>
					<li>会员俱乐部</li>
					<li>企业客户</li>
					<li>酒仙社区</li>
				</ul>
				<div class="footer-center-nav-photo">
					<img src="__STATIC__/shop/img/footer.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<div class="footer-last ct">
		<div class="footer-last-left">
			<div class="footer-last-top">
				<ul>
					<li><a href="">公司简介</a></li>
					<li><a href="">管理团队</a></li>
					<li><a href="">媒体报道</a></li>
					<li><a href="">联系我们</a></li>
					<li><a href="">招贤纳士</a></li>
					<li><a href="">友情链接</a></li>
					<li><a href="">网站地图</a></li>
					<li><a href="">品牌大全</a></li>
				</ul>
			</div>
			<div class="clear"></div>
			<p>酒仙网电子商务股份有限公司  ©  酒仙网   2011  jiuxian.com  All   Rights Reserved   <a href="">京ICP备11007961号-1</a>  京公网安备1101050188221</p>
			<div class="footer-last-top">
				<ul>
					<li><a href="">大麦网</a></li>
					<li><a href="">1折网</a></li>
					<li><a href="">铁血军事</a></li>
					<li><a href="">酒仙网白酒</a></li>
					<li><a href="">酒仙网葡萄酒</a></li>
					<li><a href="">开放平台招商</a></li>
					<li><a href="">购酒论坛</a></li>
					<li><a href="">名鞋库</a></li>
					<li><a href="">酒仙网团购</a></li>
					<li><a href="">更多</a></li>
				</ul>
			</div>
			<div class="clear"></div>
			<p>统一社会信用代码  91110302554833311D   食品流通许可证编号  SP1103021310005747</p>
			<p>地址：北京市北京经济技术开发区经海五路58号院8号楼1至6层</p>
			<img src="__STATIC__/shop/img/footer-last.png" alt="">
			<p class="last-p">购买前请确认达到法定饮酒年龄！酒仙网不销售任何含酒精产品给18岁以下人士！</p>
		</div>
		<img src="__STATIC__/shop/img/last-img.png" alt="">
	</div>
	<!-- 底层结束 -->

	<div id="left">
		<ul>
			<li>1F</li>
			<li>2F</li>
			<li>3F</li>
			<li>4F</li>
			<li>5F</li>
			<li>↑</li>
		</ul>
	</div>
</body>
</html>
