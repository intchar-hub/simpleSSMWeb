package com.QXY.service.impl;

import com.QXY.mapper.ScholarMapper;
import com.QXY.pojo.Scholar;
import com.QXY.service.ScholarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScholarServiceImpl implements ScholarService {

    @Autowired
    ScholarMapper scholarMapper;

    @Override
    public List<Scholar> getAllScholars() {
        return scholarMapper.getAllScholars();
    }
}
