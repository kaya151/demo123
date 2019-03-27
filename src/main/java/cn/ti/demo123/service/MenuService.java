package cn.ti.demo123.service;

import cn.ti.demo123.domain.Menu;

import java.util.List;

public interface MenuService extends BaseService<Menu> {
    List<Menu> findMenuByParentId(Long id);
    List<Menu> findAllRecursion();
}
