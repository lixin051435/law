package com.web.law.enums;

public enum QuestionStatusEnum {
    UNPAYED(0,"待支付"),
    PAYED(1,"已支付"),
    ANSWERING(2,"回答中"),
    FINISHED(3,"已完成");

    private Integer code;
    private String msg;

    QuestionStatusEnum(Integer code, String msg) {
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
