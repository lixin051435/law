package com.web.law.controller;

import com.web.law.constants.SystemConstant;
import com.web.law.domain.User;
import com.web.law.domain.User;
import com.web.law.domain.Vip;
import com.web.law.service.UserService;
import com.web.law.utils.KeyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @ClassName : UserController
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:56
 */
@RequestMapping("/user")
@Controller
public class UserController extends BaseController<User> {

    private UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
        super.init(userService);
    }

    @PostMapping("/login")
    public String login(User form, HttpServletRequest request) {
        HttpSession session = request.getSession();
        User user = userService.findUserByNickname(form.getUserNickname());
        if (user != null) {
            if (user.getUserPassword().equals(form.getUserPassword())) {
                session.setAttribute(SystemConstant.SESSION_USER, user);
                return "redirect:/fore/index";
            }
        }
        return "error";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute(SystemConstant.SESSION_USER);
        return "forepage/index";
    }

    @GetMapping("/register")
    public String toRegister() {
        return "user/register";
    }
    @GetMapping("/login")
    public String toLogin() {
        return "user/login";
    }

    @PostMapping("/register")
    public String register(User user) {
        user.setUserId(KeyUtils.genItemId());
        insert(user);
        return "user/list";
    }


    @RequestMapping("/list")
    public String list(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "5") int size, Model model) {
        Page<User> pageInfo = userService.findByPage(page, size);
        model.addAttribute("pageInfo", pageInfo);
        return "user/list";
    }

    @RequestMapping("/toadd")
    public String toadd() {
        return "user/add";
    }

    @RequestMapping("/add")
    public String add(User user) {
        user.setUserId(KeyUtils.genItemId());
        insert(user);
        return "redirect:list";
    }

    @RequestMapping("/toedit")
    public String toedit(String id, Model model) {
        User user = userService.findById(id);
        model.addAttribute("user", user);
        return "user/edit";
    }

    @RequestMapping("/edit")
    public String edit(User user) {
        update(user);
        return "redirect:list";
    }

    @RequestMapping("/delete")
    public String delete(String id) {
        remove(id);
        return "redirect:list";
    }
}
