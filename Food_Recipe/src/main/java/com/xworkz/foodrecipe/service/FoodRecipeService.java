package com.xworkz.foodrecipe.service;

import com.xworkz.foodrecipe.dto.UserDto;

import java.util.List;

public interface FoodRecipeService {
    boolean validateAndSave(UserDto userDto);
    boolean validateAndLogin(String emailId, String password);
    List<UserDto> getAllUser();

    UserDto validateAndGetUserById(int userId);

    boolean validateAndUpdate(UserDto userDto);

    boolean validateAndDelete(int userId);
     UserDto validateUserAndLoginId(String emailId);

    UserDto validateEmailId(String emailId);

    UserDto validateContact(long contactNumber);

}
