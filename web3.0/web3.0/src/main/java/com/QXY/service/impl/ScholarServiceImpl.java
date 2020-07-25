package com.QXY.service.impl;

import com.QXY.mapper.ScholarMapper;
import com.QXY.pojo.Scholar;
import com.QXY.service.ScholarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;

import java.util.List;

@Service
public class ScholarServiceImpl implements ScholarService {

    @Autowired
    ScholarMapper scholarMapper;

    @Override
    public List<Scholar> getAllScholars(int page, int size) throws Exception{
        PageHelper.startPage(page,size);
        return scholarMapper.getAllScholars();
    }

    @Override
    public List<Scholar> getScholarsBySchool(String school, int page, int size){
        PageHelper.startPage(page,size);
        List<Scholar> list = scholarMapper.getScholarsBySchool(school);
        if(list==null) throw new RuntimeException("目前未收录该学校学者");
        else return list;
    }

    @Override
    public List<Scholar> getScholarsByMajor(String major, int page, int size){
        PageHelper.startPage(page,size);
        List<Scholar> list = scholarMapper.getScholarsByMajor(major);
        if(list==null) throw new RuntimeException("目前未收录该专业学者");
        else return list;
    }

    @Override
    public Scholar getScholarsByID(String scholarId){
        Scholar scholar = scholarMapper.getScholarsByID(scholarId);
        if(scholar==null) throw new RuntimeException("不存在该学者");
        else return scholar;
    }

    @Override
    public List<Scholar> getScholarsByName(String scholar_name) {
        List<Scholar> list=scholarMapper.getScholarsByName(scholar_name);
        if(list==null) throw new RuntimeException("不存在该学者");
        else return list;
    }
}
