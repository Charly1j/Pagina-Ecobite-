package com.dojo.EcoBite.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dojo.EcoBite.models.User;

@Repository
public interface RepositorioUsuario extends CrudRepository<User, Long> {

	User findByEmail(String email);
}
