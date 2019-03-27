package cn.ti.demo123.controller;

import cn.ti.demo123.domain.Menu;
import cn.ti.demo123.service.MenuService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.elasticsearch.core.query.SearchQuery;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

@Controller
@RequestMapping("/menu")
public class MenuController {
    @Autowired
    MenuService menuService;
    
    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(Model model){
        List<Menu> allRecursion = menuService.findAllRecursion();
        model.addAttribute("allParentMenu",allRecursion);
        Menu menu = new Menu();
        menu.setId(2L);
        menu.setName("嘻嘻嘻嘻哈哈哈中国中国中");
         //menuRepository.save(menu);
        List<Menu> lists=new ArrayList<>();
        lists.add(menu);
        //menuRepository.saveAll(lists);
        return "system/menu";
    }
    @RequestMapping(value = "/getMenuAll",method = RequestMethod.GET)
    @ResponseBody
    public String menuAll(){
        List<Menu> allRecursion = menuService.getAll();
        JSONArray json = JSONArray.parseArray(JSON.toJSONString(allRecursion));
        System.out.println(json.toString());
		/*
		 * Iterable<Menu> all = menuRepository.findAll(); for (Menu menu : all) {
		 * System.out.println(menu); } Optional<Menu> byId =
		 * menuRepository.findById(1L); Page<Menu> menus =
		 * menuRepository.findMenuByName("中国", PageRequest.of(0, 10));
		 * System.out.println(byId.get()); for (Menu menu : menus) {
		 * System.out.println(menu); } System.out.println("1111111111111");
		 * BoolQueryBuilder boolQueryBuilder =QueryBuilders.boolQuery();
		 * BoolQueryBuilder boolQueryBuilder1 = boolQueryBuilder.queryName("中国");
		 * Iterable<Menu> search = menuRepository.search(boolQueryBuilder1); for (Menu
		 * menu : search) { System.out.println(menu); }
		 */

        String jso = "{\"code\":0,\"msg\":\"ok\",\"data\":"+json.toString()+"}";
        return jso;
    }
    @RequestMapping(value = "/del",method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> del(Long id){
        Map<String,Object> map=new HashMap<>();
        try {
            menuService.delete(id);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }
    @RequestMapping(value = "/add",method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> add(Menu menu){
        Map<String,Object> map=new HashMap<>();
        try {
            menuService.add(menu);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }
    @RequestMapping(value = "/edit",method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> edit(Menu menu){
        Map<String,Object> map=new HashMap<>();
        try {
            menuService.edit(menu);
            map.put("success",true);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("success",false);
        }
        return map;
    }



}
