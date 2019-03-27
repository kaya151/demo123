package cn.ti.demo123.dao;

import java.io.Serializable;
import java.util.List;

public interface BaseMapper<T> {
    int deleteByPrimaryKey(Serializable id);
    int insert(T t);
    T selectByPrimaryKey(Serializable id);
    List<T> selectAll();
    int updateByPrimaryKey(T t);
}
