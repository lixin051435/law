package com.web.law.domain;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

/**
 * @ClassName : Question
 * @Description :
 * @Author : lixin
 * @Date: 2020-08-24 21:38
 */
@Entity
@Table(name = "t_question", schema = "db_law", catalog = "")
public class Question {
    private String questionId;
    private String userId;
    private String lawerId;
    private String question;
    private String answer;
    private Timestamp createtime;
    private Timestamp replytime;

    @Id
    @Column(name = "question_id")
    public String getQuestionId() {
        return questionId;
    }

    public void setQuestionId(String questionId) {
        this.questionId = questionId;
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
    @Column(name = "lawer_id")
    public String getLawerId() {
        return lawerId;
    }

    public void setLawerId(String lawerId) {
        this.lawerId = lawerId;
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
    @Column(name = "answer")
    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Basic
    @Column(name = "createtime")
    public Timestamp getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Timestamp createtime) {
        this.createtime = createtime;
    }

    @Basic
    @Column(name = "replytime")
    public Timestamp getReplytime() {
        return replytime;
    }

    public void setReplytime(Timestamp replytime) {
        this.replytime = replytime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Question question1 = (Question) o;
        return Objects.equals(questionId, question1.questionId) &&
                Objects.equals(userId, question1.userId) &&
                Objects.equals(lawerId, question1.lawerId) &&
                Objects.equals(question, question1.question) &&
                Objects.equals(answer, question1.answer) &&
                Objects.equals(createtime, question1.createtime) &&
                Objects.equals(replytime, question1.replytime);
    }

    @Override
    public int hashCode() {

        return Objects.hash(questionId, userId, lawerId, question, answer, createtime, replytime);
    }
}
