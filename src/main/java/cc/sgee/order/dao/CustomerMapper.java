package cc.sgee.order.dao;

import cc.sgee.order.pojo.Customer;
import cc.sgee.order.pojo.CustomerExample;
import java.util.List;

public interface CustomerMapper extends CrudDao<Customer>{

    List<Customer> selectByExample(CustomerExample example);

    /**
     * 开启用户会员状态
     * @param id
     */
    void enableStatus(int id);

}
