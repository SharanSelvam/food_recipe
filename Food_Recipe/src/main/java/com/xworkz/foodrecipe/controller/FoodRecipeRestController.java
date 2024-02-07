package com.xworkz.foodrecipe.controller;

import com.xworkz.foodrecipe.dto.UserDto;
import com.xworkz.foodrecipe.service.FoodRecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.UnsupportedEncodingException;

@RestController
@RequestMapping("/rest/")
public class FoodRecipeRestController {

    @Autowired
    private FoodRecipeService service;

    public FoodRecipeRestController(){
        System.out.println("REST CONTROLLER OBJECT CREATED");
    }

    @GetMapping("validateEmail/{emailId}")
    String checkEmailId(@PathVariable String emailId) throws UnsupportedEncodingException{
        String decodeEmailId=java.net.URLDecoder.decode(emailId,"UTF-8");
        decodeEmailId=decodeEmailId.replace("%2E",".");
        System.out.println(decodeEmailId);
        System.out.println("inside rest emailId validate");
        UserDto userDto=service.validateEmailId(decodeEmailId);
        if(userDto==null){
            System.out.println("email valid");
            return "false";
        }
        System.out.println("email taken");
        return "true";

    }
}
