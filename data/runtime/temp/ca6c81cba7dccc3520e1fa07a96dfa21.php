<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:43:"themes/simpleboot3/shop\index\gouwuche.html";i:1513602023;s:42:"themes/simpleboot3/shop\public\header.html";i:1513602023;}*/ ?>
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
                    <a href="#">我的酒仙</a>
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

<link rel="stylesheet" href="__STATIC__/shop/css/gouwuche.css">
<!--main-->
    <?php if(!(empty($goodslist) || (($goodslist instanceof \think\Collection || $goodslist instanceof \think\Paginator ) && $goodslist->isEmpty()))): ?>
        <div id="purchase">
            <!--商品详情-->
            <div class="operation">
                <a href="" class="pull-right select-all">全选</a>
                <a href="" class="pull-right delete">删除</a>
                <div class="clear"></div>
            </div>

            <?php if(is_array($goodslist) || $goodslist instanceof \think\Collection || $goodslist instanceof \think\Paginator): $i = 0; $__LIST__ = $goodslist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$data): $mod = ($i % 2 );++$i;?>
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
                                <span class="reduce" onclick="reduce(<?php echo $i; ?>)">-</span> <span class="count  count-<?php echo $i; ?>">1</span> <span class="add-count" onclick="addCount(<?php echo $i; ?>)">+</span>
                            </p>
                        </div>



                        <div class="good_attributes">
                            <p class="jieshao">
                                商品总价
                            </p>
                            <p class="goods_total">
                                <span class="star total-price" id="total-price-<?php echo $i-1; ?>"><?php echo $data['shj']; ?></span>￥
                            </p>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                    <div class="choose">
                        <input type="checkbox" name="checkbox-<?php echo $i; ?>"  class="choose-input" value="<?php echo $data['id']; ?>" checked>
                    </div>
                </div>
            <?php endforeach; endif; else: echo "" ;endif; ?>
            <div class="tot">
                <button class="ok-btn" onclick="showTask()">支付并购买</button>
                <p class="ttt pull-right">
                    总价:<span class="star" id="final-price">0</span>￥
                </p>
            </div>
            <div class="clear"></div>

        </div>
        <?php else: ?>
        <div id="purchase2">
            <h3 style="font-size: 20px;">暂无数据 <a href="<?php echo url('shop/index/index'); ?>" style="font-size: 20px;color: blue;">去看看吧...</a></h3>
        </div>
    <?php endif; ?>

<!--task-->

<div id="task">
    <div id="tips">
        <p class="tips-title">提示</p>
        <div class="tips-body">
            正在确定...
        </div>
        <div class="tips-footer">

            <button class="close-task">关闭</button>
        </div>
    </div>

    <div id="tips2">
        <h3>填写收货信息</h3>
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
            <textarea name="bz" placeholder="不要太甜,还是不要太辣?" id="txt-bz" style="width: 86%;height: 50px;box-sizing:border-box;font-size: 16px;text-indent:15px;line-height: 50px;" ></textarea>
        </div>
        <button class="ok-btn" onclick="buyAll()" style="display: block;margin:15px auto;float: none;">OK</button>
    </div>
</div>

<!--/task-->
<script>

    //-1
    function reduce(i)
    {
        var count = parseInt($(".count").eq(i-1).html());
        if(count == 1)
        {
            return false;
        }
        count--;
        $(".count").eq(i-1).html(count);

        $('#total-price-'+(i-1)).html(count*parseInt($('.goods_shj').eq(i-1).html()));
        totalPrice()

    }
    //+1
    function addCount(i)
    {
        var count = parseInt($(".count").eq(i-1).html());
        count++;
        $(".count").eq(i-1).html(count);

        $('#total-price-'+(i-1)).html(count*parseInt($('.goods_shj').eq(i-1).html()));
        totalPrice()
    }
    //总价
    function totalPrice()
    {
        var sum = 0;
        for(var i = 0;i<$('.total-price').length;i++)
        {
            sum += parseInt($('.total-price').eq(i).html());
        }
        $("#final-price").html(sum);
    }
    totalPrice()

    function buyAll()
    {
        $("#task #tips2").hide();
        $("#task").show();
        $("#task #tips").show();
        var x= 0;
        for(var i = 0;i<$('.choose-input').length;i++)
        {

            if($('.choose-input').eq(i).is(':checked'))
            {
                x++;
                buyOne($('.choose-input').eq(i).val(),$(".count").eq(i).html(),x);
            }
        }


    }
    var ringS = 0;
    function buyOne(goods_id,goods_count,num)
    {
        var g_id = goods_id;
        var g_count = goods_count;
        var numb = num;
        $.ajax({
            url:"<?php echo url('shop/index/purchase'); ?>",
            type:"post",
            data:{
                "pay_type_id":$("input[name=pay-way]").val(),
                "bz":$('#txt-bz').val(),
                "phone":$("#phone").val(),
                "address":$('#address').val(),
                "pay_way":$("input[name=pay-way]").val(),
                "send_way":$("input[name=send-way]").val(),
                "goods_id":g_id,
                "goods_count":g_count,
                "user_id":"<?php echo $cur_user['id']; ?>",
                "origin":"gouwuche",
            },
            success:function()
            {
                ringS++
                var str = "共" + ringS + "个成功";
                $('.tips-body').html(str);
            },
            error:function()
            {

            }
        });
    }
    //show task
    function showTask()
    {
        $("#task #tips").hide();
        $("#task").show();
        $("#task #tips2").show();
    }



    // task

        $('#task').click(function(e){
            if(e.target != this)
            {
                return ;
            }
            $(this).hide();
        });
        $('.close-task').click(function(){
            $('#task').hide();
            window.location.reload(true);
        });

</script>
