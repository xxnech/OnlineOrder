package cc.sgee.order.dao;

import cc.sgee.order.pojo.UserRole;
import cc.sgee.order.pojo.UserRoleExample;
import java.util.List;

public interface UserRoleMapper extends SysDao<UserRole>{

    List<UserRole> selectByExample(UserRoleExample example);

}
