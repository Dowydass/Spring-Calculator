package com.hellow.demo.config;

import com.hellow.demo.model.NumberDAO;
import com.hellow.demo.model.NumberDAOImpl;
import com.hellow.demo.service.NumberService;
import com.hellow.demo.service.NumberServiceImpl;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SpringConfig {

    @Bean

    @Qualifier("NumberDAO")
    public NumberDAO getNumberDAO() {
        return new NumberDAOImpl();
    }

    @Bean
    @Qualifier("NumberService")
    public NumberService getNumberService() {
        return new NumberServiceImpl();
    }
}
