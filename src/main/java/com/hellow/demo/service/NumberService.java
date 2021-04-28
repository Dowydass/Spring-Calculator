package com.hellow.demo.service;

import java.util.List;

import com.hellow.demo.model.Number;

public interface NumberService {

    List<Number> getAll();

    void save(Number number);

    Number getById(int id);

    void update(Number number);

    void delete(int id);

}
