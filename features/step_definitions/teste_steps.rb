Dado('que estou na página inicial do webjump-automation') do
    @webjump.home_page
end

Quando('clicar no botão {string} do primeiro painel') do |button|
    @webjump.clicar_button_primeiro_painel(button)
end

Quando('clicar no botão {string} do segundo painel') do |button_id|
    @webjump.clicar_button_segundo_painel(button_id)
end

Quando('preencho o campo {string} do painel fields com valor {string}') do |field, value|
    @webjump.preencher_campo_painel_normal(field, value)
end

Quando('marco a opção {string} do painel buttons') do |checkbox_id|
    @webjump.marcar_checkbox_painel_buttons(checkbox_id)
end

Quando('seleciono a opção {string} do selectbox') do |value|
    within '#select_box' do
        find("option[value='#{value}']").click
    end
end

Então('valido que a imagem do {string} é visivel') do |imagem_alt|   
    @existe = @webjump.validar_existencia_imagem(imagem_alt)
    expect(@existe).to eql(true)
end  

Então('valido que os botões clicados do primeiro painel não estão mais presentes em tela') do
    @existe = @webjump.validar_existencia_do_elemento_primeiro_painel('btn_one')
    expect(@existe).to eql(false)
    @existe = @webjump.validar_existencia_do_elemento_primeiro_painel('btn_two')
    expect(@existe).to eql(false)
    @existe = @webjump.validar_existencia_do_elemento_primeiro_painel('btn_link')
    expect(@existe).to eql(false)
end

Então('valido que os botões clicados do segundo painel não estão mais presentes em tela') do
    @existe = @webjump.validar_existencia_do_elemento_segundo_painel('btn_one')
    expect(@existe).to eql(false)
    @existe = @webjump.validar_existencia_do_elemento_segundo_painel('btn_two')
    expect(@existe).to eql(false)
    @existe = @webjump.validar_existencia_do_elemento_segundo_painel('btn_link')
    expect(@existe).to eql(false)
end