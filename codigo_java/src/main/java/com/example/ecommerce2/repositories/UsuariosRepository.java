package com.example.ecommerce2.repositories;

import com.example.ecommerce2.models.UsuariosModel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuariosRepository extends CrudRepository<UsuariosModel, Long>{

}
