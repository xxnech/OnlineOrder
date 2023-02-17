package cc.sgee.order.dao;

import cc.sgee.order.pojo.Permission;
import cc.sgee.order.pojo.PermissionExample;
import java.util.List;

public interface PermissionMapper extends SysDao<Permission>{

    List<Permission> selectByExample(PermissionExample example);

}
