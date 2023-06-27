package com.dslearn.entities.enums;

public enum DeliverStatus {

    PENDING(0, "Pendente"),
    ACCEPTED(1, "Aceito"),
    REJECT(2, "Rejeitado");

    private Integer position;
    private String value;

    DeliverStatus(Integer position, String value) {
        this.position = position;
        this.value = value;
    }
}
