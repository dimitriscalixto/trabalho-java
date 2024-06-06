<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="br.ufac.sgcm.model.Unidade"%>

<jsp:useBean id="controller" class="br.ufac.sgcm.controller.UnidadeController" scope="page"/> <!--Adicionei scope-->


<% 
    List<Unidade> registros = controller.processListRequest(request);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, user-scalable=no">
        <title>SGCM - Unidades</title>
        <link rel="stylesheet" href="./css/estilo.css">
        <link rel="stylesheet" href="./css/estilo-tema-azul.css" id="link-tema">
        <script src="./js/script.js" defer></script>
        <script src="./js/unidades.js" defer></script>
    </head>
    <body>
        <header>
            <div id="logo">
                <img src="imagens/logo_branco.png" alt="Logo SGCM">
                <span id="titulo">SGCM</span>
            </div>
            <div id="usuarioInfo">
                <span>Usuário: Administrador (admin)</span>
                <span>Papel: ADMIN</span>
                <select id="tema">
                    <option value="">Escolha um tema</option>
                    <option value="azul">Azul</option>
                    <option value="vermelho">Vermelho</option>
                    <option value="amarelo">Amarelo</option>
                </select>
            </div>
        </header>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="pacientes.jsp">Pacientes</a></li>
                <li><a href="atendimento.jsp">Atendimento</a></li>
                <li><a href="convenios.jsp">Convênios</a></li>
                <li><a href="profissionais.jsp">Profissionais</a></li>
                <li><a href="unidades.jsp">Unidades</a></li>
                <li><a href="especialidades.jsp">Especialidades</a></li>
                <li><a href="usuarios.jsp">Usuários</a></li>
            </ul>
        </nav>
        <main>
            <div id="comandos">
                <a href="unidadesForm.jsp"
                   class="botao"
                   id="add">
                    Adicionar
                </a>
                <div>
                    <label for="busca">Busca</label>
                    <input type="search" name="busca" id="busca"
                           placeholder="Digite para buscar">
                </div>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Endereco</th>
                        <th>Nome</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Unidade item : registros){ %>
                    <tr>
                        <td class="fit"><%= item.getId() %></td>
                        <td><%= item.getEndereco() %></td>
                        <td><%= item.getNome() %></td>
                        <td>
                            <a class="botao" href="unidadesForm.jsp?id=<%= item.getId() %>">Editar</a>
                            <a class="botao excluir" href="unidades.jsp?excluir=<%= item.getId() %>">Excluir</a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3">Total de registros: <%= registros.size()%></td>
                    </tr>
                </tfoot>
            </table>
        </main>
        <footer>
            <span>SGCM - Sistema de Gerenciamento de Clínica Médica</span>
            <span>Telefone de contato: (68) 3333-3333 | <a href="mailto:suporte.sgcm@ufac.br">suporte.sgcm@ufac.br</a></span>
        </footer>
    </body>
</html>