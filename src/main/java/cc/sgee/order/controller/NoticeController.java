package cc.sgee.order.controller;

import cc.sgee.order.pojo.*;
import cc.sgee.order.service.NoticeService;
import cc.sgee.order.service.UserService;
import cc.sgee.order.util.Page;
import cc.sgee.order.util.UploadUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.sql.Date;
import java.util.List;

@Controller
@RequestMapping("/notice")
public class NoticeController {

    @Autowired
    private NoticeService noticeService;
    @Autowired
    private UserService userService;

    @RequestMapping("/list")
    public String list(Page page, Model model){
        PageHelper.offsetPage(page.getStart(),page.getCount());//分页查询
        List<Notice> list = noticeService.list1();
        int total = (int) new PageInfo<>(list).getTotal();//总条数
        page.setTotal(total);

        model.addAttribute("list",list);
        model.addAttribute("totals",total);
        return "cstpage/notice-list";
    }

    @RequestMapping("/addNotice")
    public String addNotice(Model model){
        return "cstpage/notice-add";
    }

    @RequestMapping("/add")
    public String add(Notice notice) {
        if (notice.getId() == null) {
            String userName = (String) SecurityUtils.getSubject().getPrincipal();
            User user = userService.getByName(userName);
            notice.setUserId(Integer.parseInt(String.valueOf(user.getId())));
            notice.setPushDate(new Date(System.currentTimeMillis()));
            noticeService.save(notice);
        }
        else {
            noticeService.update(notice);
        }
        return "redirect:list";
    }

    @RequestMapping("/editNotice")
    public String add(int id, Model model) {
        Notice notice = noticeService.get(id);
        model.addAttribute("notice",notice);
        return "cstpage/notice-add";
    }

    @RequestMapping("/del")
    public String del(int id){
        noticeService.del(id);
        return "redirect:list";
    }

}
