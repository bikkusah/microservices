package com.eazybytes.accounts.entity;

import jakarta.persistence.Column;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDateTime;
//the purpose of this class is we need createdBy,bla bla in both table so we are creating ths class and we will use in our other tablble
@MappedSuperclass //this class will act as super class and we can extend this class
@EntityListeners(AuditingEntityListener.class)//go thr and create an object for By
@Getter @Setter @ToString
public class BaseEntity {

    @CreatedDate//automatically handled by spring data jpa
    @Column(updatable = false)
    private LocalDateTime createdAt;

    @CreatedBy//automatically handled by spring data jpa,for this we should write custom
    @Column(updatable = false)
    private String createdBy;

    @LastModifiedDate//automatically hadnled by spring data jpa
    @Column(insertable = false)
    private LocalDateTime updatedAt;

    @LastModifiedBy//automatically handled by spring data jpa,for this we should write custom
    @Column(insertable = false)
    private String updatedBy;
}
