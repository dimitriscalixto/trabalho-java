# fundamentos-back-end-turma5
Repositório da disciplina Fundamentos de Programação Back-End Turma 5.

> **Leituras preparatórias para a disciplina:**
>
> 1. O que é Java? (Alura): <https://www.alura.com.br/apostila-java-orientacao-objetos/o-que-e-java>
> 2. Iniciando na linguagem Java
 (DevMedia): <https://www.devmedia.com.br/iniciando-na-linguagem-java/21136>
>
> _As leituras indicadas são um pouco antigas, mas continuam sendo excelentes textos de introdução à linguagem Java. Portanto, desconsidere trechos que envolvam termos como "hoje", "atualmente", etc._

## Atualizando seu repositório local

O código produzido em sala de aula, e compartilhado neste repositório, pode ser atualizado em seu repositório local com o comando:

```console
git pull
```

No entando, se você fez alterações no seu repositório local, o comando acima pode gerar conflitos. Para evitar lidar com isso, você pode forçar uma atualização com o repositório remoto por meio dos comandos:

```console
git fetch origin
git reset --hard origin/main
```

O primeiro comando recebe as atualizações mais recentes do repositório remoto, e o segundo descarta todas as alterações locais e atualiza com o histórico mais recente do repositório remoto (branch main).

## Sites de referência

- Jakarta Server Pages Specification: <https://jakarta.ee/specifications/pages/3.1/jakarta-server-pages-spec-3.1.html>
- Jakarta Servlet Specification: <https://jakarta.ee/specifications/servlet/6.0/jakarta-servlet-spec-6.0.html>
- Apostila Java e Orientação a Objetos (Caelum/Alura): <https://www.alura.com.br/apostila-java-orientacao-objetos>
- Apostila Java para Desenvolvimento Web (Caelum/Alura): <https://www.alura.com.br/apostila-java-web>
- Baeldung: <https://www.baeldung.com/>
- Java Tutorial (VS Code): <https://code.visualstudio.com/docs/java/java-tutorial>

## Ferramentas

- **Visual Studio Code**
  - <https://code.visualstudio.com/Download>
- **Extension Pack for Java (Extensão do VS Code)**
  - <https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack>
- **Java Server Pages - JSP (Extensão do VS Code)**
  - <https://marketplace.visualstudio.com/items?itemName=pthorsson.vscode-jsp>
- **XML (Extensão do VS Code)**
  - <https://marketplace.visualstudio.com/items?itemName=redhat.vscode-xml>
- **Git**
  - <https://git-scm.com/downloads>
- **JDK 17**
  - Verificar versão do JDK instalada:
    - ```javac -version```
  - <https://download.oracle.com/java/17/latest/jdk-17_windows-x64_bin.msi>
  - Criar a variável de ambiente JAVA_HOME configurada para o diretório de instalação do JDK. Exemplo: “C:\Program Files\Java\jdk-17”.
  - Adicionar “%JAVA_HOME%\bin” na variável de ambiente PATH.
  - Tutorial de configuração: <https://mkyong.com/java/how-to-set-java_home-on-windows-10/>
- **Maven**
  - Verificar versão do Maven instalada:
    - ```mvn -version```
  - <https://dlcdn.apache.org/maven/maven-3/3.8.8/binaries/apache-maven-3.8.8-bin.zip>
  - Adicionar o diretório de instalação do Maven na variável de ambiente PATH. Exemplo: “C: apache maven bin”.
  - Tutorial de instalação: <https://mkyong.com/maven/how-to-install-maven-in-windows/>
