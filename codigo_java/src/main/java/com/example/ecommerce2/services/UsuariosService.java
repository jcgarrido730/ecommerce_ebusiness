package com.example.ecommerce2.services;

import com.example.ecommerce2.models.UsuariosModel;
import com.example.ecommerce2.repositories.UsuariosRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Optional;

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

    public Optional<UsuariosModel> obtenerPorId(Long id){
        return usuariosRepository.findById(id);
    }

    public ArrayList<UsuariosModel> obtenerPorCodigo(String codigo){
        return usuariosRepository.findByCodigo(codigo);
    }

    public boolean eliminarUsuario(Long id){
        try{
            usuariosRepository.deleteById(id);
            return true;
        }
        catch(Exception err){
            return false;
        }
    }
}
