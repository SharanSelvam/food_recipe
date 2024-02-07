package com.xworkz.foodrecipe.dto;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity

public class AuditDto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int auditId;
    private String createdBy;
    private String createdOn;
    private String updatedBy;
    private String updatedOn;

}