- **Apache Tomcat 10**
  - Verifique se o Tomcat está instalado e funcionando:
    - Localize o aplicativo **Monitor Tomcat**.
    - Acesse a URL **<http://localhost:8080>**, que deve exibir uma página indicando que o Tomcat está funcionando.
  - Link para download: <https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.13/bin/apache-tomcat-10.1.13.exe>
  - [Tutorial de instalação](https://github.com/webacademyufac/tutoriais/blob/main/tomcat/tomcat.md)
- **MySQL**
  - Verificar se o MySQL está funcionando:
    - ```mysql -u root -p```
    - Tentar acessar com senha em branco ou senha igual ao nome de usuário (root).
    - Tutorial para resetar a senha de root: <https://dev.mysql.com/doc/mysql-windows-excerpt/8.0/en/resetting-permissions-windows.html>
  - Link para download: <https://dev.mysql.com/downloads/file/?id=516927>
  - [Tutorial de instalação](https://github.com/webacademyufac/tutoriais/blob/main/mysql/mysql.md)
  - Para criação do banco e importação de dados, a partir do diretório _sql_, executar os comandos:
    - ```mysql -u root -p < sgcm.sql```
    - ```mysql -u root -p sgcm < dados.sql```

## SGCM - Sistema de Gerenciamento de Clínica Médica

A demonstração de uso das ferramentas e tecnologias abordadas na capacitação é baseada em um projeto de exemplo, o SGCM. A documentação básica deste projeto está disponível [em outro repositório](https://github.com/webacademyufac/sgcmdocs) e aborda os seguintes tópicos:

- [Principais funcionalidades](https://github.com/webacademyufac/sgcmdocs#principais-funcionalides)
- [Histórias de usuário](https://github.com/webacademyufac/sgcmdocs#histórias-de-usuário)
- [Diagrama de Classes](https://github.com/webacademyufac/sgcmdocs#diagrama-de-classes)
- [Diagrama Entidade Relacionamento](https://github.com/webacademyufac/sgcmdocs#diagrama-entidade-relacionamento)


## Atividades práticas

1. [INDIVIDUAL] Crie uma classe chamada "ArraysDinamicos" para demonstrar os recursos disponíveis para manipulação de arrays dinâmicos em Java, contemplando os itens relacionados abaixo. Ao final, compartilhe o arquivo fonte (.java) em uma pasta com seu nome no repositório de atividades práticas da disciplina. (Entrega: 24/05/2024)
  
    - Crie um array dinâmico de inteiros com o nome `numeros`, e valores 5, 2, 9, 7 e 1.
    - Imprima os elementos do array `numeros` utilizando um loop `for`ou `for-each`.
    - Utilize o método `sort()` da classe `java.util.Collections` para ordenar o array `numeros` em ordem crescente e imprima os elementos do array `numeros`.
    - Utilize o método `binarySearch()` da classe `java.util.Collections` para buscar o número 9 no array `numeros` e imprima na tela o resultado da busca.
    - Crie um novo array dinâmico de inteiros chamado `maiores`.
    - Utilize o método `subList()` para copiar os três maiores números do array `numeros` para o array `maiores`, e imprima os elementos do array `maiores`.
    - Utilize o método `equals()` para comparar os arrays `numeros` e `maiores` e imprima na tela o resultado da comparação.
    - Imprima na tela os elementos do array `numeros` em ordem decrescente.
      - _Não há apenas uma única forma de fazer isso. Pesquise sobre as soluções possíveis e escolha uma._


2. [INDIVIDUAL] Criar as classes `EspecialidadeController` e `UnidadeController`, de forma semelhante à classe `ProfissionalController`, e implementar o método `get()` em cada uma delas. (Entrega: 20/09/2023)

    **Solução:** <https://github.com/webacademyufac/fundamentos-back-end/commit/3c36522>

3. [GRUPO] Construir páginas JSP (e todas as demais classes e métodos Java necessários) para cadastro de convênios, unidades, especialidades, pacientes e usuários, de forma semelhante à página de cadastro de profissionais, e baseado na [documentação do SGCM](https://github.com/webacademyufac/sgcmdocs). (Entrega: ~25/09/2023~ 29/09/2023)

    - Na classe que representa o paciente, os atributos `grupo sanguíneo` e `sexo` devem ser de um tipo abstrato construído com a utilização de [Enums](https://docs.oracle.com/javase/tutorial/java/javaOO/enum.html).
    - Também deve ser usado [Enum](https://docs.oracle.com/javase/tutorial/java/javaOO/enum.html) para o atributo `papel` do usuário, que deverá ter ao menos duas opções: `ADMIN` e `ATENDENTE`.
    - Em relação ao cadastro de usuário, não é necessário implementar nenhum tipo de encriptação para senha. No entanto, no formulário deve ser utilizado o elemento HTML adequado ao tipo do campo.

    **Solução:** <https://github.com/webacademyufac/fundamentos-back-end/commit/55b877f>

4. [GRUPO] Implementar a funcionalidade de busca por meio requisições assíncronas. (Entrega: ~21/09/2023~ 29/09/2023)

    - A busca deve ser realizada quando o usuário digitar ao menos 3 caracteres no campo de busca.
    - Quando o usuário apagar o termo de busca, a tabela deve exibir todos os registros.
    - A cada mudança no campo de busca, uma nova requisição deve ser enviada ao servidor.
    - A requisição deve ser enviada para um `Servlet`, que deve retornar a reposta no formato `JSON`.

        - A biblioteca [Jackson](https://www.javaguides.net/2019/07/convert-list-to-json-array-using-jackson.html) pode ser utilizada para converter objetos Java em JSON.
        - Lembre-se que para enviar uma reposta por meio de um `Servlet`, é necessário utilizar um objeto `PrintWriter` a partir da classe `HttpServletResponse`.

    - O `Servlet` deve ser deve ser capaz de identificar o termo buscado por meio de campo específico enviado na requisição.

        - Exemplo: `http://localhost:8080/sgcm/profissional?busca=daniel`

    - A cada requisição a tabela de resultados deve ser atualizada com os dados retornados pelo servidor.

    **Solução:** <https://github.com/webacademyufac/fundamentos-back-end/commit/d02a238>

> **IMPORTANTE:**
>
> - _**Todos os membros dos grupos devem participar das atividades**_, registrando esta participação por meio da identificação dos commits com seus respectivos usuários no GitHub.
> - As atividades devem ser desenvolvidas utilizando o respectivo repositório do grupo no GitHub, e _**organizadas por disciplina**_.
> - Quando se tratar de atividades inividuais, _**cada aluno deve criar uma subpasta com seu nome**_.
> - _**Não utilizar nenhum framework ou biblioteca**_, pois o objetivo é explorar o recursos nativos das tecnologias abordadas na disciplina.