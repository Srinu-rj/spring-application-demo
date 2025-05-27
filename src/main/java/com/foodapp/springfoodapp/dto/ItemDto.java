package com.foodapp.springfoodapp.dto;


public record ItemDto(int itemId,
                      String itemName,
                      Integer quantity,
                      Double cost
) {
}