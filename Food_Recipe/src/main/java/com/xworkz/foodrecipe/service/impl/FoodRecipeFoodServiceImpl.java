package com.xworkz.foodrecipe.service.impl;

import com.xworkz.foodrecipe.dto.FoodRecipeDto;
import com.xworkz.foodrecipe.repository.FoodRecipeRepository;
import com.xworkz.foodrecipe.service.FoodRecipeFoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FoodRecipeFoodServiceImpl implements FoodRecipeFoodService {

    @Autowired
    public FoodRecipeRepository repository;

    @Override
    public boolean validateAndSavefood(FoodRecipeDto foodRecipeDto) {
        return repository.save(foodRecipeDto);
    }

    @Override
    public List<FoodRecipeDto> viewAll() {
        List<FoodRecipeDto> foodRecipeDtos= repository.viewAllRecipe();
        if(foodRecipeDtos!=null){
            return foodRecipeDtos;
        }
        return null;
    }

    @Override
    public FoodRecipeDto validateAndGetFoodById(int foodRecipeId) {
        if(foodRecipeId>0){
            FoodRecipeDto foodRecipeDto=repository.getFoodById(foodRecipeId);
            if(foodRecipeDto!=null){
                return foodRecipeDto;
            }
        }
        return null;
    }

    @Override
    public boolean validateAndUpdate(FoodRecipeDto foodRecipeDto) {
        if(foodRecipeDto!=null){
            if(!foodRecipeDto.getFoodRecipeName().isEmpty() && foodRecipeDto.getNoOfPerson()>1 && !foodRecipeDto.getIngredient1().isEmpty() && foodRecipeDto.getQuantity1()>1 && !foodRecipeDto.getIngredient2().isEmpty() && foodRecipeDto.getQuantity2()>1 && !foodRecipeDto.getIngredient3().isEmpty() && foodRecipeDto.getQuantity3()>1 && !foodRecipeDto.getIngredient4().isEmpty() && foodRecipeDto.getQuantity4()>1 && !foodRecipeDto.getStepsToDo().isEmpty()) {
                if(repository.updateFood(foodRecipeDto)){
                    return true;
                }

            }
        }
        return false;
    }

    @Override
    public boolean validateAndDelete(int foodRecipeId) {
        if(foodRecipeId >0){
            if(repository.deleteFoodById(foodRecipeId)){
                return true;
            }
        }
        return false;
    }


}
