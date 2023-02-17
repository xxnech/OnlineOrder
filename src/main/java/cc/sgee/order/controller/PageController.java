package cc.sgee.order.controller;

import cc.sgee.order.pojo.Customer;
import cc.sgee.order.pojo.Order;
import cc.sgee.order.pojo.Product;
import cc.sgee.order.service.CustomerService;
import cc.sgee.order.service.OrderService;
import cc.sgee.order.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Map;

/**
 * 专门用于显示页面的控制器
 */
@Controller
public class PageController {

    @Autowired
    CustomerService customerService;
    @Autowired
    ProductService productService;
    @Autowired
    OrderService orderService;

    /**
     * 后台主页页面
     * @return
     */
    @RequestMapping("/index")
    public String index(Model model){
        //用户数、商品数、订单数、营业额加入Session
        List<Customer> customerList = customerService.list();
        List<Product> productList = productService.list();
        List<Order> orderList = orderService.list();
        String turnover = orderService.getAllTurnover();
        List<Map<String,Object>> category = productService.loadCategoryCount();
        model.addAttribute("userCount",customerList.size());
        model.addAttribute("productCount",productList.size());
        model.addAttribute("orderCount",orderList.size());
        model.addAttribute("category",category);
        model.addAttribute("turnover",turnover);
        return "index";
    }

    /**
     * 后台登陆页面
     * @return
     */
    @RequestMapping(value="login",method=RequestMethod.GET)
    public String login(){
        return "login";
    }

    /**
     * 无权限页面
     * @return
     */
    @RequestMapping("/unauthorized")
    public String noPerms(){
        return "unauthorized";
    }



}
