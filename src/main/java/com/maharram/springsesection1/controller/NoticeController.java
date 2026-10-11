package com.maharram.springsesection1.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class NoticeController {

    @GetMapping("/notices")
    public String getNotificationDetails (){
        return "here are the notices details from the db";
    }
}
