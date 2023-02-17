package cc.sgee.order.dao;

import cc.sgee.order.pojo.Notice;
import cc.sgee.order.pojo.NoticeExample;
import java.util.List;

public interface NoticeMapper extends CrudDao<Notice> {

    List<Notice> selectByExample(NoticeExample example);

    /**
     * 资讯审核
     * @param zid
     */
    void shenhe(int zid);

}
