package com.devopsgroup.knowledgebase.repository;

import com.devopsgroup.knowledgebase.domain.Practice;
import java.util.List;

public interface PracticeRepository {
    List<Practice> findByNameLike(String name);
}
