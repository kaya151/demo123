package cn.ti.demo123.service;

import cn.ti.demo123.domain.User;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface UserService {
    public List<User> getAll();
    PageInfo<User> findAllUser(int pageNum,int pageSize);
}
