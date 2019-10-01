package com.devopsgroup.knowledgebase;

import com.devopsgroup.knowledgebase.domain.Practice;
import com.devopsgroup.knowledgebase.repository.InMemoryPracticeRepository;
import com.devopsgroup.knowledgebase.service.PracticeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = {InMemoryPracticeRepository.class, PracticeService.class})
public class KnowledgeBaseApplicationTests {
	@Autowired
	private PracticeService practiceService;

	@Test
	public void contextLoads() {
		List<Practice> practices = practiceService.findByNameLike("*Test*");

		for (Practice practice : practices) {
		    System.out.println(practice);
        }
	}

}
