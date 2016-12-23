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
ma : vetor[1..10,1..10] de caracter
in : vetor[1..10,1..10] de caracter
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
   
   
      timer (200) on

escreval("  88888887     8888    888888888    8884     88      88    788     8888                      ")
escreval("  087   88     80584      485      88788     88      88    788    587887                   ")
escreval("  484  587    88  88      485      88 788    88      887777588    88  88                 ")
escreval("  48888885   784  788     485     88   887   88      888888888   88   887              ")
escreval("  487   588  888888887    084    788888888   88      88    788  788888888            ")
escreval("  888777882 884    788    888    88     880  887777  88    788  887    888                                 ")
escreval("  7888882   88      887   182   285      88  888888  88    789 784      88                               ")
escreval("                                                                                                       ")
escreval("                                                                                                     ")
escreval("                                                                                                   ")
escreval("           2884    88     5884    887     887    888     280                                     ")
escreval("           88880   88     88887   788    788    88880    488                                   ")
escreval("           487885  88    88  88    882   88    787 88    288                                 ")
escreval("           48  887 88   782  087    88  788    88   88   288                               ")
escreval("           487  88788   88844888    882 88    488509887  280                              ")
escreval("           087   8888  9887277888    88485    887777288  588                           ")
escreval("           087    888  88      887   2888    887     888 2888888                     ")

escreval()
escreval()
escreval()

escreval("                  iL27;                                                                                                         ")
escreval("                 FEu,Sv@                                                                                                      ")
escreval("          ii:    Zr:.FukN:                                                                                                  ")
escreval("        i@F21@7  .X@Li.  02                                                                                               ")
escreval("        SB,,qUrq7  rP     LO                                                                                            ")
escreval("         1@B:   vX:  5F    ,Oi                                                                                        ")
escreval("           7L:    Yk. .ZY    q1    .:,.                                                                             ")
escreval("             rXu    jX  i8i   7O  FL::iLUui.                                                                      ")
escreval("               :55:   Fu  uP.  .Ev5       iJki                                                                  ")
escreval("                  r2i   Sv  ku   EBiiri,     M;                                                               ")
escreval("         0@:vvv7r:..vkv  .Fi .0:  :0. ,rUU7  F                                                              ")
escreval("         EG,     ,:iirq@B, rJ.uOq   Ni    :LX@                                                            ")
escreval("         q M            ,i7;LM@v :7  7Bv:    ,F2:                                                       ")
escreval("         Z  B                 :N7;71i Bii12r    YP   :.                                               ")
escreval("         0  iZ                   .LU.      :25r  P  @ivF7                                           ")
escreval("         E   SL                    7Bi:.      iJBU k,   B,                                        ")
escreval("         M    B:                    ;F2JLr:     .r8O    @jv                                     ")
escreval("         8:    @                      :vLYvLr.     O:  S: u2                                  ")
escreval("          @:   ,B                        iYvvvYi  ,E   M  G,                                ")
escreval("           Zu   vX                         .7LvL7qPPi j: :G                               ")
escreval("           7G:  Nr                           :vLr  ik@  B                               ")
escreval("              q2  B.                             7Sr  .uBr                            ")
escreval("               rO  B                               iXJ  :17                         ")
escreval("                 O .0                                :U1  :P:                     ")
escreval("                  q rr                                 .U5. @                   ")
escreval("                 8BG,@,  ,2X8  ...                        LZB                 ")
escreval("                MjU  7@ LN. 0Nj;:MF.ir                      75,             ")
escreval("               rUB     @J        @77i@1vLL7LLui              LN           ")
escreval("               .                             .7YuL7ri,.      B          ")
escreval("                                                 .,:iL2u7: Uu         ")
escreval("                                                         ,ivF         ")


timer (0) off



   Escreva("Informe o numero de navios: ")
   leia(n_navios)
   escreval("Insira", n_navios, " navios !")
    i<- 1
   enquanto i<=n_navios faca
      escreva("Informe a linha do ",i,"º navio: ")
      leia(lin)
      escreva("Informe a coluna do ",i,"º navio: ")
      leia(col)
      
      se (lin>=11) ou (lin<=0) ou (col>=11) ou (col<=0) entao
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
   enquanto i<=n_navios faca   // inserir 6 navios na matriz do inimigo         /

      gerarposi(11,11)     // gerar a posicao dos navios confome o numero de linhas e colunas  adiciona 1 a mais devido nao ser <=
      
      se (in[ran_i,ran_j] <> "O") entao    //verificar se matriz ja tem navio para nao prencher de novo
         in[ran_i,ran_j] <- "O"            // insere os navios
         senao
            i <- i-1
      fimse
      i <- i+1
   fimenquanto

   enquanto (acerto_jog <=(n_navios-1)) e (acerto_comp <=(n_navios-1)) faca               // repetir até alguem acertr os 6 navios
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
                     cont <- cont-1                                      // congela o contador para atirar de novo se diferente de 5 tiros
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
            
            enquanto (ma[ran_i,ran_j] = "X") ou (ma[ran_i,ran_j] = "Ø") faca     // gerar posicao para atirar nao repetida
            gerarposi(11,11)
            fimenquanto

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
