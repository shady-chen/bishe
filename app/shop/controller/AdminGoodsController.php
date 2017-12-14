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

use app\shop\model\GoodsModel;
use app\shop\model\GoodsTypeModel;
use cmf\controller\AdminBaseController;


class AdminGoodsController extends AdminBaseController
{
    /**
     * 商品管理
     * @adminMenu(
     *     'name'   => '商品管理',
     *     'parent' => 'shop/AdminIndex/default',
     *     'display'=> true,
     *     'hasView'=> true,
     *     'order'  => 2,
     *     'icon'   => '',
     *     'remark' => '商品管理',
     *     'param'  => ''
     * )
     */
    public function index()
    {
        $goodsModel = new GoodsModel();
        $goodsTypeModel = new GoodsTypeModel();
        $types = $goodsTypeModel->select()->toArray();
        $data = $goodsModel->select()->toArray();
        foreach ($data as $k => $v)
        {
            foreach ($types as $key => $val)
            {
                if($data[$k]['type_id'] == $types[$key]['id'])
                {
                    $data[$k]['type'] = $types[$key]['type'];
                }
            }
        }

        $this->assign('data',$data);
        return $this->fetch();
    }


    public function add()
    {
        $types = GoodsTypeModel::all();
        $this->assign('types',$types);
        return $this->fetch();
    }

    public function addPost()
    {

        $file = request()->file('avatar');
        if($file!=null){
            $info = $file->move('./upload/goods');
            $saveName = 'goods/'.$info->getSaveName();
            $imgUrl = cmf_get_image_url($saveName);

        }else{
            $imgUrl = null;
        }
        $param = $this->request->param();
        $param['img_url'] = $imgUrl;
        $goodsModel = new GoodsModel();
        $data= [];
        $data['type_id'] = $param['type_id'];
        $data['name'] = $param['goods_name'];
        $data['description'] = $param['description'];
        $data['img_url'] = $param['img_url'];
        $data['jhj'] = $param['goods_jhj'];
        $data['shj'] = $param['goods_shj'];
        $data['is_sell'] = $param['goods_is_sell'];
        $data['guige'] = $param['goods_guige'];

        $result  = $goodsModel->save($data);
        if(!$result)
        {
            return $this->error("添加失败");
        }

        return $this->success("添加成功");
    }


}
