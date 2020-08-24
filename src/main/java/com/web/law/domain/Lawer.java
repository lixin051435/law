package com.web.law.domain;

import javax.persistence.*;
import java.util.Objects;

/**
 * @ClassName : Lawer
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-24 21:38
 */
@Entity
@Table(name = "t_lawer", schema = "db_law", catalog = "")
public class Lawer {
    private String lawerId;
    private String lawerNickname;
    private String lawerRealname;
    private String lawerPassword;
    private String lawerGender;
    private String lawerIcon;
    private String lawerTitle;
    private String lawerDescription;

    @Id
    @Column(name = "lawer_id")
    public String getLawerId() {
        return lawerId;
    }

    public void setLawerId(String lawerId) {
        this.lawerId = lawerId;
    }

    @Basic
    @Column(name = "lawer_nickname")
    public String getLawerNickname() {
        return lawerNickname;
    }

    public void setLawerNickname(String lawerNickname) {
        this.lawerNickname = lawerNickname;
    }

    @Basic
    @Column(name = "lawer_realname")
    public String getLawerRealname() {
        return lawerRealname;
    }

    public void setLawerRealname(String lawerRealname) {
        this.lawerRealname = lawerRealname;
    }

    @Basic
    @Column(name = "lawer_password")
    public String getLawerPassword() {
        return lawerPassword;
    }

    public void setLawerPassword(String lawerPassword) {
        this.lawerPassword = lawerPassword;
    }

    @Basic
    @Column(name = "lawer_gender")
    public String getLawerGender() {
        return lawerGender;
    }

    public void setLawerGender(String lawerGender) {
        this.lawerGender = lawerGender;
    }

    @Basic
    @Column(name = "lawer_icon")
    public String getLawerIcon() {
        return lawerIcon;
    }

    public void setLawerIcon(String lawerIcon) {
        this.lawerIcon = lawerIcon;
    }

    @Basic
    @Column(name = "lawer_title")
    public String getLawerTitle() {
        return lawerTitle;
    }

    public void setLawerTitle(String lawerTitle) {
        this.lawerTitle = lawerTitle;
    }

    @Basic
    @Column(name = "lawer_description")
    public String getLawerDescription() {
        return lawerDescription;
    }

    public void setLawerDescription(String lawerDescription) {
        this.lawerDescription = lawerDescription;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Lawer lawer = (Lawer) o;
        return Objects.equals(lawerId, lawer.lawerId) &&
                Objects.equals(lawerNickname, lawer.lawerNickname) &&
                Objects.equals(lawerRealname, lawer.lawerRealname) &&
                Objects.equals(lawerPassword, lawer.lawerPassword) &&
                Objects.equals(lawerGender, lawer.lawerGender) &&
                Objects.equals(lawerIcon, lawer.lawerIcon) &&
                Objects.equals(lawerTitle, lawer.lawerTitle) &&
                Objects.equals(lawerDescription, lawer.lawerDescription);
    }

    @Override
    public int hashCode() {

        return Objects.hash(lawerId, lawerNickname, lawerRealname, lawerPassword, lawerGender, lawerIcon, lawerTitle, lawerDescription);
    }
}
