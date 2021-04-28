package com.hellow.demo.model;

import java.util.List;

public interface NumberDAO {
    void insertEntity(Number number);
    Number findEntityByID(int id);
    List<Number> findEntities();
    void updateEntity(Number number);
    void removeEntityByID(int id);

}
