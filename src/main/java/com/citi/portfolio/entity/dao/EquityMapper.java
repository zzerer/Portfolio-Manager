package com.citi.portfolio.entity.dao;

import com.citi.portfolio.entity.Equity;

public interface EquityMapper {
    int deleteByPrimaryKey(Integer equityid);

    int insert(Equity record);

    int insertSelective(Equity record);

    Equity selectByPrimaryKey(Integer equityid);

    int updateByPrimaryKeySelective(Equity record);

    int updateByPrimaryKey(Equity record);
}