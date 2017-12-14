<?php

namespace app\shop\controller;

use app\shop\model\AddressModel;
use app\shop\model\GoodsModel;
use app\shop\model\Order2Model;
use app\shop\model\ShoppingCartModel;
use app\shop\model\UserModel;
use cmf\controller\HomeBaseController;
use think\Request;
use think\Validate;


class IndexController extends HomeBaseController
{
    /**
     * 首页
     * @return mixed
     */
    public function index()
    {
        //找到商品类型
        $goodsModel = new GoodsModel();

        $baijiu = $goodsModel->all(["type_id" => 2]);
        $this->assign('baijiu',$baijiu);
        $user_id = cmf_get_current_user_id();
        if($user_id)
        {
            $this->assign('user',UserModel::get($user_id));
        }
        return $this->fetch();
    }

    /**
     * 显示商品详情页面
     * @return mixed
     */
    public function details()
    {
        $this->checkUserLogin();
        $id = $this->request->param('id');
        $data = GoodsModel::get($id)->toArray();
        $this->assign('data',$data);
        //dump($data);exit;
        return $this->fetch();
    }


    /**
     * 加入购物车
     * @return json
     */
    public function jointCart()
    {
        $user_id = cmf_get_current_user_id();

        $shoppongCartModel = new ShoppingCartModel();
        $countInCart = $shoppongCartModel->all(['user_id'=>$user_id])->toArray();
        $shuliang = count($countInCart);
        $param = $this->request->param();
        $data = [];
        $data['goods_id']  = $param['goods_id'];
        $data['user_id']  = $param['user_id'];
        $data['goods_count']  = $param['goods_count'];
        $res = $shoppongCartModel->get(['goods_id'=>$data['goods_id'],'user_id'=>$user_id]);
        if($res)
        {
            return $this->error('您已将这个商品加入购物车');
        }
        $result = $shoppongCartModel->save($data);
        if(!$result)
        {
            return $this->error('加入购物车失败');
        }
        $shuliang++;
        session("shuliang",$shuliang);
        return $this->success('加入购物车成功');
    }


    /**
     * 用户下单
     *  @return json
     */
    public function purchase(Request $request)
    {
        //设置默认的返回值  status = 0 失败     status = 1 成功
        $returnJson = [];
        $returnJson['status'] = 0;
        $returnJson['msg']    = "下单失败";
        if($request->isAjax())
        {

            $param = $request->param();

            // 判断是否从购物车提交上来的数据,是的话要删除购物车中的数据;
            if($param['origin'] == 'gouwuche')
            {
                $this->removeCart($param['goods_id'],cmf_get_current_user_id());
            }


            $data2 = [];
            $oder2Model = new Order2Model();
            $data2['pay_type_id'] =$param['pay_way'];
            $data2['beizhu'] =$param['bz'];
            $data2['phone'] =$param['phone'];
            $data2['kuaididanhao'] ='';
            if(preg_match('/^\d+$/i', $param['address']))
            {
                $data2['address_id'] = $param['address'];
            }
            else
            {
                $add = [];
                $add['user_id'] = cmf_get_current_user_id();
                $add['address'] = $param['address'];
                $addressModel = new AddressModel();
                $addressModel->save($add);
                $data2['address_id'] = $addressModel->getLastInsID();

            }
            //$data2['address_id'] = $param['address'];
            $data2['is_success'] = 0;
            $data2['send_id'] = $param['send_way'];
            $data2['goods_id']  = $param['goods_id'];
            $data2['user_id']  = $param['user_id'];
            $data2['goods_count']  = $param['goods_count'];
            $data2['order_no'] = shady_rand_order_no();
            $data2['is_pay'] = 1;


            $validate = new Validate([
                'pay_type_id' => 'require',
               // 'phone' => 'require|min:6|max:32',
                //'address_id' => 'require|number|min:1|max:10',
                'address_id' => 'require',
                'send_id' => 'require',
                'goods_id' => 'require',
                'goods_count' => 'require',
            ]);
            $validate->message([
                'address_id.require' => '地址不能为空',
                //'address_id.number' => '地址格式不对',
                'send_id.require' => '配送方式不能为空',
                'goods_id.require'     => '没有选中商品',
                'goods_count.require'     => '没有选择商品数量',
            ]);

            if (!$validate->check($data2)) {
                return $this->error($validate->getError());
            }

            $result = $oder2Model->save($data2);
            if($result)
            {
                    $returnJson['status'] = 1;
                    $returnJson['msg']    = "下单成功";
            }
            return json($returnJson);
        }
        else
        {
            return json(["msg"=>"系统出现犯错误"]);
        }
    }

    /**
     * 下单详情页面
     * @return mixed
     */
    public function buy()
    {
        $user_id = cmf_get_current_user_id();
        $addressModel = new AddressModel();
        $addressList = $addressModel->all(['user_id'=>$user_id])->toArray();
        $id = $this->request->param('id');
        $data = GoodsModel::get($id)->toArray();
        $this->assign('data',$data);
        $this->assign('addlist',$addressList);
        //dump($data);exit;
        return $this->fetch();
    }


    public function second()
    {
        return $this->fetch();
    }
    public function register()
    {
        return $this->fetch();
    }


    /**
     * 渲染购物车页面
     * @return mixed
     */
    public function gouwuche()
    {
        $this->checkUserLogin();

        $user_id = cmf_get_current_user_id();
        $shoppongCartModel = new ShoppingCartModel();
        $countInCart = $shoppongCartModel->all(['user_id'=>$user_id])->toArray();
        $newArr = [];
        foreach ($countInCart as $k => $v)
        {
            $newArr[$k] = $countInCart[$k]['goods_id'];
        }
        $goodsModel = new GoodsModel();
        $goodsList = $goodsModel->all($newArr)->toArray();
        if(empty($newArr))
        {
            $goodsList = [];
        }
        $this->assign("goodslist",$goodsList);
        $addressModel = new AddressModel();
        $addressList = $addressModel->all(['user_id'=>$user_id])->toArray();
        $this->assign('addlist',$addressList);
        return $this->fetch();
    }


    public function removeCart($goods_id,$userId)
    {
        $shopCartModel = new ShoppingCartModel();
        $shopCartModel->destroy(['user_id'=>$userId,"goods_id"=>$goods_id]);
        $count = session('shuliang');
        $count--;
        session('shuliang',$count);
    }

    /**
     * 退出登录
     */
    public function logout()
    {
        session("user", null);//只有前台用户退出
        session("shuliang", null);//只有前台用户退出
        return redirect("shop/index/index");
    }


}
