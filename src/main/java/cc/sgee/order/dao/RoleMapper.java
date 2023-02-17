package cc.sgee.order.dao;

import cc.sgee.order.pojo.Role;
import cc.sgee.order.pojo.RoleExample;
import java.util.List;

public interface RoleMapper extends SysDao<Role> {

    List<Role> selectByExample(RoleExample example);

}
