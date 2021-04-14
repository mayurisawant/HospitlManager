package com.mayuri.demo.service;

import java.util.List;
import com.mayuri.demo.model.Hospital;

public interface HospitalService {
	List<Hospital> list();
	
	Hospital get(int id);
	
	void save(Hospital hospital);
	
	void delete(int id);
}