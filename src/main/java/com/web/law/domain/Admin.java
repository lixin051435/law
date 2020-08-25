package com.web.law.domain;

import javax.persistence.*;
import java.util.Objects;

/**
 * @ClassName : Admin
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:36
 */
@Entity
@Table(name = "t_admin", schema = "db_law", catalog = "")
public class Admin {
    private String adminId;
    private String adminNickname;
    private String adminPassword;
    private String adminRealname;

    @Id
    @Column(name = "admin_id")
    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    @Basic
    @Column(name = "admin_nickname")
    public String getAdminNickname() {
        return adminNickname;
    }

    public void setAdminNickname(String adminNickname) {
        this.adminNickname = adminNickname;
    }

    @Basic
    @Column(name = "admin_password")
    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    @Basic
    @Column(name = "admin_realname")
    public String getAdminRealname() {
        return adminRealname;
    }

    public void setAdminRealname(String adminRealname) {
        this.adminRealname = adminRealname;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Admin admin = (Admin) o;
        return Objects.equals(adminId, admin.adminId) &&
                Objects.equals(adminNickname, admin.adminNickname) &&
                Objects.equals(adminPassword, admin.adminPassword) &&
                Objects.equals(adminRealname, admin.adminRealname);
    }

    @Override
    public int hashCode() {

        return Objects.hash(adminId, adminNickname, adminPassword, adminRealname);
    }
}
