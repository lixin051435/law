package com.web.law.domain;

import javax.persistence.*;
import java.util.Objects;

/**
 * @ClassName : Lawyer
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:36
 */
@Entity
@Table(name = "t_lawyer", schema = "db_law", catalog = "")
public class Lawyer {
    private String lawyerId;
    private String lawyerDescription;
    private String lawyerGender;
    private String lawyerIcon;
    private String lawyerNickname;
    private String lawyerPassword;
    private String lawyerRealname;
    private String lawyerTitle;
    private Integer lawyerType;
    private String lawyerField;
    private Integer lawerExpense;

    @Basic
    @Column(name = "lawer_expense")
    public Integer getLawerExpense() {
        return lawerExpense;
    }

    public void setLawerExpense(Integer lawerExpense) {
        this.lawerExpense = lawerExpense;
    }

    @Id
    @Column(name = "lawyer_id")
    public String getLawyerId() {
        return lawyerId;
    }

    public void setLawyerId(String lawyerId) {
        this.lawyerId = lawyerId;
    }

    @Basic
    @Column(name = "lawyer_description")
    public String getLawyerDescription() {
        return lawyerDescription;
    }

    public void setLawyerDescription(String lawyerDescription) {
        this.lawyerDescription = lawyerDescription;
    }

    @Basic
    @Column(name = "lawyer_gender")
    public String getLawyerGender() {
        return lawyerGender;
    }

    public void setLawyerGender(String lawyerGender) {
        this.lawyerGender = lawyerGender;
    }

    @Basic
    @Column(name = "lawyer_icon")
    public String getLawyerIcon() {
        return lawyerIcon;
    }

    public void setLawyerIcon(String lawyerIcon) {
        this.lawyerIcon = lawyerIcon;
    }

    @Basic
    @Column(name = "lawyer_nickname")
    public String getLawyerNickname() {
        return lawyerNickname;
    }

    public void setLawyerNickname(String lawyerNickname) {
        this.lawyerNickname = lawyerNickname;
    }

    @Basic
    @Column(name = "lawyer_password")
    public String getLawyerPassword() {
        return lawyerPassword;
    }

    public void setLawyerPassword(String lawyerPassword) {
        this.lawyerPassword = lawyerPassword;
    }

    @Basic
    @Column(name = "lawyer_realname")
    public String getLawyerRealname() {
        return lawyerRealname;
    }

    public void setLawyerRealname(String lawyerRealname) {
        this.lawyerRealname = lawyerRealname;
    }

    @Basic
    @Column(name = "lawyer_title")
    public String getLawyerTitle() {
        return lawyerTitle;
    }

    public void setLawyerTitle(String lawyerTitle) {
        this.lawyerTitle = lawyerTitle;
    }

    @Basic
    @Column(name = "lawyer_type")
    public Integer getLawyerType() {
        return lawyerType;
    }

    public void setLawyerType(Integer lawyerType) {
        this.lawyerType = lawyerType;
    }

    @Basic
    @Column(name = "lawyer_field")
    public String getLawyerField() {
        return lawyerField;
    }

    public void setLawyerField(String lawyerField) {
        this.lawyerField = lawyerField;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Lawyer lawyer = (Lawyer) o;
        return Objects.equals(lawyerId, lawyer.lawyerId) &&
                Objects.equals(lawyerDescription, lawyer.lawyerDescription) &&
                Objects.equals(lawyerGender, lawyer.lawyerGender) &&
                Objects.equals(lawyerIcon, lawyer.lawyerIcon) &&
                Objects.equals(lawyerNickname, lawyer.lawyerNickname) &&
                Objects.equals(lawyerPassword, lawyer.lawyerPassword) &&
                Objects.equals(lawyerRealname, lawyer.lawyerRealname) &&
                Objects.equals(lawyerTitle, lawyer.lawyerTitle) &&
                Objects.equals(lawyerType, lawyer.lawyerType) &&
                Objects.equals(lawyerField, lawyer.lawyerField);
    }

    @Override
    public int hashCode() {

        return Objects.hash(lawyerId, lawyerDescription, lawyerGender, lawyerIcon, lawyerNickname, lawyerPassword, lawyerRealname, lawyerTitle, lawyerType, lawyerField);
    }
}
