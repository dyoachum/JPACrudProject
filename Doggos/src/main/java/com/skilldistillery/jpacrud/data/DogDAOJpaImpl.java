package com.skilldistillery.jpacrud.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Dog;

@Service
@Transactional
public class DogDAOJpaImpl implements DogDAO {

	private static final String url = "jdbc:mysql://localhost:3306/dogdb?useSSL=false";
	private String user = "doguser";
	private String pass = "doguser";
	private static Connection conn;

	@PersistenceContext
	EntityManager em;

	@Override
	public Dog findById(int id) {
		// TODO Auto-generated method stub
		return em.find(Dog.class, id);
	}

	@Override
	public List<Dog> findAll() {
		String jpql = "SELECT d FROM Dog d";

		return em.createQuery(jpql, Dog.class).getResultList();
	}

	public Dog createDog(Dog dog) {
		em.persist(dog);
		em.flush();
		em.close();
		System.out.println("New Doggo added" + dog);
		return dog;
	}

	public void deleteDog(Dog dog) {
		System.out.println("Bad dogs get put down" + dog);
		em.remove(dog);
		em.flush();
	}
		

	public Dog updateDog(Dog dog, int id) {
		String sql = "SELECT d FROM Dog d WHERE d.id = :updateId";
		Dog updating = em.createQuery(sql, Dog.class).setParameter("updateId", id).getSingleResult();

		updating.setBreed(dog.getBreed());
		updating.setSize(dog.getSize());
		updating.setDescription(dog.getDescription());

		em.flush();

		return updating;

	}

}
