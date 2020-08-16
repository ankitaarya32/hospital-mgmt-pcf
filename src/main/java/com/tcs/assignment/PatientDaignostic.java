package com.tcs.assignment;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PatientDaignostic {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int diag_pait_id;
private String NameOfTest;
private double Amount;
private int PatientId;
@Override
public String toString() {
	return "PatientDaignostic [diag_pait_id=" + diag_pait_id + ", NameOfTest=" + NameOfTest + ", Amount=" + Amount
			+ ", PatientId=" + PatientId + "]";
}
public int getDiag_pait_id() {
	return diag_pait_id;
}
public void setDiag_pait_id(int diag_pait_id) {
	this.diag_pait_id = diag_pait_id;
}
public String getNameOfTest() {
	return NameOfTest;
}
public void setNameOfTest(String nameOfTest) {
	NameOfTest = nameOfTest;
}
public double getAmount() {
	return Amount;
}
public void setAmount(double amount) {
	Amount = amount;
}
public int getPatientId() {
	return PatientId;
}
public void setPatientId(int patientId) {
	PatientId = patientId;
}
}
