package com.tcs.assignment;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class MasterDiagnostic {
	@Id
	private int TestId;
 private String NameOfTest;
 private double Amount;
public int getTestId() {
	return TestId;
}
public void setTestId(int testId) {
	TestId = testId;
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
@Override
public String toString() {
	return "MasterDiagnostic [TestId=" + TestId + ", NameOfTest=" + NameOfTest + ", Amount=" + Amount + "]";
}

 
}
