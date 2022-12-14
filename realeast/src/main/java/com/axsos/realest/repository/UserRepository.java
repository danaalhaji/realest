package com.axsos.realest.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.axsos.realest.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
 User findByUsername(String username);
 List<User> findAll();
}