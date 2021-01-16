package org.su.generator.pojo;

public class FollowersKey {
    private String bloggerId;

    private String fansId;

    public String getBloggerId() {
        return bloggerId;
    }

    public void setBloggerId(String bloggerId) {
        this.bloggerId = bloggerId == null ? null : bloggerId.trim();
    }

    public String getFansId() {
        return fansId;
    }

    public void setFansId(String fansId) {
        this.fansId = fansId == null ? null : fansId.trim();
    }
}