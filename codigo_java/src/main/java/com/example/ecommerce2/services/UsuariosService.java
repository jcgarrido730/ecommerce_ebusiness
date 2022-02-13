package com.example.ecommerce2.services;

import com.example.ecommerce2.models.UsuariosModel;
import com.example.ecommerce2.repositories.UsuariosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class UsuariosService {
    @Autowired
    UsuariosRepository usuariosRepository;

    public ArrayList<UsuariosModel> obtenerUsuarios(){
        return (ArrayList<UsuariosModel>) usuariosRepository.findAll();
    }

    public UsuariosModel guardarUsuario(UsuariosModel usuario){
        return usuariosRepository.save(usuario);
    }
}
