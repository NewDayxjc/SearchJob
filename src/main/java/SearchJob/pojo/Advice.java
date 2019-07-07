package SearchJob.pojo;

import java.io.Serializable;

public class Advice implements Serializable {
    private Integer advId;//建议ID
    private Integer advType;//建议类型
    private String advContent;//建议内容

    public Integer getAdvId() {
        return advId;
    }

    public void setAdvId(Integer advId) {
        this.advId = advId;
    }

    public Integer getAdvType() {
        return advType;
    }

    public void setAdvType(Integer advType) {
        this.advType = advType;
    }

    public String getAdvContent() {
        return advContent;
    }

    public void setAdvContent(String advContent) {
        this.advContent = advContent;
    }

    @Override
    public String toString() {
        return "Advice{" +
                "advId=" + advId +
                ", advType=" + advType +
                ", advContent='" + advContent + '\'' +
                '}';
    }
}
