<?php
/**
 * Created by PhpStorm.
 * User: PC_02
 * Date: 2017/12/5
 * Time: 17:57
 */

namespace app\shop\controller;


use app\shop\model\GoodsTypeModel;
use cmf\controller\AdminBaseController;

class AdminGoodsTypeController extends AdminBaseController
{
    /**
     * 商品分类列表
     * @adminMenu(
     *     'name'   => '分类管理',
     *     'parent' => 'shop/AdminIndex/default',
     *     'display'=> true,
     *     'hasView'=> true,
     *     'order'  => 1,
     *     'icon'   => '',
     *     'remark' => '商品分类列表',
     *     'param'  => ''
     * )
     */
    public function index()
    {
        $lst = GoodsTypeModel::all();
        $this->assign('lst',$lst);
        return $this->fetch();
    }



    public function add()
    {

        return $this->fetch();
    }


    public function addPost()
    {
        $param = $this->request->param();
        $goodTypeModel = new GoodsTypeModel();
        $result = $goodTypeModel->save($param);
        if(!$result)
        {
            return $this->error('添加失败');
        }
        return $this->success('添加成功');
    }


    public function edit()
    {
        $param = $this->request->param();
        $type_id = $param['type_id'];
        $goodTypeModel = new GoodsTypeModel();
        $data =  $goodTypeModel->get(['id'=>$type_id]);
        $this->assign('data',$data);
        return $this->fetch();
    }

    public function updateType()
    {
        $param = $this->request->param();
        $goodTypeModel = new GoodsTypeModel();
        $goodTypeModel->update($param,$param['id']);
        return $this->success('更新成功');

    }

    public function delete()
    {
        $param = $this->request->param();
        $type_id = $param['type_id'];
        $goodTypeModel = new GoodsTypeModel();
        $goodTypeModel->destroy(['id'=>$type_id]);
        return $this->success('删除成功');
    }
}