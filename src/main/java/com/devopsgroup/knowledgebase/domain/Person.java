package com.devopsgroup.knowledgebase.domain;

import com.google.common.base.MoreObjects;
import org.neo4j.ogm.annotation.GeneratedValue;
import org.neo4j.ogm.annotation.Id;
import org.neo4j.ogm.annotation.NodeEntity;

@NodeEntity
public class Person {
    @Id
    @GeneratedValue
    private Long id;
    private String name;

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(name).toString();
    }
}
