/*
 * https://www.youtube.com/watch?v=vTu2HQrXtyw
 * https://www.youtube.com/watch?v=K-KUfg-Cuc8
 *
 * http://localhost:8080/usuarios
 *
 *
  {
    "codigo": "usr4",
    "nombres": "usuario4",
    "apellidos": "cuatro",
    "id_estado": 0
  }
 */

package com.example.ecommerce2.models;

import com.fasterxml.jackson.annotation.JsonFormat;
import net.bytebuddy.dynamic.loading.InjectionClassLoader;

import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.persistence.*;

import static net.bytebuddy.dynamic.loading.InjectionClassLoader.*;

@Entity
@Table(name = "usuarios")
public class UsuariosModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private Long id;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Column(name="fecha_registro", columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP", insertable = false, updatable = false)
    private Date fecha_registro;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Column(name="fecha_ultima_actualizacion", columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP", insertable = false, updatable = true)
    private Date fecha_ultima_actualizacion  = new Date();

    private String codigo;
    private String nombres;
    private String apellidos;
    private Long id_estado;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public Long getId_estado() {
        return id_estado;
    }

    public void setId_estado(Long id_estado) {
        this.id_estado = id_estado;
    }

    public Date getFecha_registro() {
        return fecha_registro;
    }

    public void setFecha_registro(Date fecha_registro) {
        this.fecha_registro = fecha_registro;
    }

    public Date getFecha_ultima_actualizacion() {
        return fecha_ultima_actualizacion;
    }

    public void setFecha_ultima_actualizacion(Date fecha_ultima_actualizacion) {
        this.fecha_ultima_actualizacion = fecha_ultima_actualizacion;
    }

}
