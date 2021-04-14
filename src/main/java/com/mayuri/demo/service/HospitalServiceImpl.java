package com.mayuri.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mayuri.demo.dao.HospitalDAO;

import com.mayuri.demo.model.Hospital;
@Service
public class HospitalServiceImpl implements HospitalService {
	
	@Autowired
	private HospitalDAO hospitalDAO; 
	
	@Transactional
	@Override
	public List<Hospital> list() {
		return hospitalDAO.list();
	}

	@Transactional
	@Override
	public Hospital get(int id) {
		return hospitalDAO.get(id);
	}

	@Transactional
	@Override
	public void save(Hospital hospital) {
		hospitalDAO.save(hospital);
	}

	@Transactional
	@Override
	public void delete(int id) {
		hospitalDAO.delete(id);
	}

}
