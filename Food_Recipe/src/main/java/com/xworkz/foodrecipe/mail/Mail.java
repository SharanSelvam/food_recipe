package com.xworkz.foodrecipe.mail;

import com.xworkz.foodrecipe.configuration.MailConfiguration;
import com.xworkz.foodrecipe.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Component;

@Component
public class Mail {

    @Autowired
    public MailConfiguration mailConfiguration;

    public void SendMail(UserDto userDto){
        SimpleMailMessage message=new SimpleMailMessage();
        message.setTo(userDto.getEmailId());
        message.setSubject("WELCOME TO FOOD RECIPE");
        message.setText("UserName:" +userDto.getFirstName()+" "+"THANKS FOR JOINING FOOD RECIPE APP");
        mailConfiguration.mailConfig().send(message);
    }
}
