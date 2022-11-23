package com.axsos.realest.repository;
import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.axsos.realest.models.Company;

@Repository
public interface CompanyRepository extends CrudRepository<Company, Long>{
	List<Company> findAll();
    Optional<Company> findByEmailCom(String email);
    Optional<Company> findByLicensedOp(String licensedOp);
}