package com.devopsgroup.knowledgebase.repository;

import com.devopsgroup.knowledgebase.domain.Practice;
import java.util.Collections;
import java.util.List;

public class InMemoryPracticeRepository implements PracticeRepository {
    @Override
    public List<Practice> findByNameLike(String name) {
        return Collections.emptyList();
    }
}
