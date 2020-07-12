/*
author:寇笑宇
create time:7/11
update time:7/11
**/
package com.ssm.pojo;

public class User {
    private String username;
    private String password;
    private Integer state;      //用户状态

    public User() {
    }

    public User(String username,String password){
        this.username = username;
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
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

    public Integer getState() { return state; }

    public void setState(Integer state) { this.state = state; }
}
