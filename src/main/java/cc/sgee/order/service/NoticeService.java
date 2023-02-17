package cc.sgee.order.service;

import cc.sgee.order.pojo.Notice;

import java.util.List;

/**
 * 资讯
 */
public interface NoticeService extends CrudService<Notice> {

    /**
     * 连带未审核的资讯
     * @return
     */
    List<Notice> list1();

    void update(Notice notice);
}
