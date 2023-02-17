package cc.sgee.order.dao;

import cc.sgee.order.pojo.Order;
import cc.sgee.order.pojo.OrderExample;
import java.util.List;

public interface OrderMapper extends CrudDao<Order>{

    List<Order> selectByExample(OrderExample example);

    String getAllTurnover();
}
