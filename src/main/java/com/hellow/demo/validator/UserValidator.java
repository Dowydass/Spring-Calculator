package com.hellow.demo.validator;

import com.hellow.demo.service.UserService;
import org.apache.tomcat.jni.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import javax.validation.Validator;


public class UserValidator  {
/*
    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> aClass){
        return User.class.equals(aClass);
    }
    @Override
    public void validate(Object o, Errors errors){
        User user = (User) o;

        //Validacijos priemoniu klase
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");

    }


 */

}
