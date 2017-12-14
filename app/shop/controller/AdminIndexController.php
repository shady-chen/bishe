<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2017 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------
namespace app\shop\controller;

use cmf\controller\AdminBaseController;

/**
 * Class AdminIndexController
 * @package app\shop\controller
 * @adminMenuRoot(
 *     'name'   =>'商品管理',
 *     'action' =>'default',
 *     'parent' =>'',
 *     'display'=> true,
 *     'order'  => 30,
 *     'icon'   =>'shopping-basket',
 *     'remark' =>'商品管理'
 * )
 */
class AdminIndexController extends AdminBaseController
{
    /********为了后台添加菜单的时候用的类******/
    public function index()
    {

    }
}
