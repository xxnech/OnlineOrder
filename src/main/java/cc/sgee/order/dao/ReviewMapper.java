package cc.sgee.order.dao;

import cc.sgee.order.pojo.Review;
import cc.sgee.order.pojo.ReviewExample;
import java.util.List;

public interface ReviewMapper extends CrudDao<Review>{

    List<Review> selectByExample(ReviewExample example);

}
