package app;

import java.util.HashMap;
import java.util.Map;

public class LoginService {
    private Map<String, String> usuarios;

    public LoginService() {
        usuarios = new HashMap<>();
        usuarios.put("admin", "1234");
        usuarios.put("joao", "senha123");
        usuarios.put("maria", "senha456");
    }

    public boolean autenticar(String usuario, String senha) {
        if (usuario == null || senha == null || usuario.isEmpty() || senha.isEmpty()) {
            return false;
        }
        return senha.equals(usuarios.get(usuario));
    }
}