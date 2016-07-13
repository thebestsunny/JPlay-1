package com.action;

import com.pojo.User;
import com.service.userService;

/**
 * Created by Admin on 2016/6/27.
 */
public class registerAction extends baseAction {
    private userService userService;
    private String username;
    private String password;
    private String email;

    public String execute(){
        User user = new User();
        user.setUsername(username);
        byte[] pwd = password.getBytes();
        user.setPwdhash(pwd);
        byte[] eml = email.getBytes();
        user.setEmail(eml);
        Boolean ret = userService.validateRegister(username, password,email);
        if(ret == true) {
            user.setStatus(new Byte("0"));
            userService.createUser(user);
            return SUCCESS;
        }
        else
            return ERROR;
    }

    public com.service.userService getUserService() {
        return userService;
    }

    public void setUserService(com.service.userService userService) {
        this.userService = userService;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
