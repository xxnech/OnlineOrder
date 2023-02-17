package cc.sgee.order.dao;

import cc.sgee.order.pojo.OrderItem;
import cc.sgee.order.pojo.OrderItemExample;
import java.util.List;

public interface OrderItemMapper extends CrudDao<OrderItem>{

    List<OrderItem> selectByExample(OrderItemExample example);

}
