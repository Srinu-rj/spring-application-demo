package com.foodapp.springfoodapp.dto;

import java.time.LocalDateTime;

public record BillDto(Integer billId,
                      LocalDateTime billDate,
                      Double totalCost,
                      int totalItem) {
}