package com.hellow.demo.service;

public interface SecurityService {
    String findLoggedUsername();

    void autoLogin(String username, String password);
}
