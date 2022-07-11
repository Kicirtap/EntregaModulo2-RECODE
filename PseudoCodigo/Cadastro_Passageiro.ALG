Algoritmo "Cadastro "
// Disciplina   : [Entrega individual modulo 2- recode]
// Descrição   : Cadastro e consulta de passageiros
// Autor(a)    : Patrick Andre da Silva

Var


nome : vetor[1..2] de caractere
dest : vetor[1..2] de caractere
usuarioPesquisar: caractere
i : inteiro,
opcao: caractere

inicio
nome[1]<- " Paulo cardoso da conceição"
dest[1]<- " Cairo - Egito"
nome[2]<- " Maria Efigenia "
dest[2]<- " Xangai  - China"


procedimento cadastro()
inicio
para i de 1 ate 2 faca
     escreva("Informe o nome: ")
     leia( nome[i])
     escreva("Informe o destino: ")
     leia( dest[i])
fimpara
escreval("")
escreval(" Cadastro realizado com sucesso!!!")
fimprocedimento

procedimento listar()
inicio
escreval(" Nome                    Destino" )
para i de 1 ate 2 faca
     escreval (nome[i]       , "      ", dest[i])
     escreval("")
     escreval("--------------------------")
     escreval("")
fimpara
escreva("pressione F9  para continuar ")
pausa
fimprocedimento

procedimento consultar()
var
achou : logico
inicio
escreva ("Informe o Nome do Passageiro : ")
leia(usuarioPesquisar)
para i de 1 até 2 faca
	se usuarioPesquisar = nome[i] entao
		escreval(" Passageiro localizado")
		escreval(" ")
		escreval(" ")
		escreval("Nome :    ", nome[i])
		escreval("Destino : ", dest[i])
		escreval(" ")
		escreva("pressione F9  para continuar ")
		pausa
		achou <- verdadeiro
	fimse
fimpara
se achou <> verdadeiro entao
escrevel("Não localizei Nome.")
escreval("precione F9 para continuar")
pausa
fimse
fimprocedimento

opcao <- "10"
enquanto opcao<>"0" faca
limpatela
escreval(" ---------------MENU--------------")
escreval(" ")
escreval("(1) Cadastro     (2)Listar  (3)Consultar  (4)Sair ")
escreval(" ")
escreval(" ")
escreva (" Selecione uma opção : ")
leia(opcao)
escreval(" ")
escolha opcao
caso " 0"
Fimalgoritmo
caso "1"
cadastro
caso "2"
listar
caso "3"
consultar
caso "4"
escreva("pressione ESC para sair")
fimalgoritmo
outrocaso
escreval("Opção Inválida")
escreva( "pressione F9 para continuar")
pausa
fimescolha
fimenquanto
Fimalgoritmo


