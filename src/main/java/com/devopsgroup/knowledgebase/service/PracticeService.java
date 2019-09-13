package com.devopsgroup.knowledgebase.service;

import com.devopsgroup.knowledgebase.domain.Practice;
import com.devopsgroup.knowledgebase.repository.PracticeRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PracticeService {
    private final PracticeRepository practiceRepository;
    public PracticeService(PracticeRepository practiceRepository) {
        this.practiceRepository = practiceRepository;
    }

    @Transactional(readOnly = true)
    public List<Practice> findByNameLike(String name) {
        return practiceRepository.findByNameLike(name, 2);
    }
}
