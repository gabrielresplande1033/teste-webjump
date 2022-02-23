#language: pt

@teste
Funcionalidade: Efetuar testes na pagina webjump-automation

    COMO usuario do wejump
    EU QUERO realizar operações no site
    Para realizar testes no sistema

    Contexto: Página inicial
        Dado que estou na página inicial do webjump-automation

    @primeiro_cenario
    Cenario: Primeiro cenário
        Quando clicar no botão 'btn_one' do primeiro painel
        E clicar no botão 'btn_two' do primeiro painel
        E clicar no botão 'btn_link' do primeiro painel
        Então valido que os botões clicados do primeiro painel não estão mais presentes em tela

    @segundo_cenario
    Cenario: Segundo cenário
        Quando clicar no botão 'btn_one' do segundo painel
        E clicar no botão 'btn_two' do segundo painel
        E clicar no botão 'btn_link' do segundo painel
        Então valido que os botões clicados do segundo painel não estão mais presentes em tela

    @terceiro_cenario
    Cenario: Terceiro cenário
        Quando preencho o campo "first_name" do painel fields com valor "Gabriel"
        E clicar no botão 'btn_one' do primeiro painel
        E marco a opção "opt_three" do painel buttons
        E seleciono a opção "option_two" do selectbox
        Então valido que a imagem do "selenium" é visivel