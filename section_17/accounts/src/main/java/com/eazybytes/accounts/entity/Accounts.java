package com.eazybytes.accounts.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter @Setter @ToString @AllArgsConstructor @NoArgsConstructor
public class Accounts extends  BaseEntity {

    @Column(name="customer_id")
    private Long customerId;

    @Column(name="account_number")
    @Id //this is primary key but we are not mentioning any way to generate Primary key bec we ll write logic in API as it will be 10 digit key
    private Long accountNumber;

    @Column(name="account_type")
    private String accountType;

    @Column(name="branch_address")
    private String branchAddress;

    @Column(name = "communication_sw")
    private Boolean communicationSw;

}
