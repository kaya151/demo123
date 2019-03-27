package cn.ti.demo123.service;

import java.io.Serializable;
import java.util.List;

public interface BaseService<T> {
    int delete(Serializable id);
    int add(T t);
    T getOne(Serializable id);
    List<T> getAll();
    int edit(T t);

}
