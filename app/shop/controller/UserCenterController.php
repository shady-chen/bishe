<?php

namespace app\shop\controller;


use app\shop\model\AddressModel;
use app\shop\model\CollectionModel;
use app\shop\model\GoodsModel;
use app\shop\model\Order2Model;
use app\shop\model\UserModel;
use cmf\controller\HomeBaseController;
use think\Validate;


class UserCenterController extends HomeBaseController
{

    public function index()
    {
       return $this->fetch();
    }


    /**
     * 编辑用户资料提交
     */
    public function editPost()
    {
        if ($this->request->isPost()) {
            $validate = new Validate([
                'user_nickname' => 'chsDash|max:32',
            ]);
            $validate->message([
                'user_nickname.chsDash' => '昵称只能是汉字、字母、数字和下划线_及破折号-',
                'user_nickname.max' => '昵称最大长度为32个字符',
            ]);
            $data = cmf_get_current_user();
            $data['user_nickname'] = $this->request->post('user_nickname');
            $data['mobile'] = $this->request->post('mobile');
            $data['user_email'] = $this->request->post('user_email');
            if (!$validate->check($data)) {
                $this->error($validate->getError());
            }
            $editData = new UserModel();
            if ($editData->editData($data)) {
                $this->success("保存成功！", "shop/user_center/index");
            } else {
                $this->error("没有新的修改信息！");
            }
        } else {
            $this->error("请求错误");
        }
    }


    public function collection()
    {
        $user_id = cmf_get_current_user_id();
        $collectionModel = new CollectionModel();
        $data = $collectionModel->all(['user_id'=>$user_id])->toArray();
        $ids = [];
        foreach ($data as $k=>$v)
        {
            $ids[$k] = $v['id'];
        }
        $goodsModel = new GoodsModel();
        $data2 = $goodsModel->all($ids)->toArray();

        $this->assign('data2',$data2);
        return $this->fetch();
    }

    /**
     *  my_order
     */
    public function my_order()
    {
        $user_id = cmf_get_current_user_id();
        $order = new Order2Model();
        $data = $order->all(['user_id'=>$user_id])->toArray();
        $ids = [];
        foreach ($data as $k=>$v)
        {
            $ids[$k] = $v['id'];
        }
        $goodsModel = new GoodsModel();
        $data2 = $goodsModel->all($ids)->toArray();
        $addressModel = new AddressModel();
        foreach ($data as $k=>$v)
        {
            $data[$k]['goods'] = $data2[$k];
            $data[$k]['address'] = $addressModel->get($data[$k]['address_id'])->toArray()['address'];
        }
        $this->assign('data',$data);
        return $this->fetch();
    }

    public function address()
    {
        return $this->fetch();
    }

}