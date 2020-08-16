package com.tcs.assignment;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface MedicineRepo extends CrudRepository<PatientMedicine,Integer > {
	@Query(value = "SELECT max(pat_med_id) FROM PatientMedicine")
	public int max();
}
