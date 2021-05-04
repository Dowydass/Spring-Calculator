package com.helloworld.demo.config;

import com.helloworld.demo.model.NumberDAO;
import com.helloworld.demo.model.NumberDAOImpl;
import com.helloworld.demo.service.NumberService;
import com.helloworld.demo.service.NumberServiceImpl;
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
