/*
author:寇笑宇
create time:7/16
update time:7/20
**/
package com.QXY.pojo;

public class Scholar {

    private String scholar_id;
    private String scholar_name;
    private String school;
    private String major;
    private String profile;

    public Scholar(String name,String school,String major,String profile){
        this.scholar_id=school+name;
        this.scholar_name=name;
        this.school=school;
        this.major=major;
        this.profile=profile;
    }

    @Override
    public String toString() {
        return "Scholar{" +
                "scholar_name='" + scholar_name + '\'' +
                ", school='" + school + '\'' +
                ", major='" + major + '\'' +
                ", profile='" + profile + '\'' +
                '}';
    }

    public String getScholar_id() { return scholar_id; }

    public String getScholar_name() { return scholar_name; }

    public String getSchool() { return school; }

    public String getMajor() { return major; }

    public String getProfile() { return profile; }
}
