package org.csu.mypetstore.domain;

import java.io.Serializable;

public class Category implements Serializable {
    private String categoryId;
    private String name;
    private String description;

    public String getCategoryId() {
        return categoryId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }
}