package com.devopsgroup.knowledgebase.controller;

import com.devopsgroup.knowledgebase.domain.Practice;
import com.devopsgroup.knowledgebase.service.PracticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class PracticeController {
    @Autowired
    private PracticeService practiceService;

    @RequestMapping("/practices")
    public List<Practice> greeting(@RequestParam(value="name", defaultValue="Test") String name) {
        return practiceService.findByNameLike("*" + name + "*");
    }
}
