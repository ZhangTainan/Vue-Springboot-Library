package com.example.demo.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.example.demo.LoginUser;
import com.example.demo.commom.Result;
import com.example.demo.entity.Book;
import com.example.demo.entity.LendRecord;
import com.example.demo.entity.User;
import com.example.demo.mapper.BookMapper;
import com.example.demo.mapper.LendRecordMapper;
import com.example.demo.mapper.UserMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/dashboard")
public class DashboardController {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private LendRecordMapper lendRecordMapper;
    @Autowired
    private BookMapper bookMapper;
    @GetMapping
    public  Result<?> dashboardrecords(){
        int visitCount = LoginUser.getVisitCount();
        QueryWrapper<User> queryWrapper1=new QueryWrapper();
        long userCount = userMapper.selectCount(queryWrapper1);
        QueryWrapper<LendRecord> queryWrapper2=new QueryWrapper();
        long lendRecordCount = lendRecordMapper.selectCount(queryWrapper2);
        QueryWrapper<Book> queryWrapper3=new QueryWrapper();
        long bookCount = bookMapper.selectCount(queryWrapper3);
        Map<String, Object> map = new HashMap<>();//键值对形式
        map.put("visitCount", visitCount);//放置visitCount到map中
        map.put("userCount", userCount);
        map.put("lendRecordCount", lendRecordCount);
        map.put("bookCount", bookCount);
        return Result.success(map);
    }



}
