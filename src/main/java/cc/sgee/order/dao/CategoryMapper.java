package cc.sgee.order.dao;

import cc.sgee.order.pojo.Category;
import cc.sgee.order.pojo.CategoryExample;
import java.util.List;

public interface CategoryMapper extends CrudDao<Category>{

     List<Category> selectByExample(CategoryExample example);

}
