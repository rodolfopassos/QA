# language: pt

Funcionalidade: Carregar Penalidades
	Sendo o administrador de dados da ASIS 
	Quero fazer carga de dados no sistema referente às penalidades disponíveis 
	Para que seja consultado posteriormente na criação do plano de ação.
	
Cenario: Carregar as penalidades para o Modulo SPED FISCAL
	  Dado que eu esteja autenticado como administrador de dados ASIS
	  	 E clicado no botão em "Login" para entrar com o login padrao
		 E acessar o menu "Gestao de Riscos (GRA)"
	Quando eu selecionar Modulo "SPED FISCAL"
	 Entao verei a tabela de Auditorias preenchida com as penalidades disponiveis
	