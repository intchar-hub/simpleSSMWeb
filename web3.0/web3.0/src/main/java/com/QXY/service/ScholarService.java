/*
author:寇笑宇
create time:7/16
update time:7/20
**/
package com.QXY.service;

import com.QXY.pojo.Scholar;

import java.util.List;

public interface ScholarService {

    List<Scholar> getAllScholars(int page, int size) throws Exception;

    List<Scholar> getScholarsBySchool(String school, int page, int size);

    List<Scholar> getScholarsByMajor(String major, int page, int size);

    Scholar getScholarsByID(String scholarId);

    List<Scholar> getScholarsByName(String scholar_name);
}
