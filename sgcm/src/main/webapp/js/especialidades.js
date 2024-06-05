// Insere dados de uma especialidade na tabela
const inserirUnidade = (item) => {

    // Cria os elementos HTML
    let linha = document.createElement('tr');
    let id = document.createElement('td');
    let endereco = document.createElement('td');
    let nome = document.createElement('td');
    let acoes = document.createElement('td');

    // Adiciona os dados da especialidade nos elementos criados
    id.classList.add('fit');
    id.textContent = item.id;
    nome.textContent = item.nome;
    endereco.textContent = item.endereco;
    acoes.innerHTML = `
        <a href="unidadeForm.jsp?id=${item.id}"
            class="botao">Editar</a>
        <a href="unidade.jsp?excluir=${item.id}"
            class="botao excluir">Excluir</a>
        `;
    
    // Adiciona os elementos criados na linha da tabela
    linha.appendChild(id);
    linha.appendChild(endereco);
    linha.appendChild(nome);
    linha.appendChild(acoes);

    // Adiciona a linha na tabela
    let tabela = document.querySelector('table');
    tabela.tBodies[0].appendChild(linha);

}

let campoBusca = document.querySelector('input[name="busca"]');
campoBusca.addEventListener('input', (evento) => {
    let termoBusca = evento.target.value;
    if (termoBusca.length >= 3 || termoBusca.length == 0) {
        let url = './unidade?busca=' + termoBusca;
        fetch(url)
            .then(resposta => resposta.json())
            .then(dados => {
                limparTabela();
                for (const item of dados) {
                    inserirUnidade(item);
                }
                adicionarEventoExcluir();
                atualizarTotal();
            });
    }
});

