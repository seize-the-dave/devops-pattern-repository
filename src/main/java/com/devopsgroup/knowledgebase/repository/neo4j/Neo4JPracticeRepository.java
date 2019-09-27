package com.devopsgroup.knowledgebase.repository.neo4j;

import com.devopsgroup.knowledgebase.domain.Practice;
import com.devopsgroup.knowledgebase.repository.PracticeRepository;
import org.springframework.data.neo4j.annotation.Depth;
import org.springframework.data.neo4j.repository.Neo4jRepository;

import java.util.List;

public interface Neo4JPracticeRepository extends Neo4jRepository<Practice, Long>, PracticeRepository {
    @Depth(value = 2)
    List<Practice> findByNameLike(String name);
}
