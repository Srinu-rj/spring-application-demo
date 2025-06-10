package com.foodapp.springfoodapp.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class HomePage {

    @GetMapping("/")
    public String home() {
        return "hemo"; // Returns index.html from templates folder
    }

//    @GetMapping("/private")
//    public String privateEndpoint(@AuthenticationPrincipal OAuth2User principal) {
//        return "Private content for: " + principal.getAttributes().get("name");
//    }
//
//    //TODO: Get Oauth user Deatiles
//    @GetMapping("/profile")
//    public Map<String, Object> userProfile(@AuthenticationPrincipal OAuth2User principal) {
//        return principal.getAttributes();
//    }
}
