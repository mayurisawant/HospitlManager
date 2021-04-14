package com.mayuri.demo.dao;

import java.util.List;


import com.mayuri.demo.model.Hospital;

public interface HospitalDAO {
List<Hospital> list();
	
Hospital get(int id);
	
void save(Hospital hospital);
	
void delete(int id);
}
