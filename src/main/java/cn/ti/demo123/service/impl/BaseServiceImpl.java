package cn.ti.demo123.service.impl;

import cn.ti.demo123.dao.BaseMapper;
import cn.ti.demo123.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;

@Transactional(readOnly = true)
public class BaseServiceImpl<T> implements BaseService<T> {

    @Autowired
    BaseMapper<T> baseMapper;

    @Override
    @Transactional
    public int delete(Serializable id) {
        return baseMapper.deleteByPrimaryKey(id);
    }

    @Override
    @Transactional
    public int add(T t) {
        return baseMapper.insert(t);
    }

    @Override
    public T getOne(Serializable id) {
        return baseMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<T> getAll() {
        return baseMapper.selectAll();
    }

    @Override
    @Transactional
    public int edit(T t) {
        return baseMapper.updateByPrimaryKey(t);
    }
}
