package com.tcs.assignment;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class MedicineMaster {
	@Id
private int MedicineId;
private String MedicineName;
private int Quantity;
private double RateOfMed;
public int getMedicineId() {
	return MedicineId;
}
public void setMedicineId(int medicineId) {
	MedicineId = medicineId;
}
public String getMedicineName() {
	return MedicineName;
}
public void setMedicineName(String medicineName) {
	MedicineName = medicineName;
}
public int getQuantity() {
	return Quantity;
}
public void setQuantity(int quantity) {
	Quantity = quantity;
}
public double getRateOfMed() {
	return RateOfMed;
}
public void setRateOfMed(double rateOfMed) {
	RateOfMed = rateOfMed;
}
@Override
public String toString() {
	return "MedicineMaster [MedicineId=" + MedicineId + ", MedicineName=" + MedicineName + ", Quantity=" + Quantity
			+ ", RateOfMed=" + RateOfMed + "]";
}

}
