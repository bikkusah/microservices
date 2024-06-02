package com.eazybytes.accounts.dto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

import java.util.List;
import java.util.Map;

@ConfigurationProperties(prefix = "accounts")//prefix is accounts in both yaml and here
@Getter
@Setter
public class AccountsContactInfoDto { we are using @Conf... to avoid @value bec its for single properties now we can inject multiple values from .yaml file

    private String message;
    private Map<String, String> contactDetails;
    private List<String> onCallSupport;

}
