package com.hellow.demo.service;


import com.hellow.demo.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
