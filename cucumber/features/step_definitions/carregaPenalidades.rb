# encoding: utf-8

Dado(/^que eu esteja autenticado como administrador de dados ASIS$/) do
	@driver = Selenium::WebDriver.for :firefox
	@driver.manage.window.maximize
	@driver.manage.timeouts.implicit_wait = 5
	@driver.get('http://homol.asisprojetos.com.br:8082/spedweb5-gra/login.html') 

	#Login como administrador de Sistema
	@driver.find_element(:id, 'j_idt15:email').send_keys('rodolfo.passos@asisit.com.br')
	@driver.find_element(:id, 'j_idt15:password').send_keys('010203')
	@driver.find_element(:id, 'j_idt15:btnEntrar').click
end

Dado("clicado no botão em {string} para entrar com o login padrao") do |btn_login| 
  	@driver.find_element(:id, "j_idt15:j_idt31").click
end                                                                                

Quando("eu selecionar Modulo {string}") do |menu_1|
	@driver.action.move_to(@driver.find_element(:css, 'p.principal')).perform
	sleep(4)
	@driver.find_element(:link, "RESULTADOS GERENCIAIS").click
    @driver.find_element(:link, "Gestão de Riscos (GRA)").click
    @driver.find_element(:xpath, "//div[@id='form:filtroModulo']/div[3]/span").click
    @driver.find_element(:xpath, "//div[@id='form:filtroModulo_panel']/div/ul/li[2]").click
end