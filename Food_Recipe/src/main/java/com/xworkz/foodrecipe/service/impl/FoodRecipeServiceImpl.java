package com.xworkz.foodrecipe.service.impl;

import com.xworkz.foodrecipe.dto.UserDto;
import com.xworkz.foodrecipe.mail.Mail;
import com.xworkz.foodrecipe.repository.FoodRecipeRepository;
import com.xworkz.foodrecipe.service.FoodRecipeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

public class FoodRecipeServiceImpl implements FoodRecipeService {

    @Autowired
    public FoodRecipeRepository repository;
    @Autowired
    public Mail mail;


    @Override
    public boolean validateAndSave(UserDto userDto) {
        mail.SendMail(userDto);
         return repository.save(userDto);

    }

    @Override
    public boolean validateAndLogin(String emailId, String password) {
        if (!emailId.isEmpty() && !password.isEmpty()) {
            return repository.login(emailId,password);
        }else{
            return false;
        }

    }

    @Override
    public List<UserDto> getAllUser() {
        List<UserDto> userDtos=repository.findAllUser();
        if(userDtos!=null){
            return userDtos;
        }
        return null;
    }

    @Override
    public UserDto validateAndGetUserById(int userId) {
        if(userId>0){
            UserDto userDto=repository.getUserById(userId);
            if(userDto!=null){
                return userDto;
            }
        }
        return null;
    }

    @Override
    public boolean validateAndUpdate(UserDto userDto) {
        if(userDto!=null){
            if(!userDto.getFirstName().isEmpty() && !userDto.getLastName().isEmpty() && !userDto.getEmailId().isEmpty() && userDto.getContactNumber() > 1000000000 && userDto.getAlternativeNumber() > 1000000000 && !userDto.getAddress().isEmpty()){
                if(repository.updateUser(userDto)){
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public boolean validateAndDelete(int userId) {
        if(userId >0){
            if(repository.deleteUserById(userId)){
                return true;
            }
        }
        return false;
    }

    @Override
    public UserDto validateUserAndLoginId(String emailId) {
        return repository.getUserByLoginId(emailId);
    }

    @Override
    public UserDto validateEmailId(String emailId) {
        if(!emailId.isEmpty()){
            return repository.checkEmailId(emailId);

        }else{
            return null;
        }

    }

    @Override
    public UserDto validateContact(long contactNumber) {
        if(contactNumber >0){
            return repository.checkContactNumber(contactNumber);

        }else{
            return null;
        }
    }



}
