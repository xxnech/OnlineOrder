package cc.sgee.order.service.impl;

import cc.sgee.order.dao.CategoryMapper;
import cc.sgee.order.dao.ProductMapper;
import cc.sgee.order.pojo.Category;
import cc.sgee.order.pojo.CategoryExample;
import cc.sgee.order.pojo.Product;
import cc.sgee.order.service.ForeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ForeServiceImpl implements ForeService {

    @Autowired
    private CategoryMapper categoryMapper;
    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<Category> listToThree() {
        CategoryExample example = new CategoryExample();
//        example.createCriteria().andIdBetween(1,4); //从1开始计数
        List<Category> categories = categoryMapper.selectByExample(example);
        return categories;
    }

    @Override
    public List<Product> getFivePro() {
        return productMapper.randFive();
    }


}
