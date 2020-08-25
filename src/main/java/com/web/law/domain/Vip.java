package com.web.law.domain;

import javax.persistence.*;
import java.util.Objects;

/**
 * @ClassName : Vip
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:36
 */
@Entity
@Table(name = "t_vip", schema = "db_law", catalog = "")
public class Vip {
    private String vipId;
    private String vipName;
    private Integer discount;

    @Id
    @Column(name = "vip_id")
    public String getVipId() {
        return vipId;
    }

    public void setVipId(String vipId) {
        this.vipId = vipId;
    }

    @Basic
    @Column(name = "vip_name")
    public String getVipName() {
        return vipName;
    }

    public void setVipName(String vipName) {
        this.vipName = vipName;
    }

    @Basic
    @Column(name = "discount")
    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Vip vip = (Vip) o;
        return Objects.equals(vipId, vip.vipId) &&
                Objects.equals(vipName, vip.vipName) &&
                Objects.equals(discount, vip.discount);
    }

    @Override
    public int hashCode() {

        return Objects.hash(vipId, vipName, discount);
    }
}
