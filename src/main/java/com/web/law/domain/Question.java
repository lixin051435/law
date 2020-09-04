package com.web.law.domain;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Objects;

/**
 * @ClassName : Question
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-25 22:36
 */
@Entity
@Table(name = "t_question", schema = "db_law", catalog = "")
public class Question {
    private String questionId;
    private String answer;
    private Date createtime;
    private String lawyerId;
    private String question;
    private Date replytime;
    private String userId;
    private BigDecimal payment;
    private Integer status;
    private String questionAppendix;
    private String answerAppendix;

    @Basic
    @Column(name = "question_appendix")
    public String getQuestionAppendix() {
        return questionAppendix;
    }

    public void setQuestionAppendix(String questionAppendix) {
        this.questionAppendix = questionAppendix;
    }

    @Basic
    @Column(name = "answer_appendix")
    public String getAnswerAppendix() {
        return answerAppendix;
    }

    public void setAnswerAppendix(String answerAppendix) {
        this.answerAppendix = answerAppendix;
    }

    @Id
    @Column(name = "question_id")
    public String getQuestionId() {
        return questionId;
    }

    public void setQuestionId(String questionId) {
        this.questionId = questionId;
    }

    @Basic
    @Column(name = "answer")
    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Basic
    @Column(name = "createtime")
    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    @Basic
    @Column(name = "lawyer_id")
    public String getLawyerId() {
        return lawyerId;
    }

    public void setLawyerId(String lawyerId) {
        this.lawyerId = lawyerId;
    }

    @Basic
    @Column(name = "question")
    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    @Basic
    @Column(name = "replytime")
    public Date getReplytime() {
        return replytime;
    }

    public void setReplytime(Date replytime) {
        this.replytime = replytime;
    }

    @Basic
    @Column(name = "user_id")
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "payment")
    public BigDecimal getPayment() {
        return payment;
    }

    public void setPayment(BigDecimal payment) {
        this.payment = payment;
    }

    @Basic
    @Column(name = "status")
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Question question1 = (Question) o;
        return Objects.equals(questionId, question1.questionId) &&
                Objects.equals(answer, question1.answer) &&
                Objects.equals(createtime, question1.createtime) &&
                Objects.equals(lawyerId, question1.lawyerId) &&
                Objects.equals(question, question1.question) &&
                Objects.equals(replytime, question1.replytime) &&
                Objects.equals(userId, question1.userId) &&
                Objects.equals(payment, question1.payment) &&
                Objects.equals(status, question1.status);
    }

    @Override
    public int hashCode() {

        return Objects.hash(questionId, answer, createtime, lawyerId, question, replytime, userId, payment, status);
    }
}
