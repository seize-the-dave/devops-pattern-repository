package com.devopsgroup.knowledgebase.domain;

import java.util.Collection;

public class Book {
    private String name;
    private String isbn;
    private Collection<Person> authors;

    public Book(String name, String isbn, Collection<Person> authors) {
        this.name = name;
        this.isbn = isbn;
        this.authors = authors;
    }

    public String getName() {
        return name;
    }

    public String getIsbn() {
        return isbn;
    }

    public Collection<Person> getAuthors() {
        return authors;
    }
}
