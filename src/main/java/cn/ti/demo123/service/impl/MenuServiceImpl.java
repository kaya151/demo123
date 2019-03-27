package cn.ti.demo123.service.impl;

import cn.ti.demo123.dao.MenuMapper;
import cn.ti.demo123.domain.Menu;
import cn.ti.demo123.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuServiceImpl extends BaseServiceImpl<Menu> implements MenuService {

    @Autowired
    MenuMapper menuMapper;
    @Override
    public List<Menu> findMenuByParentId(Long id) {
        return menuMapper.findMenuByParentId(id);
    }

    @Override
    public List<Menu> findAllRecursion() {
        return menuMapper.findAllRecursion();
    }
}
