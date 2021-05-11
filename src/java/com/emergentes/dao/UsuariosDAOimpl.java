
package com.emergentes.dao;

import com.emergentes.Conexion.ConexionDB;
import com.emergentes.modelo.Usuarios;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Jorge
 */
public class UsuariosDAOimpl extends ConexionDB implements UsuariosDAO{

    @Override
    public boolean autenticar(Usuarios usuarios) throws Exception {
        
        
        try {
            this.conectar();
            PreparedStatement ps = this.conn.prepareStatement("SELECT usuario, password FROM usuarios WHERE usuario=? and password=?");
            ps.setString(1, usuarios.getUsuario());
            ps.setString(2, usuarios.getPassword());
            ResultSet rs=ps.executeQuery();
            if (rs.absolute(1)) {
                return true;
            }
        } catch (Exception e) {
            throw e;
        }finally{
            this.desconectar();
        }
        return false;
    }

    

    
    
}
