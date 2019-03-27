package cn.ti.demo123;

import cn.ti.demo123.dao.MenuMapper;
import cn.ti.demo123.dao.UserDao;
import cn.ti.demo123.domain.Menu;
import cn.ti.demo123.domain.User;
import cn.ti.demo123.domain.Kin;
import cn.ti.demo123.service.KinService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = {Demo123Application.class})
public class Demo123ApplicationTests {

    @Autowired
    UserDao userDao;
    @Test
    public void contextLoads() {
        List<User> all = userDao.getAll();
        System.out.println(all);
    }
    @Autowired
    KinService kinService;
    @Test
    public void ContextLoades() {
        Kin k = new Kin();
        k.setName("按实际安徽");
        k.setSex(false);
        k.setTime(new Date());
        kinService.add(k);
    }
    @Test
    public void getall() {

        List<Kin> list = kinService.getAll();
        for(Kin k : list){
            System.out.println(k);
        }

    }
    @Autowired
    MenuMapper menuMapper;
    @Test
    public void ContextLoades11() {
        List<Menu> menus =menuMapper.selectAll();
        /*for(Menu m : menus){
            System.out.println(m);
        }*/
        List<Menu> ms = menuMapper.findMenuByParentId(1L);
        for(Menu m : ms){
            System.out.println(m);
        }
    }
    @Test
    public void ContextLoades1122() {
        List<Menu> ms = menuMapper.findAllRecursion();
        for(Menu m : ms){
            System.out.println(m);
        }
    }
    @Test
    public void ContextLoades112112() {
        Menu menu = new Menu();
        menu.setName("asassdfdfgas");
        menu.setUrl("/asasas");
        menu.setMenuid(3L);
        menuMapper.insert(menu);

    }
    @Test
    public void ContextLoades1121122() {
        Menu menu = new Menu();
        menu.setId(7L);
        menu.setName("阿萨斯");
        menu.setUrl("/asasas");
        menu.setMenuid(3L);
        menuMapper.updateByPrimaryKey(menu);
    }

	/*
	 * @Autowired MenuRepository menuRepository;
	 * 
	 * @Test public void ContextLoades1111121122() { Iterable<Menu> all =
	 * menuRepository.findAll(); for (Menu menu : all) { System.out.println(menu); }
	 * 
	 * }
	 */
    @Autowired
    private RedisTemplate redisTemplate;

    @Test
    public void test1() {
        //List<Menu> ms = menuMapper.findMenuByParentId(1L);
        //redisTemplate.opsForValue().set("gg","haha123");
        List<Kin> all = kinService.getAll();
        /*for(Kin m : all){
            System.out.println(m);
        }*/
        //new RedisUtil().lSet("menuList",all);
        //redisTemplate.opsForList().rightPushAll("menuList",all);
        //redisTemplate.getClientList();
            List<Kin> menuList = redisTemplate.opsForList().range("menuList", 0, -1);
        //List<Object> menuList = new RedisUtil().lGet("menuList", 0, -1);
        for(Object m : menuList){
            System.out.println(m);
        }
            System.out.println(menuList);
    }
   /* @Test
    public void text2() {
        List<Object> menuList = redisService.lGet("menuList", 0, -1);
        for(Object m : menuList){
            Kin k=(Kin)m;
            System.out.println(k.getName());
        }
    }*/



}

