package com.dojo.EcoBite.service;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.dojo.EcoBite.models.User;
import com.dojo.EcoBite.models.Veterinary;
import com.dojo.EcoBite.repository.RepositorioUsuario;
import com.dojo.EcoBite.repository.RepositorioVeterinaria;

@Service
public class AppService {

	@Autowired
	private RepositorioVeterinaria repositorio_veterinaria;

	@Autowired
	private RepositorioUsuario repositorio_usuario;
	

	public List<Veterinary> listaVeterinarias() {
		return repositorio_veterinaria.findAll();
	}

	public User register(User nuevoUsuario, BindingResult result) {

		String nuevoEmail = nuevoUsuario.getEmail();// Obtenemos el correo

		User existeUsuario = repositorio_usuario.findByEmail(nuevoEmail); // Null o objeto User

		// Verificando que el correo no exista
		if (existeUsuario != null) {
			result.rejectValue("email", "Unique", "El correo ya esta registrado");
		}
		// Comparando las contraseñas
		if (!nuevoUsuario.getPassword().equals(nuevoUsuario.getConfirm())) {
			result.rejectValue("confirm", "Matches", "Las contraseñas no coinciden");
		}

		if (!result.hasErrors()) {
			// Encriptamos contraseñá
			String contra_encri = BCrypt.hashpw(nuevoUsuario.getPassword(), BCrypt.gensalt());
			nuevoUsuario.setPassword(contra_encri);
			// Guardo Usuario
			return repositorio_usuario.save(nuevoUsuario);
		} else {
			return null;
		}
	}

	public User login(String email, String password) {

		// Buscamos que el correo este en la base de datos
		User existeUsuario = repositorio_usuario.findByEmail(email);
		if (existeUsuario == null) {
			return null;
		}

		// Comparamos contraseñas encriptadas

		if (BCrypt.checkpw(password, existeUsuario.getPassword())) {
			return existeUsuario;
		} else {
			return null;
		}
	}

//    @Autowired
//    private RepositorioVeterinaria repositorio_veterinaria;

	// Me guarda en la base de datos un objeto de projecto
	public Veterinary save_veterinary(Veterinary nuevaVeterinary) {
		if (repositorio_veterinaria != null) {
			return repositorio_veterinaria.save(nuevaVeterinary);
		} else {
			// Puedes manejar el caso cuando el repositorio es nulo
			throw new IllegalStateException("El repositorio_veterinaria no se ha inicializado correctamente.");
		}
	}

	public Veterinary find_veterinary(Long id) {
		if (repositorio_veterinaria != null) {
			return repositorio_veterinaria.findById(id).orElse(null);
		} else {
			throw new IllegalStateException("El repositorio_veterinaria no se ha inicializado correctamente.");
		}
	}

	public void delete(Long veterinary_id) {
		if (repositorio_veterinaria != null) {
			repositorio_veterinaria.deleteById(veterinary_id);
		} else {
			throw new IllegalStateException("El repositorio_veterinaria no se ha inicializado correctamente.");
		}
	}
}
