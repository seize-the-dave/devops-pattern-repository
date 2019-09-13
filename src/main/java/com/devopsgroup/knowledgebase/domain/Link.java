package com.devopsgroup.knowledgebase.domain;

import com.google.common.base.MoreObjects;
import org.neo4j.ogm.annotation.NodeEntity;

@NodeEntity
public class Link extends Resource {
    private String url;

    public Link(Long id, String name, String url) {
        super(id, name);
        this.url = url;
    }

    public String getUrl() {
        return url;
    }

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this).addValue(getName()).addValue(url).toString();
    }
}
