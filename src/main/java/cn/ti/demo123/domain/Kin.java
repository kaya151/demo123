package cn.ti.demo123.domain;

import java.util.Date;

public class Kin {
    private Long id;

    private String name;

    private Boolean sex;

    private Date time;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Boolean getSex() {
        return sex;
    }

    public void setSex(Boolean sex) {
        this.sex = sex;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Kin{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                ", time=" + time +
                '}';
    }
}