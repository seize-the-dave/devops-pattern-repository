package com.devopsgroup.knowledgebase.repository;

import com.devopsgroup.knowledgebase.domain.Practice;
import org.springframework.data.neo4j.annotation.Depth;
import org.springframework.data.neo4j.repository.Neo4jRepository;

import java.util.List;

public interface PracticeRepository extends Neo4jRepository<Practice, Long> {
    List<Practice> findByNameLike(String name, @Depth int depth);
}
