package com.axsos.realest.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.axsos.realest.models.Customer;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, Long>{
	List<Customer> findAll();
    Optional<Customer> findByEmail(String email);
//	User findByfullNameORuPhoneNum(String fullName , String uPhoneNum);
}