package com.devopsgroup.knowledgebase.domain;

import com.google.common.base.MoreObjects;
import com.google.common.base.Strings;
import org.neo4j.ogm.annotation.GeneratedValue;
import org.neo4j.ogm.annotation.Id;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Relationship;
import org.neo4j.ogm.cypher.query.SortOrder;

import java.util.ArrayList;
import java.util.List;

@NodeEntity
public class Practice {
    @Id
    @GeneratedValue
    private Long id;
    @Relationship(type = "DESCRIBED_BY", direction = Relationship.UNDIRECTED)
    private List<Book> books = new ArrayList<>();
    private String name;
//
//    public Practice(String name, List<Book> books) {
//        this.name = name;
//        this.books = books;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public List<Book> getBooks() {
//        return books;
//    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(name).addValue(books).toString();
    }
}