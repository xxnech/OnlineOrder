package cc.sgee.order.dao;

import cc.sgee.order.pojo.Product;
import cc.sgee.order.pojo.ProductExample;
import cc.sgee.order.pojo.ProductVO;

import java.util.List;
import java.util.Map;

public interface ProductMapper extends CrudDao<Product>{

    List<Product> selectByExample(ProductExample example);

    /**
     * 商品上线
     * @param name
     */
    void enableStatus(String name);

    /**
     * 商品下线
     * @param name
     */
    void stopStatus(String name);

    /**
     * 设置图片保存的位置
     * @param vo
     */
    void setImageUrl(ProductVO vo);

    /**
     * 随机五条商品
     * @return
     */
    List<Product> randFive();

    boolean findProByCid(int cid);

    List<Map<String, Object>> loadCategoryCount();
}
