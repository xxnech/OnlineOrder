package cc.sgee.order.service.impl;

import cc.sgee.order.dao.CustomerMapper;
import cc.sgee.order.dao.NoticeMapper;
import cc.sgee.order.dao.UserMapper;
import cc.sgee.order.pojo.Customer;
import cc.sgee.order.pojo.Notice;
import cc.sgee.order.pojo.NoticeExample;
import cc.sgee.order.pojo.User;
import cc.sgee.order.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeMapper noticeMapper;
    @Autowired
    private CustomerMapper customerMapper;
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<Notice> list() {
        return noticeMapper.selectByExample(null);
    }

    @Override
    public void save(Notice entity) {
        noticeMapper.insert(entity);
    }

    @Override
    public void del(int id) {
        noticeMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Notice get(int id) {
        return noticeMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Notice> list1() {
        List<Notice> notices = noticeMapper.selectByExample(null);
        for (Notice z: notices){
            Customer customer =customerMapper.selectByPrimaryKey(z.getUserId());
            z.setCustomer(customer);
        }
        return notices;
    }

    @Override
    public void update(Notice notice) {
        noticeMapper.updateByPrimaryKeySelective(notice);
    }
}
