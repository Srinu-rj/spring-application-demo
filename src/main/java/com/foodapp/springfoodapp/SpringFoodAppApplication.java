package com.foodapp.springfoodapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@EnableCaching
public class SpringFoodAppApplication {

//todo    mvn spring-boot:run -> http://192.168.3.189:8998/
//todo    jenkins url ->http://192.168.3.189:8998/
//todo    java -jar target/spring-image.jar
//TODO -> https://github.com/Srinu-rj/spring-food-app.git
//   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

    // todo github token  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
    public static void main(String[] args) {
        SpringApplication.run(SpringFoodAppApplication.class, args);
        System.out.println("SPRING-BOOT-APPLICATION");
        long totalMemory = Runtime.getRuntime().totalMemory();
        long freeMemory = Runtime.getRuntime().freeMemory();
        long usedMemory = totalMemory - freeMemory;
        long maxMemory = Runtime.getRuntime().maxMemory();

        System.out.printf("Total Memory: %.2f GB%n", totalMemory / 1e9);
        System.out.printf("Free Memory: %.2f GB%n", freeMemory / 1e9);
        System.out.printf("Used Memory: %.2f GB%n", usedMemory / 1e9);
        System.out.printf("Max Memory : %.2f GB%n", maxMemory / 1e9);
    }



}
