package com.DTO;

public class MangaDto {

	private String nombre;
	private String fecha;
	private String imagen;
	private String genero;
	private String descripcion;
	
	
	public MangaDto(){
				
	}


	public MangaDto(String nombre, String fecha, String imagen, String genero, String descripcion) {
		this.nombre = nombre;
		this.fecha = fecha;
		this.imagen = imagen;
		this.genero = genero;
		this.descripcion = descripcion;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getFecha() {
		return fecha;
	}


	public void setFecha(String fecha) {
		this.fecha = fecha;
	}


	public String getImagen() {
		return imagen;
	}


	public void setImagen(String imagen) {
		this.imagen = imagen;
	}


	public String getGenero() {
		return genero;
	}


	public void setGenero(String genero) {
		this.genero = genero;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
	
	
}
