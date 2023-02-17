package cc.sgee.order.dao;

import cc.sgee.order.pojo.RolePermission;
import cc.sgee.order.pojo.RolePermissionExample;
import java.util.List;

public interface RolePermissionMapper extends SysDao<RolePermission>{

    List<RolePermission> selectByExample(RolePermissionExample example);

}
