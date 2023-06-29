package com.dslearn.service.exceptions;

public class DataBaeException extends RuntimeException {
    private static final long serialVersionUID = 1L;

    public DataBaeException(String msg) {
        super(msg);
    }
}
