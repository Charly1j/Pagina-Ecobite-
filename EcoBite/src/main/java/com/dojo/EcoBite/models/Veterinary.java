package com.dojo.EcoBite.models;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "veterinaries")
public class Veterinary {

	// atributos
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message = "El campo del nombre de la veterinaria es obligatorio")
	@Size(min = 2, max = 40, message = "El nombre de la veterinaria debe de tener entre 2 y 40 caracteres")
	private String vetname;

	@NotEmpty(message = "El campo del nombre de la descripcion es obligatorio")
	@Size(min = 10, max = 999)
	private String vetdescription;

	@NotEmpty
	private String vetemail;

	@NotEmpty
	private String ubicacion;

	@NotEmpty
	private String servicios;

	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date created_at;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updated_at;

	// Constructor

	public Veterinary() {
	}

	// Getter y setters
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getVetname() {
		return vetname;
	}

	public void setVetname(String vetname) {
		this.vetname = vetname;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}

	public String getUbicacion() {
		return ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

	public String getServicios() {
		return servicios;
	}

	public void setServicios(String servicios) {
		this.servicios = servicios;
	}

	public String getVetdescription() {
		return vetdescription;
	}

	public void setVetdescription(String vetdescription) {
		this.vetdescription = vetdescription;
	}

	public String getVetemail() {
		return vetemail;
	}

	public void setVetemail(String vetemail) {
		this.vetemail = vetemail;
	}

}
