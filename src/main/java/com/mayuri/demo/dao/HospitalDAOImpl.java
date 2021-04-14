package com.mayuri.demo.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mayuri.demo.model.Hospital;



@Repository
public class HospitalDAOImpl implements HospitalDAO {

	@Autowired
	private EntityManager entityManager;
	@Override
	public List<Hospital> list() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Hospital> query = currentSession.createQuery("from Hospital", Hospital.class);
		List<Hospital> list = query.getResultList();
		return list;
	}
	
	@Override
	public void save(Hospital hospital) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(hospital);
	}
	@Override
	public Hospital get(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Hospital hospitalObj = currentSession.get(Hospital.class, id);
		return hospitalObj;
	}
	@Override
	public void delete(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Hospital hospitalObj = currentSession.get(Hospital.class, id);
		currentSession.delete(hospitalObj);
	}
}