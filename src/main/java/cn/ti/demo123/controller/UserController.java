package cn.ti.demo123.controller;

import cn.ti.demo123.domain.Kin;
import cn.ti.demo123.domain.Menu;
import cn.ti.demo123.domain.User;
import cn.ti.demo123.service.KinService;
import cn.ti.demo123.service.MenuService;
import cn.ti.demo123.service.UserService;
import cn.ti.demo123.util.RedisUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    KinService kinService;
    @Autowired
    MenuService menuService;

    @RequestMapping("/page")
    @ResponseBody
    public String pageInfo(@RequestParam(name = "page",required = false,defaultValue = "1") int pageNum, @RequestParam(name = "limit",required = false,defaultValue = "10") int pageSize, ModelAndView model){
        //model.setViewName("index2");
        PageInfo<User> list = userService.findAllUser(pageNum, pageSize);
        List<User> all = list.getList();
        JSONArray json= JSONArray.parseArray(JSON.toJSONString(all));
        String jso = "{\"code\":0,\"msg\":\"\",\"count\":"+list.getTotal()+",\"data\":"+json.toString()+"}";
        return  jso;
    }
    @Autowired
    private RedisUtil redisUtil;

    @RequestMapping("/index")
    public String index(Model model){
        List<Kin> kinList = kinService.getAll();
        model.addAttribute("kinList",kinList);
        List<Menu> allRecursion = menuService.findAllRecursion();
        //redisUtil.lSet("allRecursion", allRecursion,30);
        model.addAttribute("allRecursion",allRecursion);
        return "system/index";
    }
    @RequestMapping("/main")
    public String main(Model model){
        model.addAttribute("names","123456");
        model.addAttribute("listes",userService.getAll());
        return "system/main";
    }
    @RequestMapping("/page1")
    public String pageInfo1(@RequestParam(name = "pageNum",required = false,defaultValue = "1") int pageNum, @RequestParam(name = "pageSize",required = false,defaultValue = "10") int pageSize,Model model){
        PageInfo<User> pageinfo = userService.findAllUser(pageNum, pageSize);
        model.addAttribute("pageinfo",pageinfo);
        //获得当前页
         model.addAttribute("pageNum", pageinfo.getPageNum());
        // 获得一页显示的条数
         model.addAttribute("pageSize", pageinfo.getPageSize());
        // 是否是第一页
         model.addAttribute("isFirstPage", pageinfo.isIsFirstPage());
        // 获得总页数
         model.addAttribute("totalPages", pageinfo.getPages());
        // 是否是最后一页
         model.addAttribute("isLastPage", pageinfo.isIsLastPage());

        return "system/page";
    }
    @RequestMapping("/findMenuByParentId")
    @ResponseBody
    public List<Menu> findMenuByParentId(Long id){
        return menuService.findMenuByParentId(id);
    }


}
