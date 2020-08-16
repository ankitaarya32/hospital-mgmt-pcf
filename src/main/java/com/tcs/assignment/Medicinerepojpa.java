package com.tcs.assignment;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface Medicinerepojpa extends JpaRepository<MedicineMaster, Integer> {

}
