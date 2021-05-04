package com.helloworld.demo.service;

import java.util.List;

public interface NumberService {
    List<Number> getAll();
    void save(Number number);
    Number getById(int id);
    void update(Number number);
    void delete(int id);

}
