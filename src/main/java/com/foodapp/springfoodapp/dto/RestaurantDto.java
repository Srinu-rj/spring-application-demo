package com.foodapp.springfoodapp.dto;

public record RestaurantDto(
        int restaurantId,
        String restaurantName,
        String managerName,
        String contactNumber,
        AddressDto address
) {
}
