//package com.foodapp.springfoodapp.config.dynamoDb;
//
//import com.amazonaws.auth.AWSStaticCredentialsProvider;
//import com.amazonaws.auth.BasicAWSCredentials;
//import com.amazonaws.client.builder.AwsClientBuilder;
//import com.amazonaws.services.dynamodbv2.AmazonDynamoDB;
//import com.amazonaws.services.dynamodbv2.AmazonDynamoDBClientBuilder;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.context.annotation.Bean;
//
//public class DynamoDbConfig {
//
//    @Value("${amazon.dynamodb.endpoint}")
//    String endpoint;
//    @Value("${amazon.aws.accessKey}")
//    String accessKey;
//    @Value("${amazon.aws.secretKey}")
//    String secretKey;
//    @Value("${amazon.aws.region}")
//    String region;
//
//    @Bean
//    public AmazonDynamoDB amazonDynamoDB() {
//        return AmazonDynamoDBClientBuilder
//                .standard()
//                .withEndpointConfiguration(
//                        new AwsClientBuilder.EndpointConfiguration(endpoint, region))
//                .withCredentials(new AWSStaticCredentialsProvider(
//                        new BasicAWSCredentials(accessKey, secretKey)))
//                .build();
//
//    }
//}