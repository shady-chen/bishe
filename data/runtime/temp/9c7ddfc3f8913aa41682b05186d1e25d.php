<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:38:"themes/simpleboot3/shop\index\buy.html";i:1513602023;s:42:"themes/simpleboot3/shop\public\header.html";i:1513863841;s:35:"themes/simpleboot3/public\head.html";i:1513602023;s:39:"themes/simpleboot3/public\function.html";i:1513602023;s:42:"themes/simpleboot3/shop\public\footer.html";i:1513773612;}*/ ?>
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
<style>
     #purchase
     {
          width:1200px;
          margin:0 auto;
          /*border: 1px solid #000;*/
         margin-top:15px;
         padding-bottom:60px;
     }
     .clear{
          clear: both;
     }
     .goods
     {
          height:200px;
          width:100%;
          background: #e2e2e2;
     }
     .goods>.left
     {
          float: left;
          width:25%;
          height:100%;
     }
     .goods>.right
     {
          float: left;
          width:75%;
          height:100%;
          
     }
     .goods>.left img
     {
          width:100%;
          height:100%;
          float: left;
     }
     .good_attributes
     {
          width:20%;
          height:100%;
          float: left;
     }
     .jieshao
     {
         text-align:center;
          height:50%;
          line-height:100px;
          color: #000;
         font-size:24px;
     }
    .goods_name,.goods_guige,.goods_shj,.goods_count
    {
        font-size:26px;
        text-align: center;
        color: #330066;
        line-height:28px;
    }
     .goods_name{
         font-size:18px;
     }
     .goods_count
     {
         height:30px;
         line-height:30px;
     }
     .goods_shj
     {
         color: #ff5a4d;
     }
     .user_profile
     {
         margin-top:15px;
         color:#000;
         border-top:1px solid #000;
         font-size:24px;
     }
     .user_profile h2
     {
         font-size: 24px;
         height:50px;
         margin:15px 0;
         line-height:50px;
     }
    .choose-add
    {
        font-size:18px;
        width:13%;
        float: left;
        height:50px;
        line-height:50px;
        background: #a8a8a8;
    }
    #address
    {
        width:87%;
        height:50px;
        font-size:18px;
        float: left;
        text-indent:10px;

    }
    .phone{
        height:50px;
        line-height:50px;
        margin-top:25px;
    }
    .for-phone
    {
        float: left;
        width:13%;
        background: #a8a8a8;
        font-size:18px;
    }
    #phone{
        border:1px solid rgb(169, 169, 169);
        width:87%;
        height:50px;
        font-size:18px;
        float: left;
        box-sizing:border-box;
        font-weight:700;
        text-indent:10px;

    }
    .star
    {
        color: red!important;
        font-size: 24px;
    }
    .text-center
    {
        text-align: center!important;
    }

    .pay-way
    {
        height:50px;
        line-height:50px;
        margin-top:25px;
        font-size:18px;
    }
    .for-pay
    {
        float: left;
        width:13%;
        background: #a8a8a8;
        font-size:18px;
    }
    input[name=pay-way],input[name=send-way]
    {
        height:30px;
        width:30px;
        margin-left:15px;
    }
    .btn{
        height:50px;
        line-height:50px;
        margin-top:25px;
    }
    .total
    {
        float:right;
        font-size:18px;
    }
    .ok-btn
    {
        float: right;
        background: #50ffaf;
        color: #fff;
        font-size:18px;
        padding:10px 35px;
        cursor:pointer;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;

    }
    .reduce,.add-count
    {
        height:30px;
        width:30px;
        display: inline-block;
        background: gray;
        cursor: pointer;
        -webkit-user-select: none;
    }
    .count
    {
        width:30px;
        height: 30px;
        line-height:30px;
        background: #fff;
        font-size:16px;
        display: inline-block;
        -webkit-user-select: none;
    }
