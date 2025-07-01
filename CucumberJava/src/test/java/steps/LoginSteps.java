package steps;

import app.LoginService;
import static org.junit.Assert.*;
import io.cucumber.java.pt.*;

public class LoginSteps {
    private String usuario;
    private String senha;
    private boolean resultado;

    @Dado("que o usuário digitou o nome {string}")
    public void que_o_usuario_digitou_o_nome(String nome) {
        this.usuario = nome;
    }

    @E("a senha {string}")
    public void a_senha(String senha) {
        this.senha = senha;
    }

    @Quando("ele tenta fazer login")
    public void ele_tenta_fazer_login() {
        resultado = new LoginService().autenticar(usuario, senha);
    }

    @Então("o login deve ser autorizado")
    public void o_login_deve_ser_autorizado() {
        assertTrue(resultado);
    }

    @Então("o login deve ser negado")
    public void o_login_deve_ser_negado() {
        assertFalse(resultado);
    }
}