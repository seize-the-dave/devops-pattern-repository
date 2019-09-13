package com.devopsgroup.knowledgebase.repository;

import com.devopsgroup.knowledgebase.domain.Practice;
import org.springframework.data.neo4j.annotation.Depth;

import java.util.List;

public interface PracticeRepository {
    List<Practice> findByNameLike(String name, @Depth int depth);
}
