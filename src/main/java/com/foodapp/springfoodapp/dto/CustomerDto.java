package com.foodapp.springfoodapp.dto;


public record CustomerDto(

        int customerId,
        String fullName,
        Integer age,
        String gender,
        String mobileNumber,
        String email,
        AddressDto address,
        FoodCartDto foodCart)
{}

