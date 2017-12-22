<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:46:"themes/simpleboot3/shop\register\register.html";i:1513956589;s:35:"themes/simpleboot3/public\head.html";i:1513602023;s:39:"themes/simpleboot3/public\function.html";i:1513602023;s:38:"themes/simpleboot3/public\scripts.html";i:1513602023;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>register</title>
	<link rel="stylesheet" href="__STATIC__/shop/css/register.css">
	<script src="__STATIC__/shop/js/ajax3.0-min.js"></script>
	<script src="__STATIC__/shop/js/jQuery.js"></script>

	<script src="__STATIC__/shop/js/register.js"></script>
	
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
<body >
	<div class="header">
		<div class="top">
			<!-- logo -->
			<img src="__STATIC__/shop/img/logo.png" alt="">
			<img src="__STATIC__/shop/img/logo-left.jpg" alt="">
			<div class="top-right">
				<span>欢迎来到酒仙网！</span>
				<span><a href="">免费注册</a></span>
				<span>帮助中心</span>
			</div>

		</div>
	</div>
	<div class="content" >
		<div class="main" >
		 	<div class="register" style="background:url(__STATIC__/shop/img/autoplay.jpg);">
		 		 <form class="js-ajax-form" action="<?php echo url('shop/Register/doRegister'); ?>" method="post">

                            <div class="form-group">
                                <input type="text" name="username" placeholder="手机号" class="form-control"
                                       id="js-mobile-input">
                            </div>

                            <?php if(empty($is_open_registration) || (($is_open_registration instanceof \think\Collection || $is_open_registration instanceof \think\Paginator ) && $is_open_registration->isEmpty())): ?>
                                <div class="form-group">
                                    <div style="position: relative;">
                                        <input type="text" name="code" placeholder="手机验证码" style="width:170px;"
                                               class="form-control">
                                        <a class="btn btn-success js-get-mobile-code"
                                           style="width: 163px;position: absolute;top:0;right: 0;"
                                           data-wait-msg="[second]秒后才能再次获取" data-mobile-input="#js-mobile-input"
                                           data-url="<?php echo url('user/VerificationCode/send'); ?>"
                                           data-init-second-left="60">获取手机验证码</a>
                                    </div>
                                </div>
                            <?php endif; ?>

                            <div class="form-group">
                                <input type="password" name="password" placeholder="密码" class="form-control">
                            </div>

                           

                            <div class="form-group">
                                <button class="btn btn-primary btn-block js-ajax-submit" type="submit" data-wait="1500"
                                        style="margin-left: 0px;">确定注册
                                </button>
                            </div>

                            <div class="form-group" style="text-align: center;">
                                <p>
                                    已有账号? <a href="<?php echo cmf_url('shop/Login/index'); ?>">点击此处登录</a>
                                </p>
                            </div>
                        </form>
		 	</div>
		</div>
	</div>
	<div class="footer">
		<div class="footer-main">

			<p>购买前请确认达到法定饮酒年龄！酒仙网不销售任何含酒精产品给18岁以下人士！</p>
		</div>		
	</div>
	<div class="mask">
		<p>恭喜注册成功</p>
		<span id="second">5</span>s后自动跳转
	</div>
	<!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="__TMPL__/public/assets/simpleboot3/bootstrap/js/bootstrap.min.js"></script>
    <script src="__STATIC__/js/frontend.js"></script>
	<script>
	$(function(){
		$("#main-menu li.dropdown").hover(function(){
			$(this).addClass("open");
		},function(){
			$(this).removeClass("open");
		});
		
		$("#main-menu a").each(function() {
			if ($(this)[0].href == String(window.location)) {
				$(this).parentsUntil("#main-menu>ul>li").addClass("active");
			}
		});
		
		$.post("<?php echo url('user/index/isLogin'); ?>",{},function(data){
		    console.log(data);
			if(data.code==1){
				if(data.data.user.avatar){
				}

				$("#main-menu-user span.user-nickname").text(data.data.user.user_nickname?data.data.user.user_nickname:data.data.user.user_login);
				$("#main-menu-user li.login").show();
                $("#main-menu-user li.offline").hide();

			}

			if(data.code==0){
                $("#main-menu-user li.login").hide();
				$("#main-menu-user li.offline").show();
			}

		});

        ;(function($){
			$.fn.totop=function(opt){
				var scrolling=false;
				return this.each(function(){
					var $this=$(this);
					$(window).scroll(function(){
						if(!scrolling){
							var sd=$(window).scrollTop();
							if(sd>100){
								$this.fadeIn();
							}else{
								$this.fadeOut();
							}
						}
					});
					
					$this.click(function(){
						scrolling=true;
						$('html, body').animate({
							scrollTop : 0
						}, 500,function(){
							scrolling=false;
							$this.fadeOut();
						});
					});
				});
			};
		})(jQuery); 
		
		$("#backtotop").totop();
		
		
	});
	</script>


</body>
</html>