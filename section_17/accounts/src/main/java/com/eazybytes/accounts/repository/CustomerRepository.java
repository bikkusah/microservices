package com.eazybytes.accounts.repository;

import com.eazybytes.accounts.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {

    // This method tells Spring Data JPA to fetch a record from the customer table
    // based on the value in the mobile_number column.
    // Equivalent SQL: SELECT * FROM customer WHERE mobile_number = ?
    //this concept is called as Dervied name concept
    Optional<Customer> findByMobileNumber(String mobileNumber);

    // If you want to fetch data based on multiple columns, you can define additional methods.
    // For example, this method fetches a record based on values in both the mobile_number and column2 columns.
    // Equivalent SQL: SELECT * FROM customer WHERE mobile_number = ? AND column2 = ?
    // Uncomment the following method to use it:
    // Optional<Customer> findByMobileNumberAndColumn2(String mobileNumber, String column2);
}
