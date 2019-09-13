package com.devopsgroup.knowledgebase.domain;

import com.google.common.base.MoreObjects;
import org.neo4j.ogm.annotation.GeneratedValue;
import org.neo4j.ogm.annotation.Id;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Relationship;

import java.util.ArrayList;
import java.util.List;

@NodeEntity
public class Practice {
    @Id
    @GeneratedValue
    private Long id;
    @Relationship(type = "DESCRIBED_BY", direction = Relationship.UNDIRECTED)
    private List<Resource> resources = new ArrayList<>();
    private String name;

    public Practice(Long id, String name, List<Resource> resources) {
        this.id = id;
        this.name = name;
        this.resources = resources;
    }

    public Long getId() {
        return id;
    }

    public List<Resource> getResources() {
        return resources;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(name).addValue(resources).toString();
    }
}
