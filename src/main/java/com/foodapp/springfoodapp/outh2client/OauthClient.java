//package com.foodapp.springfoodapp.outh2client;//package com.foodapp.springfoodapp.outh2client;
//
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.http.HttpMethod;
//import org.springframework.security.config.Customizer;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
//import org.springframework.security.web.SecurityFilterChain;
//
//import static org.springframework.security.config.Customizer.withDefaults;
//
//@Configuration
//@EnableWebSecurity
//public class OauthClient {
//
//
//        @Bean
//        public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
//            http
//                    .authorizeHttpRequests(auth -> auth
//                            .requestMatchers("/api/test/public").permitAll()
//                            .requestMatchers("/api/test/profile", "/api/test/private").authenticated()
//                            .anyRequest().authenticated()
//                    )
//                    .oauth2Login(Customizer.withDefaults());;
//
//            return http.build();
//        }
//
//}
