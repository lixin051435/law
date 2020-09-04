package com.web.law.enums;

public enum LawyerTypeEnum {
    FREE(0,"免费"),
    CHARGE(1,"收费");

    private Integer code;
    private String msg;

    LawyerTypeEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
