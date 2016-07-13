package com.dao.daoImpl;

import com.dao.replyReportDAO;
import com.pojo.ReplyReport;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * Created by frank_xiang on 2016/7/8.
 */
public class replyReportDAOImpl extends HibernateDaoSupport implements replyReportDAO {
    @Override
    public void createReplyReport(ReplyReport replyReport) {
        getHibernateTemplate().save(replyReport);
    }

    @Override
    public void deleteReplyReport(int replyId, int userId) {
        getHibernateTemplate().delete(getHibernateTemplate().find("from ReplyReport as replyreport where replyreport.replyId = ? and replyreport.userId = ?",replyId,userId).get(0));
        getHibernateTemplate().flush();
    }
}
