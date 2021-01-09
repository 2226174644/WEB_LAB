package DAO;

import java.sql.Date;

public class MessBor {
    private int id;

    private String name;

    private Date time;

    private String title;

    private String message;
    private  String target;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public String getTarget() {
        return target;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setTarget(String name) {
        this.target = name;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }


}