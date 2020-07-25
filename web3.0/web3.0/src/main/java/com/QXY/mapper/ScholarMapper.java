/*
author:寇笑宇
create time:7/16
update time:7/24
**/
package com.QXY.mapper;

import com.QXY.pojo.Scholar;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ScholarMapper {
    List<Scholar> getAllScholars();

    List<Scholar> getScholarsBySchool(@Param("school")String school);

    List<Scholar> getScholarsByMajor(@Param("major")String major);

    Scholar getScholarsByID(@Param("scholar_id")String scholar_id);

    //通过姓名进行模糊查询
    List<Scholar> getScholarsByName(@Param("scholar_name")String scholar_name);
}
