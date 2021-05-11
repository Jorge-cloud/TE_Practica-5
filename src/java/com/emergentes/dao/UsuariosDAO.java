package com.emergentes.dao;

import com.emergentes.modelo.Usuarios;

/**
 *
 * @author Jorge
 */
public interface UsuariosDAO {
    public boolean autenticar(Usuarios usuarios) throws Exception;
    
}
