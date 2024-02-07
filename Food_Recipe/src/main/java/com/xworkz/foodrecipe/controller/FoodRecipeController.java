package com.xworkz.foodrecipe.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.xworkz.foodrecipe.dto.FoodRecipeDto;
import com.xworkz.foodrecipe.dto.UserDto;
import com.xworkz.foodrecipe.service.FoodRecipeFoodService;
import com.xworkz.foodrecipe.service.FoodRecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.jws.soap.SOAPBinding;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/")
public class FoodRecipeController {
    @Autowired
    public FoodRecipeService service;

    @Autowired
    public FoodRecipeFoodService FoodService;

    @PostMapping("user")
    String save(@ModelAttribute UserDto userDto, Model model) {
        if (userDto != null) {
            System.out.println(userDto);
            service.validateAndSave(userDto);
            model.addAttribute("user", userDto.getFirstName());
            return "login";
        }

        return "error";
    }

    @PostMapping("login")
    String login(@RequestParam String emailId,@RequestParam String password, Model model) {

        if (service.validateAndLogin(emailId, password)) {
   UserDto userDto=service.validateUserAndLoginId(emailId);
            model.addAttribute("login", " Welcome " +userDto.getFirstName());
            model.addAttribute("food",userDto.getUserId());
            return "userwelcome";
        }

        model.addAttribute("login", "Invalid Login Not Registered");
        return "login";

        }

        @GetMapping("find")
    String findAllUsers(Model model) {
            List ListUser = service.getAllUser();
            if (ListUser != null) {
                model.addAttribute("ListUser", ListUser);
                return "find";
            }
            return "error";
        }
        @GetMapping("update")
        String getUserById(@RequestParam int userId,Model model){
        UserDto userDto=service.validateAndGetUserById(userId);
        if(userDto!=null){
            model.addAttribute("food",userDto);
            return "update";
        }
        return "error";
        }

        @PostMapping("updateUser")
    String updateUser(@ModelAttribute UserDto userDto, Model model){
        if(userDto!=null){
            service.validateAndUpdate(userDto);
            model.addAttribute("updateMessage","food:"+userDto.getFirstName()+"updated!!!");
            model.addAttribute("login", " Welcome " +userDto.getFirstName());

            return "userwelcome";
        }
        return "error";
        }

        @GetMapping("delete")
    String deleteUserById(@RequestParam int userId,Model model){
      if(service.validateAndDelete(userId)){
          model.addAttribute("deleted",userId);
          return "login";
      }
       return "error";
        }


        @GetMapping("addRecipe")
        String getAddRecipePage(@RequestParam int userId,Model model){
            model.addAttribute("userId",userId);
            return "foodrecipe";
        }

        @PostMapping("addFood")
    String saveFood(@ModelAttribute FoodRecipeDto foodRecipeDto,Model model){
        if(foodRecipeDto!=null){
            FoodService.validateAndSavefood(foodRecipeDto);

            model.addAttribute("recipe",foodRecipeDto.getFoodRecipeName());

            return "response";
        }
        return "error";
        }



        @GetMapping("viewall")
        String viewAll(Model model){
        List listFood= FoodService.viewAll();
        if(listFood!=null){
            model.addAttribute("listFood",listFood);
            return "viewall";
        }
            return "error";
        }

    @GetMapping("viewUser")
    String getUser(@RequestParam int userId,Model model){
        model.addAttribute("userId",userId);
        return "viewall";
    }

    @GetMapping("modify")
    String getFoodById(@RequestParam int foodRecipeId,Model model){
        FoodRecipeDto foodRecipeDto=FoodService.validateAndGetFoodById(foodRecipeId);
        if(foodRecipeDto!=null){
            model.addAttribute("recipe",foodRecipeDto);
            return "modify";
        }
        return "error";
    }

    @PostMapping("modifyFood")
    String updateFood(@ModelAttribute FoodRecipeDto foodRecipeDto,Model model){
        if(foodRecipeDto!=null){
            FoodService.validateAndUpdate(foodRecipeDto);
            model.addAttribute("updateMessage","recipe:"+foodRecipeDto.getFoodRecipeName()+"updated");
       return viewAll(model);
        }
        return "error";
    }

    @GetMapping("remove")
    String deleteFoodById(@RequestParam int foodRecipeId,Model model){
        if(FoodService.validateAndDelete(foodRecipeId)){
            model.addAttribute("remove",foodRecipeId);
            return viewAll(model);
        }
        return "error";
    }


}
