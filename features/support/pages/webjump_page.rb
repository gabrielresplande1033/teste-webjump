class Webjump
  include Capybara::DSL

  def home_page
    visit '/'

  end

  def clicar_button_primeiro_painel(button)
    find(:css, "##{button}").click
  end

  def clicar_button_segundo_painel(button)
    page.execute_script('window.scrollTo(0,100000)')
    @iframe = find_all('iframe')
    within_frame(@iframe[0]) do
      find(:css, "##{button}").click   
    end
  end

  def validar_existencia_do_elemento_primeiro_painel(button)
    sleep 1
    existe = find("##{button}", :visible => false).visible?
    return existe
  end

  def validar_existencia_do_elemento_segundo_painel(button)
    existe = true
    sleep 1
    within_frame(@iframe[0]) do
      existe = find("##{button}", :visible => false).visible?
    end
    return existe
  end
  
  def preencher_campo_painel_normal(field, value)
    find(:css, "##{field}").set value
  end

  def marcar_checkbox_painel_buttons(checkbox_id)
    check 'opt_three'
  end

  def validar_existencia_imagem(imagem_alt)
    return find(:xpath, "//div/img[@alt='#{imagem_alt}']/..").visible?
  end

end