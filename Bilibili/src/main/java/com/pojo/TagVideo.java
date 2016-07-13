package com.pojo;

/**
 * Created by Admin on 2016/7/12.
 */
public class TagVideo {
    private String tagName;
    private int videoId;
    private Tag tagByTagName;
    private Video videoByVideoId;

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }

    public int getVideoId() {
        return videoId;
    }

    public void setVideoId(int videoId) {
        this.videoId = videoId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TagVideo tagVideo = (TagVideo) o;

        if (videoId != tagVideo.videoId) return false;
        if (tagName != null ? !tagName.equals(tagVideo.tagName) : tagVideo.tagName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = tagName != null ? tagName.hashCode() : 0;
        result = 31 * result + videoId;
        return result;
    }

    public Tag getTagByTagName() {
        return tagByTagName;
    }

    public void setTagByTagName(Tag tagByTagName) {
        this.tagByTagName = tagByTagName;
    }

    public Video getVideoByVideoId() {
        return videoByVideoId;
    }

    public void setVideoByVideoId(Video videoByVideoId) {
        this.videoByVideoId = videoByVideoId;
    }
}
