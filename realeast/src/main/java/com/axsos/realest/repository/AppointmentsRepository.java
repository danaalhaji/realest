package com.axsos.realest.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.axsos.realest.models.Appoeintments;
import com.axsos.realest.models.Company;
import com.axsos.realest.models.User;

public interface AppointmentsRepository extends CrudRepository<Appoeintments, Long>{
	List<Appoeintments> findAll();
	List<Appoeintments> findByCompany(Company company);
	Appoeintments save(Appoeintments process);
	

}
