package com.soecode.lyf.entity;


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Appointment {
    private long bookId;
    private long studentId;
    private Date appointTime;

    //多对一的复合属性
    private Book book;//图书实体
    public long getBookId() {
        return bookId;
    }

    public long getStudentId() {
        return studentId;
    }
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    public Date getAppointTime() {
        return appointTime;
    }

    public Book getBook() {
        return book;
    }

    public Appointment() {
    }

    @Override
    public String toString() {
        return "Appointment{" +
                "bookId=" + bookId +
                ", studentId=" + studentId +
                ", appointTime=" + appointTime +
                ", book=" + book +
                '}';
    }
}
