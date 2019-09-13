package com.devopsgroup.knowledgebase.domain;

import com.google.common.base.MoreObjects;
import org.neo4j.ogm.annotation.GeneratedValue;
import org.neo4j.ogm.annotation.Id;
import org.neo4j.ogm.annotation.NodeEntity;
import org.neo4j.ogm.annotation.Relationship;

import java.util.ArrayList;
import java.util.List;

@NodeEntity
public class Book {
    @Id
    @GeneratedValue
    private Long id;
    private String name;
    private String isbn;
    @Relationship(type = "WRITTEN_BY", direction = Relationship.UNDIRECTED)
    private List<Person> authors  = new ArrayList<>();
//
//    public Book(String name, String isbn, List<Person> authors) {
//        this.name = name;
//        this.isbn = isbn;
//        this.authors = authors;
//    }

    public String getName() {
        return name;
    }

    public String getIsbn() {
        return isbn;
    }

    public List<Person> getAuthors() {
        return authors;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(name).addValue(isbn).addValue(authors).toString();
    }
}
