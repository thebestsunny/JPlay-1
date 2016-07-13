package com.action;

import com.opensymphony.xwork2.ActionContext;
import com.service.replyService;

import java.util.Map;

/**
 * Created by Admin on 2016/6/27.
 */
public class replyAction extends baseAction {
    private replyService replyService;
    private int replyId;
    private String reason;

    public String report(){
        Map Session = ActionContext.getContext().getSession();
        String username = (String)Session.get("username");
        replyService.reportReply(replyId,username,reason);
        return SUCCESS;
    }

    public String thumbCount(){
        replyService.replyThumbCount(replyId);
        return SUCCESS;
    }

    public com.service.replyService getReplyService() {
        return replyService;
    }

    public void setReplyService(com.service.replyService replyService) {
        this.replyService = replyService;
    }

    public int getReplyId() {
        return replyId;
    }

    public void setReplyId(int replyId) {
        this.replyId = replyId;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
}
