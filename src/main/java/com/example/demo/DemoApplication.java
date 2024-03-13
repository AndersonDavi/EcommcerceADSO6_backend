package com.example.demo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication  {
    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }
//    public static Logger LOG = LoggerFactory.getLogger(DemoApplication.class);
//
//    @Override
//    public void run(String... args) throws Exception {
//        LOG.info("Ola");
//        LOG.warn("Ola");
//    }

}
