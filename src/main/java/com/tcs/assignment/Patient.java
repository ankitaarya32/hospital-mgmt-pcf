package com.tcs.assignment;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Patient {
@Id
private int padhar;
private int patientId;
private String pname;
private int age;
@Temporal(TemporalType.DATE)
@DateTimeFormat(pattern = "yyyy-MM-dd")
private Date DateOfAdd;
private String bedtype;
private String Address;
private String State;
private String City;
private String Status;
public int getPadhar() {
	return padhar;
}
public void setPadhar(int padhar) {
	this.padhar = padhar;
}
public int getPatientId() {
	return patientId;
}
public void setPatientId(int patientId) {
	this.patientId = patientId;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public Date getDateOfAdd() {
	return DateOfAdd;
}
public void setDateOfAdd(Date dateOfAdd) {
	DateOfAdd = dateOfAdd;
}
public String getBedtype() {
	return bedtype;
}
public void setBedtype(String bedtype) {
	this.bedtype = bedtype;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public String getState() {
	return State;
}
public void setState(String state) {
	State = state;
}
public String getCity() {
	return City;
}
public void setCity(String city) {
	City = city;
}
public String getStatus() {
	return Status;
}
public void setStatus(String status) {
	Status = status;
}
@Override
public String toString() {
	return "Patient [padhar=" + padhar + ", patientId=" + patientId + ", pname=" + pname + ", age=" + age
			+ ", DateOfAdd=" + DateOfAdd + ", bedtype=" + bedtype + ", Address=" + Address + ", State=" + State
			+ ", City=" + City + ", Status=" + Status + "]";
}


}
