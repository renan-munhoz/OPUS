Algoritmo "Registro_Cliente_Profissional"
// Disciplina: Lógica de Programação e Algoritmos - Professor Kaneshima

tipo

   Profissional = registro

      nomeProf : caractere
      senhaProf: caractere
      mailProf: caractere
      telefoneprof: inteiro
      ocupacaoProf: caractere
   fimregistro

   Cliente = registro

      nomeCli: caractere
      telefoneCli: inteiro
      senhaCli: caractere
      mailCli: caractere

   fimregistro

Var

   vetCliente: vetor[0..1] de Cliente
   vetProfissional: vetor[0..1] de Profissional

   opcao, opcaoReg, telefonec, telefonep, indice: inteiro
   nomec, emailc, senhac, nomep, emailp, senhap, ocupacao, repitaSenha: caractere

procedimento p_registra_cliente

var


inicio

   escreval("Nome: ")
   leia(nomec)
   escreval("Telefone: ")
   leia(telefonec)
   escreval("E-mail: ")
   leia(emailc)
   repita
      escreval("Senha: ")
      leia(senhac)
      escreval("Repita senha: ")
      leia(repitaSenha)

      se (senhac <> repitaSenha)entao
         escreval("As senhas não conferem, digite novamente.")
      fimse
   ate (senhac = repitaSenha)

   vetCliente.nomeCli[indice] <- nomec
   vetCliente.telefoneCli[indice] <- telefonec
   vetCliente.mailCli[indice] <- emailc
   vetCliente.senhaCli[indice] <- senhac
   indice <- indice + 1

fimprocedimento

procedimento p_registra_profissional

var

inicio

   escreval("Nome: ")
   leia(nomep)
   escreval("E-mail: ")
   leia(emailp)
   escreval("Telefone: ")
   leia(telefonep)
   escreval("Ocupação: ")
   leia(ocupacao)
   repita
      escreval("Senha: ")
      leia(senhap)
      escreval("Repita senha: ")
      leia(repitaSenha)

      se (senhap <> repitaSenha)entao
         escreval("Senha incompatível, digite novamente.")
      fimse
   ate (senhap = repitaSenha)


   escreval("")

   vetProfissional.nomeProf[indice] <- nomep
   vetProfissional.telefoneProf[indice] <- telefonep
   vetProfissional.mailProf[indice] <- emailp
   vetProfissional.ocupacaoProf[indice] <- ocupacao
   vetProfissional.senhaProf[indice] <- senhap
   indice <- indice + 1


fimprocedimento


Inicio

   enquanto ( opcao <> 9 ) faca
      escreval("1- Registrar")
      escreval("2- Planos")
      escreval("9- Sair")
      leia(opcao)
      escolha(opcao)

      caso 1
            escreval("Você é?")
            escreval("")
            escreval("1 - Cliente")
            escreval("2 - Autônomo")
            escreval ("9 - Voltar ao menu")
            escreval("")
            leia(opcaoReg)
            escolha(opcaoReg)

            caso 1
               p_registra_cliente
            caso 2
               p_registra_profissional
            fimescolha

      caso 9
         escreval("Finalizado com sucesso!")

      fimescolha
   fimenquanto


Fimalgoritmo
