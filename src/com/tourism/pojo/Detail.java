package com.tourism.pojo;

public class Detail {
    private Integer lineId;

    private String detailStart;

    private String detailEnd;

    private String detailLine;

    public Integer getLineId() {
        return lineId;
    }

    public void setLineId(Integer lineId) {
        this.lineId = lineId;
    }

    public String getDetailStart() {
        return detailStart;
    }

    public void setDetailStart(String detailStart) {
        this.detailStart = detailStart == null ? null : detailStart.trim();
    }

    public String getDetailEnd() {
        return detailEnd;
    }

    public void setDetailEnd(String detailEnd) {
        this.detailEnd = detailEnd == null ? null : detailEnd.trim();
    }

    public String getDetailLine() {
        return detailLine;
    }

    public void setDetailLine(String detailLine) {
        this.detailLine = detailLine == null ? null : detailLine.trim();
    }
}