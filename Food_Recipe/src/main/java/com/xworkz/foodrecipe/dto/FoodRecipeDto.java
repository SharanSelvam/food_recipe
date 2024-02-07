package com.xworkz.foodrecipe.dto;

import com.xworkz.foodrecipe.constant.Cuisine;
import com.xworkz.foodrecipe.constant.FoodType;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
@NamedQueries({
        @NamedQuery(name="viewAll",query = "from FoodRecipeDto food"),
        @NamedQuery(name="getFoodById",query = "from FoodRecipeDto food where food.foodRecipeId=:foodRecipeId")
})

public class FoodRecipeDto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int foodRecipeId;
    String foodRecipeName;
    int noOfPerson;
    String ingredient1;
    int quantity1;
    String ingredient2;
    int quantity2;
    String ingredient3;
    int quantity3;
    String ingredient4;
    int quantity4;
    String stepsToDo;
    @Enumerated(EnumType.STRING)
    FoodType foodType;
    @Enumerated(EnumType.STRING)
    Cuisine cuisine;
    private int userId;

}
