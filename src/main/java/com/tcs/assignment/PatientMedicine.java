package com.tcs.assignment;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PatientMedicine {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pat_med_id;
	private int MedicineId;
private int PatientId;
private int Quantity;
private double RateOfMed;
private String MedName;
private double Amount;
public int getPatientId() {
	return PatientId;
}
public void setPatientId(int patientId) {
	PatientId = patientId;
}
public int getMedicineId() {
	return MedicineId;
}
public void setMedicineId(int medicineId) {
	MedicineId = medicineId;
}
public int getQuantity() {
	return Quantity;
}
public void setQuantity(int quantity) {
	Quantity = quantity;
}
public String getMedName() {
	return MedName;
}
public void setMedName(String medName) {
	MedName = medName;
}
public double getAmount() {
	return Amount;
}
public void setAmount(double amount) {
	Amount = amount;
}
public double getRateOfMed() {
	return RateOfMed;
}
public void setRateOfMed(double rateOfMed) {
	RateOfMed = rateOfMed;
}
public int getPat_med_id() {
	return pat_med_id;
}
public void setPat_med_id(int pat_med_id) {
	this.pat_med_id = pat_med_id;
}
@Override
public String toString() {
	return "PatientMedicine [pat_med_id=" + pat_med_id + ", MedicineId=" + MedicineId + ", PatientId=" + PatientId
			+ ", Quantity=" + Quantity + ", RateOfMed=" + RateOfMed + ", MedName=" + MedName + ", Amount=" + Amount
			+ "]";
}


}
