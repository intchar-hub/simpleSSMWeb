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

    public Scholar() {
    }

    public Scholar(String scholar_id, String scholar_name, String school, String major, String profile){
        this.scholar_id=scholar_id;
        this.scholar_name=scholar_name;
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

    public void setScholar_id(String scholar_id) { this.scholar_id = scholar_id; }

    public void setScholar_name(String scholar_name) { this.scholar_name = scholar_name; }

    public void setMajor(String major) { this.major = major; }

    public void setSchool(String school) { this.school = school; }

    public void setProfile(String profile) { this.profile = profile; }
}
