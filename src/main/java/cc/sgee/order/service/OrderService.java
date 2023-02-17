package cc.sgee.order.service;

import cc.sgee.order.pojo.Order;
import cc.sgee.order.pojo.OrderItem;

import java.util.List;

public interface OrderService extends CrudService<Order> {

    /**
     * 更新订单
     * @param c
     */
    public void update(Order c);

    /**
     * 生成完整订单
     * @param o 订单
     * @param ois 订单项
     * @return
     */
    public float add(Order o,List<OrderItem> ois);

    /**
     * 用户订单列表
     * @param cstid 用户id
     * @return
     */
    public List<Order> list(int cstid);

    /**
     * 获取总营业额
     * @return
     */
    public String getAllTurnover();
}
