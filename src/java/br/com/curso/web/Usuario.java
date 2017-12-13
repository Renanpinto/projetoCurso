package br.com.curso.web;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

public class Usuario {

    private int id;
    private String nome;
    private String email;
    private String telefone;
    private String rgUsuario;
    private String login;
    private String passwordHash;

    public Usuario(int id, String nome, String email, String telefone, String rgUsuario, String login, String passwordHash) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
        this.rgUsuario = rgUsuario;
        this.login = login;
        this.passwordHash = passwordHash;
    }

    public static Usuario getUsuario(String login, String password) throws SQLException {
        String SQL = "SELECT * FROM usuarios WHERE login=? AND pass_hash=?";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setString(1, login);
        s.setString(2, password + "");
        ResultSet rs = s.executeQuery();
        Usuario u = null;
        if (rs.next()) {
            u = new Usuario(rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("login"),
                    rs.getString("pass_hash"),
                    rs.getString("email"),
                    rs.getString("telefone"),
                    rs.getString("rgUsuario"));
        }
        rs.close();
        s.close();
        return u;
    }
    
    public static Usuario getUsuarioAtual(String id) throws SQLException {
        String SQL = "SELECT * FROM usuarios WHERE id=?";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setString(1, id);
        ResultSet rs = s.executeQuery();
        Usuario u = null;
        if (rs.next()) {
            u = new Usuario(rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("login"),
                    rs.getString("pass_hash"),
                    rs.getString("email"),
                    rs.getString("telefone"),
                    rs.getString("rgUsuario"));
        }
        rs.close();
        s.close();
        return u;
    }
    
     public static ArrayList<Usuario> getListaUsuario(int login) throws Exception{
        ArrayList<Usuario> list = new ArrayList<>();
        String SQL = "SELECT * FROM usuarios WHERE id=?";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setInt(1, login);
        ResultSet rs = s.executeQuery();
        Usuario u = null;
        if (rs.next()) {
        u = new Usuario(
                    rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("login"),
                    rs.getString("pass_hash"),
                    rs.getString("email"),
                    rs.getString("telefone"),
                    rs.getString("rgUsuario"));
            list.add(u);
        }
        rs.close();
        s.close();
        return list;
    }
  

    public static void addUsuario(String login, String password, String nome, String email, String telefone, String rgUsuario) throws Exception {
        String SQL = "INSERT INTO usuarios VALUES(default,?,?,?,?,?,?)";
        try (PreparedStatement s = Database.getConnection().prepareStatement(SQL)) {
            s.setString(1, nome);
            s.setString(2, login);
            s.setString(3, password);
            s.setString(4, email);
            s.setString(5, telefone);
            s.setString(6, rgUsuario);
            s.execute();
        }
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getRgUsuario() {
        return rgUsuario;
    }

    public void setRgUsuario(String rgUsuario) {
        this.rgUsuario = rgUsuario;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPasswordHash() {
        return passwordHash;
    }

    public void setPasswordHash(String passwordHash) {
        this.passwordHash = passwordHash;
    }

}
