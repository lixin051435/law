package com.web.law.enums;

public enum VIPTypeEnum {
    NORMAL("000","非会员"),
    VIP1("001","普通VIP"),
    VIP2("002","中级VIP"),
    VIP3("003","至尊VIP");

    private String code;
    private String msg;

    VIPTypeEnum(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public String getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
