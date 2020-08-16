package com.tcs.assignment;

import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PatientService {

	@Autowired
	private PatientRepo prepo;
	@Autowired
	private loginRepo lrepo;
	@Autowired
	private MedicineRepo pmed;
	@Autowired
	private MastermedRepo mmed;
	@Autowired
	private DiagnosticRepo pdiag;
	@Autowired
	private MasterDaignosticRepo mdiag;
	
	
	public login checkLoginuser(login ln) {
		List<login> lx=(List<login>) lrepo.findAll();
		if(lx.size()<3) {
		login l1=new login(101,"admin","tcs","admin");
		login l2=new login(102,"admin1","tcs","registration desk");
		login l3=new login(103,"admin2","tcs","Pharmacist");
		login l4=new login(104,"admin3","tcs","Diagnostic");
		lrepo.save(l1);lrepo.save(l2);lrepo.save(l3);lrepo.save(l4);}
		//List<login> lns=lrepo.findByUsername(ln.getUsername());
		List<login> lns=lrepo.findByUsernameAndPassword(ln.getUsername(), ln.getPassword());
		System.out.println("after verify"+lns);
		if(lns.size()>0) {ln=lns.get(0); ln.setLast_Login(Date.valueOf(LocalDate.now())); ln.setLast_time(Time.valueOf(LocalTime.now()));
		lrepo.save(ln);
		}
		else ln=null;
		return ln;
	}
	
	
	
	public int addPatient(Patient pt) {
		int status=0;
		int id=0;
		System.out.println(pt);
		Optional<Patient> pt1=null;
		try {
			pt1=prepo.findById(pt.getPadhar());
			pt.setPatientId(pt1.get().getPatientId());
			status=1;
		}
		catch(Exception e) {e.printStackTrace();}
		if(!pt1.isPresent()) {
		try {id=prepo.max();}
		catch(Exception e) {e.printStackTrace();}
		
		if(id>0) pt.setPatientId(id+1);
		else {pt.setPatientId(10101);}
		}
		
		try{prepo.save(pt);
		
		}
		catch(Exception e) {e.printStackTrace();}
	return status;
	}
	
	public int updatePatient(Patient pt) {
		int status=0;
		int id=0;
		System.out.println(pt);
		Optional<Patient> pt1=null;
		Patient xy=pt;
		try {
			pt1=prepo.findById(pt.getPadhar());
			System.out.println("value of pt1 is:"+pt1);
			pt.setPatientId(pt1.get().getPatientId());
			
		}
		catch(Exception e) {e.printStackTrace();}
		if(!pt1.isPresent()) {
		try {id=prepo.max();}
		catch(Exception e) {e.printStackTrace();}
		
		if(id>0) pt.setPatientId(id+1);
		else {pt.setPatientId(10101);}
		}
		
		try{prepo.save(pt);
		Optional<Patient> pt2=prepo.findById(pt.getPadhar());
		System.out.println("value of xy is: "+xy);
		System.out.println(pt2.get());
		if(pt1.get().equals(pt2.get()))status=1;
		/*if(pt1.get().getAddress()!=pt2.get().getAddress())status=1;
		if(pt1.get().getAge()!=pt2.get().getAge())status=1;
		if(pt1.get().getBedtype()!=pt2.get().getBedtype()) status=1;
		if(pt1.get().getCity()!=pt2.get().getCity())status=1;
		if(pt1.get().getDateOfAdd()!=pt2.get().getDateOfAdd())status=1;
		if(pt1.get().getPname()!=pt2.get().getPname())status=1;
		if(pt1.get().getState()!=pt2.get().getState())status=1;
		if(pt1.get().getStatus()!=pt2.get().getStatus())status=1;*/
		}
		catch(Exception e) {e.printStackTrace();}
	return status;
	}
	
	public List<Patient> viewAllPatient() {
		List<Patient> l1=(List<Patient>) prepo.findAll();
		System.out.println("service run: "+l1);
		return l1;
	}
	

	public Patient getdetailbyPtId(Patient pt) {
		Patient pt1=null;
		try {
		pt1=prepo.findByPatientId(pt.getPatientId());}
		catch(Exception e) {e.printStackTrace();}
		if(pt1!=null)pt=pt1;
		else pt=null;
		return pt;
	}
	public void deletePatient(Patient pt) {
		prepo.deleteById(pt.getPadhar());
		System.out.println("account deleted");
	}
	
	public List<PatientMedicine> getpatientMedicineById(int id) {
		
		List<PatientMedicine> l2=new ArrayList<PatientMedicine>();
		List<PatientMedicine> l1=(List<PatientMedicine>) pmed.findAll();
		System.out.println("from get patient"+l1);
		for(PatientMedicine p:l1) {
			if(p.getPatientId()==id) l2.add(p);
		}
		System.out.println("from get patient l2"+l2);
		return l2;
	}
	
public PatientMedicine getpatientMedicineBymedId(int id) {
		
		PatientMedicine l2=null;
		List<PatientMedicine> l1=(List<PatientMedicine>) pmed.findAll();
	
		for(PatientMedicine p:l1) {
			if(p.getPat_med_id()==id) l2=p;
		}
		
		return l2;
	}

	public List<MedicineMaster> getAllMedicine(){
		List<MedicineMaster> l1=(List<MedicineMaster>) mmed.findAll();
		return l1;
	}
	
	public List<MasterDiagnostic> getAllDiagnostic(){
		List<MasterDiagnostic> l1=(List<MasterDiagnostic>) mdiag.findAll();
		return l1;
	}
	
	public void addPatientMedicine(PatientMedicine pt) {
		int id=0;
		try {id=pmed.max();}
		catch(Exception e) {e.printStackTrace();}
		
		if(id>0) pt.setPat_med_id(id+1);
		else {pt.setPat_med_id(101);}
		pmed.save(pt);
	}
	public void deletePatientMedicine(PatientMedicine pt) {
		pmed.delete(pt);
	}
	
	public List<PatientDaignostic> getpatientDiagnosticById(int id) {
		
		List<PatientDaignostic> l2=new ArrayList<PatientDaignostic>();
		List<PatientDaignostic> l1=(List<PatientDaignostic>) pdiag.findAll();
			System.out.println("from get patient"+l1);
			for(PatientDaignostic p:l1) {
				if(p.getPatientId()==id) l2.add(p);
			}
			System.out.println("from get patient l2"+l2);
			return l2;
		}
		
	public void addPatientDiagnose(PatientDaignostic pt) {
		int id=0;
		try {id=pdiag.max();}
		catch(Exception e) {e.printStackTrace();}
		
		if(id>0) pt.setDiag_pait_id(id+1);
		else {pt.setDiag_pait_id(701);}
		pdiag.save(pt);
	}
	public void deletePatientDiagnostic(PatientDaignostic pt) {
		pdiag.delete(pt);
	}
	public PatientDaignostic getPatientDiagnosticBydiagId(int id) {
		PatientDaignostic pd=null;
		List<PatientDaignostic> l1=(List<PatientDaignostic>) pdiag.findAll();
			for(PatientDaignostic p:l1) {
				if(p.getDiag_pait_id()==id) pd=p;
			}
		return pd;
	}
	public byte updateMastermedicine(MedicineMaster pt) {
		List<MedicineMaster> l1=mmed.findAll();
		byte x=1;
		for(MedicineMaster px:l1) {
			if(pt.getMedicineId()==px.getMedicineId() || pt.getMedicineName().equalsIgnoreCase(px.getMedicineName()))
				x=0;
		}
		if(x==1) {
		mmed.saveAndFlush(pt);}
		return x;
	}
	
	public byte addMasterDiagnostic(MasterDiagnostic pt) {
		List<MasterDiagnostic> l1=mdiag.findAll();
		byte x=1;
		for(MasterDiagnostic px:l1) {
			if(pt.getTestId()==px.getTestId() || pt.getNameOfTest().equalsIgnoreCase(px.getNameOfTest()))
				x=0;
		}
		if(x==1) {
		mdiag.saveAndFlush(pt);}
		return x;
	}
	
	public void deleteMasterDiagnostic(int id) {
		mdiag.deleteById(id);
	}
	public void deleteMedicineMaster(int id) {
		mmed.deleteById(id);
	}
}
