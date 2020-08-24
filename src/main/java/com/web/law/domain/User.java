package com.web.law.domain;

import javax.persistence.*;
import java.util.Objects;

/**
 * @ClassName : User
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-24 21:38
 */
@Entity
@Table(name = "t_user", schema = "db_law", catalog = "")
public class User {
    private String userId;
    private String userNickname;
    private String userRealname;
    private String userPassword;
    private String userGender;
    private String userAddress;
    private String userPhone;
    private String userEmail;
    private Integer vipLevel;

    @Id
    @Column(name = "user_id")
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "user_nickname")
    public String getUserNickname() {
        return userNickname;
    }

    public void setUserNickname(String userNickname) {
        this.userNickname = userNickname;
    }

    @Basic
    @Column(name = "user_realname")
    public String getUserRealname() {
        return userRealname;
    }

    public void setUserRealname(String userRealname) {
        this.userRealname = userRealname;
    }

    @Basic
    @Column(name = "user_password")
    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    @Basic
    @Column(name = "user_gender")
    public String getUserGender() {
        return userGender;
    }

    public void setUserGender(String userGender) {
        this.userGender = userGender;
    }

    @Basic
    @Column(name = "user_address")
    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    @Basic
    @Column(name = "user_phone")
    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    @Basic
    @Column(name = "user_email")
    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    @Basic
    @Column(name = "vip_level")
    public Integer getVipLevel() {
        return vipLevel;
    }

    public void setVipLevel(Integer vipLevel) {
        this.vipLevel = vipLevel;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(userId, user.userId) &&
                Objects.equals(userNickname, user.userNickname) &&
                Objects.equals(userRealname, user.userRealname) &&
                Objects.equals(userPassword, user.userPassword) &&
                Objects.equals(userGender, user.userGender) &&
                Objects.equals(userAddress, user.userAddress) &&
                Objects.equals(userPhone, user.userPhone) &&
                Objects.equals(userEmail, user.userEmail) &&
                Objects.equals(vipLevel, user.vipLevel);
    }

    @Override
    public int hashCode() {

        return Objects.hash(userId, userNickname, userRealname, userPassword, userGender, userAddress, userPhone, userEmail, vipLevel);
    }
}
