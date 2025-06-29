## 🧪 Automação simples de Preenchimento de Formulário com Robot Framework

Este projeto demonstra como automatizar o preenchimento de um formulário de prática disponível em [Techlistic Selenium Practice Form](https://www.techlistic.com/p/selenium-practice-form.html), utilizando o **Robot Framework** em conjunto com a **SeleniumLibrary**. O código está organizado para garantir legibilidade, reutilização de componentes e facilidade de manutenção.

### 📂 Estrutura do Código

O script está dividido em três seções principais do Robot Framework:

#### 1. \*\*\* Settings \*\*\*

Nesta seção, é feita a importação da biblioteca:

* `SeleniumLibrary`: Usada para interagir com elementos da interface web.

#### 2. \*\*\* Variables \*\*\*

Aqui são declaradas variáveis utilizadas para armazenar:

* A URL do formulário.
* O navegador que será utilizado (neste caso, `Edge`).
* Seletores XPath e identificadores de elementos do formulário como campos de nome, sobrenome, gênero, experiência, data, profissão, ferramentas, continente, comandos Selenium e botão de envio.

Essas variáveis tornam o código mais limpo, reutilizável e fácil de ajustar em futuras modificações.

#### 3. \*\*\* Keywords \*\*\*

Os `Keywords` personalizados encapsulam passos específicos da automação. O primeiro `keyword` detectado é:

* `abrir navegador e acessar o site`: responsável por abrir o navegador e navegar até a página do formulário.

> O uso de nomes em português favorece a compreensão para falantes do idioma, especialmente para fins didáticos ou projetos internos.

### 🚀 Objetivo

O objetivo principal é automatizar o preenchimento de um formulário web com diversos tipos de campos como:

* Inputs de texto
* Radio buttons
* Checkboxes
* Campos de data
* Menus suspensos

Isso serve como um exercício prático de automação de testes usando Selenium com uma estrutura robusta e escalável.

### ✅ Pré-requisitos

Para executar este script, é necessário:

* Python 3.x instalado
* Robot Framework
* SeleniumLibrary
* WebDriver do navegador especificado (`msedgedriver` para Edge)

### ▶️ Como executar

1. Clone este repositório.
2. Navegue até a pasta do projeto no terminal.
3. Execute o comando:

   ```bash
   robot form.robot
   ```

O navegador será aberto automaticamente, o formulário será preenchido com os dados especificados e o teste será finalizado.

Com base na análise completa do arquivo `form.robot`, aqui está a continuação e complementação da seção de descrição do seu README do GitHub:

---

### 🔧 Keywords Personalizados

Os `Keywords` definidos neste script representam ações encapsuladas para organizar e reutilizar os passos da automação. A seguir, os principais `Keywords` utilizados:

#### 📌 `abrir navegador e acessar o site`

* Abre o navegador especificado (neste caso, o Microsoft Edge).
* Acessa a URL do formulário.
* Maximiza a janela para melhor visualização.
* Aguarda 1 segundo para garantir que os elementos da página estejam carregados.

#### 🧾 `preencher campos`

Responsável por preencher o formulário com os seguintes dados:

* **Primeiro Nome**: "Gisele"
* **Sobrenome**: "Sodré"
* **Gênero**: "Female"
* **Experiência**: 3 anos
* **Data**: "04/07/1987"
* **Profissão**: Marca a opção "Automation Tester"
* **Ferramenta de Automação**: Seleciona "Selenium Webdriver"
* **Continente**: Seleciona "Antartica" (é, selecionei essa opção intencionalmente, rs)
* **Comando Selenium**: Seleciona "Browser Commands"

Todos os campos são preenchidos com pequenas pausas (`Sleep 1s`) entre as ações, garantindo que a execução ocorra de forma estável mesmo em páginas com carregamento dinâmico.

> ⚠️ Há trechos comentados no código com um *TODO*, indicando intenção futura de incluir envio de imagem ou navegação adicional:

```robot
# Click Element  ${input_image}  image.png
# Click Link     control-group
```

#### 📤 `enviar formulário`

* Clica no botão de envio do formulário (`submit`).
* Aguarda 3 segundos após o envio para garantir visualização do comportamento da página.

#### 🧹 `fechar navegador`

* Fecha a janela do navegador, encerrando a sessão de teste.

---

### 🧪 Test Case

O teste automatizado está descrito no seguinte `Test Case`:

#### `Cenário 1: preencher formulário`

Este caso de teste realiza a automação completa, utilizando os `keywords` descritos:

```robot
abrir navegador e acessar o site
preencher campos
enviar formulário
fechar navegador
```

Essa abordagem modular facilita a leitura, manutenção e escalabilidade do projeto. Novos testes podem ser criados combinando ou estendendo esses mesmos blocos.
