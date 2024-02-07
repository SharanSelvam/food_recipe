package com.xworkz.foodrecipe.service;

import com.xworkz.foodrecipe.dto.FoodRecipeDto;

import java.util.List;

public interface FoodRecipeFoodService {

    boolean validateAndSavefood(FoodRecipeDto foodRecipeDto);
    List<FoodRecipeDto> viewAll();

    FoodRecipeDto validateAndGetFoodById(int foodRecipeId);
    boolean validateAndUpdate(FoodRecipeDto foodRecipeDto);
    boolean validateAndDelete(int foodRecipeId);
}
