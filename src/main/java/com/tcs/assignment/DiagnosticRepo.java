package com.tcs.assignment;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface DiagnosticRepo extends CrudRepository<PatientDaignostic, Integer>{
	@Query(value = "SELECT max(diag_pait_id) FROM PatientDaignostic")
	public int max();
}
