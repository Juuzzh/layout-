<!DOCTYPE html>
<!-- Informa ao navegador que este documento usa HTML5 -->

<html lang="pt-BR">
<!-- Início do HTML e define o idioma como português do Brasil -->

<head>
  <meta charset="UTF-8">
  <!-- Permite o uso de caracteres especiais como ç, ã, é -->

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Faz o layout se adaptar a telas de celular -->

  <title>Login</title>
  <!-- Título que aparece na aba do navegador -->

  <style>
    /* ===== RESET E CONFIGURAÇÕES GERAIS ===== */

    * {
      box-sizing: border-box; /* Inclui padding e borda no tamanho total */
      font-family: Arial, Helvetica, sans-serif; /* Fonte padrão */
    }

    body {
      margin: 0; /* Remove margem padrão */
      height: 100vh; /* Altura total da tela */
      background: linear-gradient(135deg, #6a5acd, #7b68ee); /* Fundo roxo */
      display: flex; /* Usa flexbox */
      justify-content: center; /* Centraliza horizontalmente */
      align-items: center; /* Centraliza verticalmente */
    }

    /* ===== CONTAINER PRINCIPAL ===== */

    .container {
      width: 900px; /* Largura da caixa */
      height: 500px; /* Altura da caixa */
      background: #fff; /* Fundo branco */
      border-radius: 10px; /* Bordas arredondadas */
      display: flex; /* Cria duas colunas */
      overflow: hidden; /* Esconde excesso */
      box-shadow: 0 10px 30px rgba(0,0,0,0.3); /* Sombra */
    }

    /* ===== LADO ESQUERDO ===== */

    .left {
      width: 50%; /* Metade da tela */
      background: linear-gradient(135deg, #6a5acd, #7b68ee); /* Fundo roxo */
      display: flex; /* Flexbox */
      justify-content: center; /* Centraliza horizontalmente */
      align-items: center; /* Centraliza verticalmente */
    }

    .left img {
      width: 80%; /* Tamanho da imagem */
    }

    /* ===== LADO DIREITO ===== */

    .right {
      width: 50%; /* Outra metade */
      padding: 50px; /* Espaçamento interno */
      display: flex; /* Flexbox */
      flex-direction: column; /* Elementos em coluna */
      justify-content: center; /* Centraliza verticalmente */
    }

    .right h2 {
      margin-bottom: 10px; /* Espaço abaixo */
      color: #333; /* Cor do texto */
    }

    .right p {
      margin-bottom: 30px; /* Espaço abaixo */
      color: #777; /* Cinza */
    }

    /* ===== INPUTS ===== */

    input {
      width: 100%; /* Ocupa toda a largura */
      padding: 12px; /* Espaço interno */
      margin-bottom: 15px; /* Espaço entre campos */
      border: none; /* Remove borda padrão */
      border-bottom: 2px solid #ccc; /* Borda inferior */
      outline: none; /* Remove contorno */
      font-size: 14px; /* Tamanho do texto */
    }

    input:focus {
      border-bottom-color: #6a5acd; /* Cor ao clicar */
    }

    /* ===== BOTÃO ===== */

    button {
      padding: 12px; /* Espaço interno */
      border: none; /* Sem borda */
      border-radius: 5px; /* Bordas arredondadas */
      background: #6a5acd; /* Fundo roxo */
      color: #fff; /* Texto branco */
      font-size: 16px; /* Tamanho do texto */
      cursor: pointer; /* Mãozinha ao passar mouse */
    }

    button:hover {
      background: #5a4acd; /* Cor ao passar mouse */
    }

    /* ===== MENSAGEM DE ERRO ===== */

    .error {
      color: #b00000; /* Texto vermelho */
      background: #ffd6d6; /* Fundo rosa */
      padding: 10px; /* Espaço interno */
      border-radius: 5px; /* Bordas arredondadas */
      font-size: 14px; /* Tamanho do texto */
      display: none; /* Começa escondida */
      margin-bottom: 15px; /* Espaço abaixo */
    }

    /* ===== RESPONSIVO ===== */

    @media (max-width: 768px) {
      .container {
        flex-direction: column; /* Colunas viram linhas */
        width: 90%; /* Ajusta largura */
        height: auto; /* Altura automática */
      }

      .left, .right {
        width: 100%; /* Ocupa toda largura */
      }
    }
  </style>
</head>

<body>
  <!-- Início do conteúdo visível -->

  <div class="container">
    <!-- Caixa principal -->

    <div class="left">
      <!-- Lado esquerdo -->
      <img src="imagem.png" alt="imagem.png">
    </div>

    <div class="right">
      <!-- Lado direito -->

      <h2>Olá!</h2>
      <p>Faça login para continuar</p>

      <div class="error" id="errorMsg"> <!-- isso faz aprecer a mensagem de erro-->
        Usuário ou senha incorretos <!-- isso vai ser mostardo-->
      </div>

      <form id="loginForm">
        <!-- Formulário -->

        <input type="text" name="username" placeholder="Usuário" required>
        <!-- Campo de usuário -->

        <input type="password" name="password" placeholder="Senha" required>
        <!-- Campo de senha -->

        <button type="submit">Login</button>
        <!-- Botão -->
      </form>
    </div>
  </div>

  <script>
    // Pega o formulário pelo ID
    const loginForm = document.getElementById("loginForm");

    // Pega a div da mensagem de erro
    const errorMsg = document.getElementById("errorMsg");

    // Escuta quando o formulário for enviado
    loginForm.addEventListener("submit", function(e) {

      // Impede o recarregamento da página
      e.preventDefault();

      // Captura o valor digitado no campo usuário
      const username = loginForm.username.value;

      // Captura o valor digitado no campo senha
      const password = loginForm.password.value;

      // Verifica se usuário e senha estão corretos
      if (username === "user" && password === "web_dev") {
        alert("Login realizado com sucesso!");
        errorMsg.style.display = "none"; // Esconde erro
      } else {
        errorMsg.style.display = "block"; // Mostra erro
      }
    });
  </script>

</body>
</html>
