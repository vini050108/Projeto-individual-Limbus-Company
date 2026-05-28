// sessão
function validarSessao() {
    var email = sessionStorage.EMAIL_USUARIO;
    var nome = sessionStorage.NOME_USUARIO;

    var b_usuario = document.getElementById("b_usuario");

    if (email != null && nome != null) {
        b_usuario.innerHTML = nome;
    } else {
        window.location = "../login.html";
    }
}

function limparSessao() {
    sessionStorage.clear();
    window.location = "../login.html";
}

// carregamento (loading)
function aguardar() {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "flex";
}

function finalizarAguardar(texto) {
    var divAguardar = document.getElementById("div_aguardar");
    divAguardar.style.display = "none";

    var divErrosLogin = document.getElementById("div_erros_login");
    if (texto) {
        divErrosLogin.style.display = "flex";
        divErrosLogin.innerHTML = texto;
    }
}

function checkSession() {
  const nome = sessionStorage.NOME_USUARIO

  if (nome) {
    const navNome = document.getElementById('nav-nome')
    const navUsuario = document.getElementById('nav-usuario')
    const navLogin = document.getElementById('nav-login')
    const navCadastro = document.getElementById('nav-cadastro')

    if (navNome) navNome.innerHTML = nome
    if (navUsuario) navUsuario.style.display = 'block'
    if (navLogin) navLogin.style.display = 'none'
    if (navCadastro) navCadastro.style.display = 'none'
  }
}
function sair() {
  sessionStorage.clear()
  window.location = '../login.html'
}