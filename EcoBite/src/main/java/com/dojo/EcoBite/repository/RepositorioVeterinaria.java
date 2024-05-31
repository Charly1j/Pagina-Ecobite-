package com.dojo.EcoBite.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dojo.EcoBite.models.Veterinary;

@Repository
public interface RepositorioVeterinaria extends JpaRepository<Veterinary, Long> {
	
	List<Veterinary> findAll();
}
