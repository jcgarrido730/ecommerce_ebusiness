package com.example.ecommerce2.controllers;

import com.example.ecommerce2.models.UsuariosModel;
import com.example.ecommerce2.services.UsuariosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

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

}
