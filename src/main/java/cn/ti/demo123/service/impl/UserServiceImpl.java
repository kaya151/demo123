package cn.ti.demo123.service.impl;

import cn.ti.demo123.dao.UserDao;
import cn.ti.demo123.domain.User;
import cn.ti.demo123.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;
    @Override
    public List<User> getAll() {
        return userDao.getAll();
    }

    @Override
    public PageInfo<User> findAllUser(int pageNum, int pageSize) {
        //将参数传给这个方法就可以实现物理分页了，非常简单。
        PageHelper.startPage(pageNum,pageSize);
        List<User> list = userDao.getAll();
        PageInfo result = new PageInfo(list);
        return result;
    }
}
