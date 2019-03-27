package cn.ti.demo123.dao;

import cn.ti.demo123.domain.Menu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MenuMapper extends BaseMapper<Menu> {
    public List<Menu> findMenuByParentId(Long id);
    public List<Menu> findAllRecursion();
}