package cn.ti.demo123.dao;

import cn.ti.demo123.domain.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserDao {
    public List<User> getAll();
}
