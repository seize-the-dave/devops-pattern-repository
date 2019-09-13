package com.devopsgroup.knowledgebase.domain;

import org.neo4j.ogm.annotation.GeneratedValue;
import org.neo4j.ogm.annotation.Id;

public abstract class Resource {
    @Id
    @GeneratedValue
    private Long id;
    private String name;

    public Resource(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}
