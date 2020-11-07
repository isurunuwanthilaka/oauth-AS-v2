package com.company.demo.controller;

import com.company.demo.model.AuthUserDetail;
import com.company.demo.model.User;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;


@RestController
public class UserInfoController {

    @GetMapping(value = "/userinfo")
    public HashMap<String, Object> user() {

        AuthUserDetail authUserDetail = (AuthUserDetail) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = authUserDetail.getUser();

        HashMap<String, Object> userInfoMap = new HashMap<>();
        userInfoMap.put("username", user.getUsername());
        userInfoMap.put("email", user.getEmail());
        userInfoMap.put("name", user.getUsername().toUpperCase());
        userInfoMap.put("sampath_ad_id", user.getId());
        userInfoMap.put("authorities", SecurityContextHolder.getContext().getAuthentication().getAuthorities());

        return userInfoMap;

    }

}
