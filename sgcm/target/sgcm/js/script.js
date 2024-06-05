// Altera o tema o arquivo CSS de acordo com o tema selecionado
const mudarTema = (temaSelecionado) => {
    let url = "./css/estilo-tema-" + temaSelecionado + ".css";
    let linkTema = document.querySelector("#link-tema");
    linkTema.href = url;
}

// Altera o tema quando mudar a opção selecionada
let selectTema = document.querySelector("select#tema");
selectTema.addEventListener("change", evento => {
    let temaSelecionado = evento.target.value;
    if (temaSelecionado) {
        mudarTema(temaSelecionado);
        // Salva a opção de tema escolhida pelo usuário no localStorage
        localStorage.setItem("tema", temaSelecionado);
    }
});

// Recupera a opção de tema escolhida pelo usuário e
// altera o tema se houver uma opção salva no localStorage
let tema = localStorage.getItem("tema");
if (tema) {
    mudarTema(tema);
    // Seleciona a opção de tema escolhida pelo usuário
    selectTema.value = tema;
}

const adicionarEventoExcluir = () => {
    let botoesExcluir = document.querySelectorAll('a.botao.excluir');
    for (const botao of botoesExcluir) {
        botao.addEventListener('click', (evento) => {
            if (!confirm('Confirma exclusão?')) {
                evento.preventDefault();
            }
        });
    }
}

adicionarEventoExcluir();

const limparTabela = () => {
    let tabela = document.querySelector('table');
    let linhas = tabela.tBodies[0].querySelectorAll('tr');
    for (const linha of linhas) {
        linha.remove();
    }
}

const atualizarTotal = () => {
    let tabela = document.querySelector('table');
    let total = document.querySelector('table #total');
    total.textContent = tabela.tBodies[0].querySelectorAll('tr').length;
}

let botaoCancelar = document.querySelector("input[data-url]");
if (botaoCancelar) {
    botaoCancelar.addEventListener("click", () => {
        let url = botaoCancelar.getAttribute("data-url");
        window.location.href = url;
    });
}
