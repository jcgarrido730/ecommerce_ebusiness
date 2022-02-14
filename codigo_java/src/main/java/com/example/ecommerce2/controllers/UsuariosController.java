package com.example.ecommerce2.controllers;

import com.example.ecommerce2.models.UsuariosModel;
import com.example.ecommerce2.services.UsuariosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Optional;

@RestController
@RequestMapping("/usuarios")
public class UsuariosController {
    @Autowired
    UsuariosService usuariosService;

    @GetMapping()
    public ArrayList<UsuariosModel> obtenerUsuarios(){
        return usuariosService.obtenerUsuarios();
    }

    @PostMapping()
    public UsuariosModel guardarUsuario(@RequestBody UsuariosModel usuario){
        return this.usuariosService.guardarUsuario(usuario);
    }

    @GetMapping(path="/{id}")
    public Optional<UsuariosModel> obtenerUsuarioById(@PathVariable("id") Long id){
        return this.usuariosService.obtenerPorId(id);
    }

    @GetMapping("/query")
    public ArrayList<UsuariosModel> obtenerPorUsuario(@RequestParam("codigo") String codigo){
        return this.usuariosService.obtenerPorCodigo(codigo);
    }

    @DeleteMapping(path = "/{id}")
    public String EliminarPorId(@PathVariable("id") Long id){
        boolean ok = this.usuariosService.eliminarUsuario(id);
        if(ok){
            return "Se eliminó el usuario con id: " + id;
        }
        else{
            return "No se pudo eliminar el usuario con id: " + id;
        }
    }
}
