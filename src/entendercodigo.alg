algoritmo "semnome"

FUNCAO par(v1 : inteiro) : inteiro
var
   resultad :  inteiro
inicio
   se v1%2 = 0 entao
      resultad <- 0                       // Criar funcao para verificar se é par ou nao, par = 0, impar = 1
      retorne resultad
         senao
            resultad <- 1
            retorne resultad
   fimse
fimfuncao

procedimento mostrarmeucampo()
var
c3,c4 : inteiro
inicio
   Escreval()
   escreval("- - - - - - - - - - - - - - - - - - - - -")
   para c3 de 1 ate 10 faca
      para c4 de 1 ate 10 faca
         escreva("| ")            // Mostra sua matriz
         Escreva(ma[c3,c4]," ")
      fimpara
      escreval("|")
      escreval("- - - - - - - - - - - - - - - - - - - - -")
   fimpara
fimprocedimento

procedimento mostrartiros()
var
   c1,c2 : inteiro
inicio

   Escreval()
   escreval("- - - - - - - - - - - - - - - - - - - - -")
   para c1 de 1 ate 10 faca
      para c2 de 1 ate 10 faca
         escreva("| ")
         Escreva(tiros[c1,c2]," ")
      fimpara
   escreval("|")
   escreval("- - - - - - - - - - - - - - - - - - - - -")
   fimpara

fimprocedimento

PROCEDIMENTO Gerarposi(lin,col : inteiro)
var
inicio

      ran_i <- randi(lin)
      ran_j <- randi(col)

      enquanto ran_i = 0 faca          // verifica se a posicao deu 0 e ajusta
         ran_i <- randi(lin)
      fimenquanto

      enquanto ran_j = 0 faca
         ran_j <- randi(col)
      fimenquanto
      
fimprocedimento

var
ma : vetor[1..10,1..10] de caracter  // matriz sua
in : vetor[1..10,1..10] de caracter  // matriz do inimigo
n_navios,i,j,lin,col,acerto_jog,acerto_comp,ran_i,ran_j: inteiro
i_ataq,j_ataq,cont : inteiro
tiros : vetor[1..10,1..10] de caracter
inicio


   para i de 1 ate 10 faca
      para j de 1 ate 10 faca  // atribuindo todos valores como espaco
         ma[i,j] <- " "
      fimpara
   fimpara
   
   para i de 1 ate 10 faca
      para j de 1 ate 10 faca  // atribuindo todos valores como espaco
         tiros[i,j] <- " "
      fimpara
   fimpara

   Escreva("Informe o numero de navios: ")
   leia(n_navios)
   escreval("Insira", n_navios, " navios !")
    i<- 1
   enquanto i<=n_navios faca
      escreva("Informe a linha do ",i,"º navio: ")
      leia(lin)
      escreva("Informe a coluna do ",i,"º navio: ")
      leia(col)
      
      se (lin>=11) ou (lin<=0) ou (col>=11) ou (col<=0) entao     // para vericiar se o o usuario inseriu uma posicao errada
         i<- i-1
         escreval("Voce digitou uma posição invalida")
      senao
      
         se ma[lin,col] <> "O" entao    //verificar se matriz ja tem navio para nao prencher de novo
            ma[lin,col] <- "O"
            mostrarmeucampo
            senao
               Escreval("Ja existe um navio nessa posição")
               i <- i-1 // "desfaz o incremento i<- i+1"
         fimse
      fimse
      i <- i+1
   fimenquanto
   Escreval("Seu campo:")
   i<-1
   j<-1
   
   mostrarmeucampo
   
   para i de 1 ate 10 faca
      para j de 1 ate 10 faca   // criar a matriz do aversario
         in[i,j] <- " "
      fimpara
   fimpara
   
   i <-1
   enquanto i<=n_navios faca   // inserir n_navios navios na matriz do inimigo         /

      gerarposi(11,11)     // gerar a posicao dos navios confome o numero de linhas e colunas  adiciona 1 a mais devido nao ser <=
      
      se (in[ran_i,ran_j] <> "O") entao    //verificar se matriz ja tem navio para nao prencher de novo
         in[ran_i,ran_j] <- "O"            // insere os navios
         senao
            i <- i-1
      fimse
      i <- i+1
   fimenquanto

