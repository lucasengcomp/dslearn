package com.dslearn.entities.enums;

public enum ResourceType {

    LESSON_ONLY(0, "Apenas Lição"),
    LESSON_TASK(1, "Apenas tarefa"),
    FORUM(2, "Fórum"),
    EXTERNAL_LINK(3, "Link externo");

    private Integer position;
    private String value;

    ResourceType(Integer position, String value) {
        this.position = position;
        this.value = value;
    }
}
