package com.foodapp.springfoodapp.dto;

import java.time.LocalDateTime;

public record OrderDetailsDto(
        Integer orderId,
        LocalDateTime orderDate,
        String orderStatus
) {

}