o_comp <=(n_navios-1)) faca        // repetir até alguem acertr os n_navios navios
      cont <- cont + 1
      se par(cont) = 1 entao                                       //verifica quem vai jogar

         escreval("Insira a posição em que deseja atirar")   // pede para o jogador inserir a posicao do tiro
         escreva("Linha: ")
         leia(i_ataq)
         escreva("Coluna: ")
         leia(j_ataq)
         limpatela
         
         se (i_ataq>=11) ou (i_ataq<=0) ou (j_ataq>=11) ou (j_ataq<=0) entao         // verifica se o jogador digitou uma posicao maior (10,10)
            cont <- cont -1
            escreval("Voce digitou uma posição invalida")
            senao
         
            se (in[i_ataq,j_ataq] = "Ø") entao
                escreval("Voce ja atirou nesse lugar")          // verifica se ja teve um navio afundado
                mostrartiros
                cont <- cont -1
            fimse
         
            se (in[i_ataq,j_ataq] <> "X") entao                  // verifica se ja foi disparado um tiro naquela posicao
               se (in[i_ataq,j_ataq] = "O") entao                // verifica se tem navio
                  escreval("Parabens ! Voce acertou seu tiro")
                  acerto_jog <- acerto_jog + 1                   // Acrescenta um acerto !
                  in[i_ataq,j_ataq] <- "Ø"
                  tiros[i_ataq,j_ataq] <- "Ø"
                  mostrartiros
                  se (acerto_jog <> n_navios) entao
                     cont <- cont-1                                      // congela o contador para atirar de novo
                     escreval("Atire novamente !")
                  fimse
                  senao
                     se (in[i_ataq,j_ataq] = " ") entao
                        escreval("Voce errou o tiro ")
                        in[i_ataq,j_ataq] <- "X"
                        tiros[i_ataq,j_ataq] <- "X"
                        mostrartiros
                     fimse
               fimse
            
            senao
              // se atirar em um lugar repetido ele precisa "parar" o contador
               limpatela
               escreval("Voce ja atirou nesse lugar")
               mostrartiros
               cont <- cont -1

         fimse
         fimse
         
         senao
         
            escreval("Vez do inimigo atirar")
            gerarposi(11,11)
            
            enquanto (ma[ran_i,ran_j] = "X") ou (ma[ran_i,ran_j] = "Ø") faca     // gerarr posicao aleatorio não repetida!!!!****
            gerarposi(11,11)
            fimenquanto                                                          //

            se (ma[ran_i,ran_j] = "O") entao                // verifica se tem navio
               escreval("O adversario afundou um naviou seu !  Local do tiro: (",ran_i,",",ran_j,")")
               acerto_comp <- acerto_comp + 1                   // Acrescenta um acerto !
               ma[ran_i,ran_j] <- "Ø"
               se (acerto_comp <> n_navios) entao
                  cont <- cont -1          // para o contador para atirar de novo
               fimse

               senao
                  se (ma[ran_i,ran_j] = " ") entao                   //verifica se nao tem navio
                     escreval("O adversario errou o tiro ! Local do tiro: (",ran_i,",",ran_j,")")
                     ma[ran_i,ran_j] <- "X"
                  fimse
            fimse

      fimse
   fimenquanto
      escreval()
      se (acerto_jog = n_navios) entao
         escreval("Parabens, voce venceu a batalha")
         escreval("O adversario destruiu ",acerto_comp," navios seus")
         escreval("Como ficou seu campo: ")
         mostrarmeucampo
         escreval()
         
         senao
            escreval("Voce perdeu a batalha !")
            escreval("O adversario destruiu todos seu navios !")
            escreval("Como ficou seu campo: ")
            mostrarmeucampo
      fimse
fimalgoritmo
