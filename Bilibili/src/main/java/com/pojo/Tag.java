package com.pojo;

import java.util.Collection;

/**
 * Created by Admin on 2016/7/12.
 */
public class Tag {
    private String tagName;
    private Collection<TagVideo> tagVideosByTagName;

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Tag tag = (Tag) o;

        if (tagName != null ? !tagName.equals(tag.tagName) : tag.tagName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return tagName != null ? tagName.hashCode() : 0;
    }

    public Collection<TagVideo> getTagVideosByTagName() {
        return tagVideosByTagName;
    }

    public void setTagVideosByTagName(Collection<TagVideo> tagVideosByTagName) {
        this.tagVideosByTagName = tagVideosByTagName;
    }
}