</style>
<!--main-->
     <div id="purchase">
         <!--商品详情-->
         <div class="goods">
              <div class="left">
                   <img src="<?php echo $data['img_url']; ?>" alt="">
              </div>
               <div class="right">
                    <div class="good_attributes">
                         <p class="jieshao">
                              商品名称
                         </p>
                         <p class="goods_name">
                             <?php echo $data['name']; ?>
                         </p>
                    </div>
                   <div class="good_attributes">
                       <p class="jieshao">
                           商品规格
                       </p>
                       <p class="goods_guige">
                           <?php echo $data['guige']; ?>
                       </p>
                   </div>
                   <div class="good_attributes">
                       <p class="jieshao">
                           商品价格
                       </p>
                       <p class="goods_shj">
                           <?php echo $data['shj']; ?>￥
                       </p>
                   </div>

                   <div class="good_attributes">
                       <p class="jieshao">
                           购买数量
                       </p>
                       <p class="goods_count">
                           <span class="reduce" onclick="reduce()">-</span> <span class="count">1</span> <span class="add-count" onclick="addCount()">+</span>
                       </p>
                   </div>



                   <div class="good_attributes">
                       <p class="jieshao">
                           商品总价
                       </p>
                       <p class="goods_shj">
                           <span class="star" id="total-price"><?php echo $data['shj']; ?></span>￥
                       </p>
                   </div>
                    <div class="clear"></div>
               </div>

              <div class="clear"></div>
         </div>


         <!--用户信息-->
         <div class="user_profile">
             <h2>填写收货信息</h2>
             <div class="add">
                 <label for="address" class="choose-add text-center"><span class="star">*</span>请选择收货地址</label>

                     <?php if(!empty($addlist)): ?>
                        <select name="address" id="address">
                         <?php if(is_array($addlist) || $addlist instanceof \think\Collection || $addlist instanceof \think\Paginator): $i = 0; $__LIST__ = $addlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                             <option value="<?php echo $vo['id']; ?>">
                                 <?php echo $vo['address']; ?>
                             </option>
                         <?php endforeach; endif; else: echo "" ;endif; ?>
                        </select>
                     <?php else: ?>
                         <input type="text" name="address" id="address" value="" style="border: 1px solid #000;box-sizing: border-box;" placeholder="请输入您的收货地址..">
                     <?php endif; ?>



             </div>
                <div class="clear"></div>

             <div class="phone">
                 <label for="phone" class="for-phone text-center"><span class="star">*</span>收货手机号码</label>
                 <input type="text" id="phone"  name="phone" value="<?php echo $cur_user['mobile']; ?>" placeholder="请输入您的收货号码..">
             </div>

                <div class="clear"></div>
             <div class="pay-way">
                 <label  class="for-pay text-center"><span class="star">*</span>支付方式</label>
                  <input type="radio" name="pay-way" value="1" checked>支付宝
                  <input type="radio" name="pay-way" value="2">微信
                  <input type="radio" name="pay-way" value="3">货到付款
             </div>


               <div class="clear"></div>
             <div class="pay-way">
                 <label  class="for-pay text-center">配送方式</label>
                 <input type="radio" name="send-way" value="1" checked>顺丰
                 <input type="radio" name="send-way" value="2">中通
                 <input type="radio" name="send-way" value="3">韵达
                 <span class="star pull-right">不选的情况下,默认是款顺丰</span>
             </div>


             <div class="clear"></div>

             <div class="pay-way">
                 <label  class="for-pay text-center">备注</label>
                 <textarea name="bz" placeholder="不要太甜,还是不要太辣?" id="txt-bz" style="width: 86%;height: 50px;box-sizing:border-box;font-size: 18px;text-indent:15px;line-height: 50px;" ></textarea>
             </div>
             <div class="clear"></div>
             <div class="btn">
                <div class="total">
                    总价: <span class="star" id="last-total"><?php echo $data['shj']; ?></span> <span class="star">￥</span>
                </div>
             </div>

                <div class="clear"></div>
             <button class="ok-btn" onclick="xiaDan()">支付并购买</button>
             <div class="clear"></div>
         </div>
         <div class="clear"></div>
     </div>

<!--/main-->

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
<script>
    //支付并购买
    function xiaDan()
    {
        console.log("<?php echo $data['id']; ?>");
       // return;
        $.ajax
        ({
            url:"<?php echo url('shop/index/purchase'); ?>",
            type:"POST",
            data:
            {
                "address":$('#address').val(),
                "goods_id":"<?php echo $data['id']; ?>",
                "user_id":"<?php echo $cur_user['id']; ?>",
                "goods_count":parseInt($(".count").html()),
                "phone":$("#phone").val(),
                "pay_way":$("input[name=pay-way]").val(),
                "send_way":$("input[name=send-way]").val(),
                "bz":$('#txt-bz').val(),
            },
            dataType:"json",
            success:function(data)
            {
                console.log(data);
                $("#task").show();
                $("#tips .tips-body").html(data.msg);
            },
            error:function(msg)
            {
                console.log(msg);
            }
        });
    }



    function reduce()
    {
        var count = parseInt($(".count").html());
        if(count == 1)
        {
            return false;
        }
        count--;
        $(".count").html(count);

        $('#total-price,#last-total').html(count*parseInt("<?php echo $data['shj']; ?>"));
    }

    function addCount()
    {
        var count = parseInt($(".count").html());
        count++;
        $(".count").html(count);
        $('#total-price,#last-total').html(count*parseInt("<?php echo $data['shj']; ?>"));
    }


</script>