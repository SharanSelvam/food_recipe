package com.xworkz.foodrecipe.repository;

import com.xworkz.foodrecipe.dto.FoodRecipeDto;
import com.xworkz.foodrecipe.dto.UserDto;

import java.util.List;

public interface FoodRecipeRepository {

//user save operation
boolean save(UserDto userDto);
boolean login(String emailId, String password);
List<UserDto> findAllUser();
 UserDto getUserByLoginId(String emailId);
 UserDto getUserById(int userId);
boolean updateUser(UserDto userDto);
boolean deleteUserById(int userId);
UserDto checkEmailId(String emailId);
UserDto checkContactNumber(long contactNumber);

//food recipe save operation
boolean save(FoodRecipeDto foodRecipeDto);
List<FoodRecipeDto> viewAllRecipe();
FoodRecipeDto getFoodById(int foodRecipeId);
boolean updateFood(FoodRecipeDto foodRecipeDto);
boolean deleteFoodById(int foodRecipeId);


}
