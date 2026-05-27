Algoritmo "trabalho_RPG95%"

Var
   elemento, escolha_torre, personagem, escolha_final : inteiro
   escolhaD, status  : caractere

   // Para verificar se terminou a torre
   todosV : inteiro
   reunir_elementos, Dificuldade : inteiro

   // Para verificar as torres se já fez ou não
   torreDragao,torreTrevas ,torreSagrado, torreFada : inteiro

    //duplas possiveis
    //1       2       3         4       5        6
    duplaFD, duplaFS, duplaFT, duplaDT, duplaDS, duplaTS : inteiro
    quatroElementos : inteiro
    elementosDuplas : inteiro
    //trios possiveis
    trioSDF, trioDTS, trioFTD, trioTFS : inteiro
   // pra verificar se eles estão no grupo
   trevasV, dragaoV, sagradoV , fadaV : inteiro
   // atributos fada
   hpF ,curaF, manaF,dadoF, ataqueF : real
   // atributos dragão
   hpD, manaD, ataqueD : real
   // atributos trevas
   hpT, manaT, ataqueT : real
   // atributos sagrado
   hpS, manaS, ataqueS : real
   
   // ataque dos elementos
   ataqueDB ,ataqueDF, ataqueDFD : inteiro
   ataqueSB, ataqueSF, ataqueSV : inteiro
   ataqueFB, ataqueFF, ataqueFV : inteiro
   ataqueTB, ataqueTF, ataqueTBV,  ataqueTRV : inteiro
   // vida dos elementos sendo boss
   vida_sagrado, vida_fada, vida_dragao, vida_trevas, vida_BossM : inteiro
   ataqueBossF, ataqueBossD, ataqueBossT, ataqueBossS, ataqueBossM : real
   // colocar uma opção de ver os status do elemento sem escolher ainda o elemento
   // fazer q se um elemento morreu ele não revive

// mostrar a torre dos elementos
procedimento torre

inicio
   limpatela()
escreval(" @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ")
escreval(" @@  @@@@    @@@@@                  @@@@@@@@@@@@@@    @@@@@@@@@@@@@                 @@@@@          @@ ")
escreval(" @@    @@@@   @@@@@@@@@@@                  @@@@@@@@@@@@@@@@@@                @@@@@@@@@@ @          @@ ")
escreval(" @@     @@@   @@@ @@@@@@@@@@@@@                  @@@@@@                @@@@@@@@@@@@  @@ @          @@ ")
escreval(" @@     @@@   @@@ @@    @@@@@@@@@@@@@@            @@@             @@@@@@@@@@@@       @@ @          @@ ")
escreval(" @@     @@@   @@@ @@           @@@@@@@@@@@@@      @@@       @@@@@@@@@@@              @@ @          @@ ")
escreval(" @@     @@@   @@@ @@                       @@@@@@@@@@@@@@@@@@                        @@ @          @@ ")
escreval(" @@    @@@@   @@@ @@                          @@@@@@@@@@@@                           @@ @          @@ ")
escreval(" @@   @@@     @@@ @@                            @@@@ @@@@                            @@ @          @@ ")
escreval(" @@  @@@      @@@ @@                            @@@@ @@@@                    @@@@    @@ @        @@@@ ")
escreval(" @@@@@        @@@ @@    @@@                     @@@@ @@@@                    @@@@    @@ @    @@@@@@@@ ")
escreval(" @@     @@@@@@@@@ @@    @@@@@                   @@@@ @@@@              @@@@@@@@@@    @@ @  @@@@@@  @@ ")
escreval(" @@     @@@@@@@@@ @@    @@@@@@@@@@              @@@@ @@@@          @@@@@@@@    @@    @@ @@@@@@     @@ ")
escreval(" @@ @@@@@     @@@ @@    @@   @@@@@@@@@          @@@@ @@@@        @@@@@         @@    @@ @@@        @@ ")
escreval(" @@ @@@@      @@@ @@    @@         @@@@@@@      @@@@ @@@@   @@@@@@@            @@    @@ @@@@       @@ ")
escreval(" @@@@@        @@@ @@    @@             @@@      @@@@ @@@@   @@@                @@    @@ @@@@@@     @@ ")
escreval(" @@ @@@@@@    @@@ @@    @@             @@@      @@@@ @@@@   @@@                @@    @@ @  @@@@@@@@@@ ")
escreval(" @@      @@@@@@@@ @@    @@             @@@      @@@@ @@@@   @@@                @@    @@ @    @@@@@@@@ ")
escreval(" @@           @@@ @@    @@             @@@      @@@@ @@@@   @@@                @@    @@ @          @@ ")
escreval(" @@           @@@ @@    @@             @@@      @@@@ @@@@   @@@                @@    @@ @          @@ ")
escreval(" @@           @@@ @@    @@             @@@      @@@@ @@@@   @@@                @@    @@ @          @@ ")
escreval(" @@           @@@ @@    @@             @@@      @@@@ @@@@   @@@                @@    @@ @          @@ ")
escreval(" @@           @@@ @@    @@             @@@      @@@@ @@@@   @@@                @@    @@ @          @@ ")
escreval(" @@           @@@ @@    @@@@@@@        @@@      @@@@ @@@@   @@@        @@@@@@@@@@    @@ @          @@ ")
escreval(" @@           @@@ @@       @@@@@@      @@@      @@@@ @@@@   @@@      @@@@@@          @@ @          @@ ")
escreval(" @@           @@@ @@          @@@@@@@@@@@@      @@@@ @@@@   @@@  @@@@@@              @@ @          @@ ")
escreval(" @@           @@@ @@                @@@@@@      @@@@ @@@@   @@@@@@                   @@ @          @@ ")
escreval(" @@          @@@@ @@                   @@@      @@@@ @@@@   @@@                      @@ @@@        @@ ")
escreval(" @@          @@@@@@@                            @@@@ @@@@                          @@@@@@@@        @@ ")
escreval(" @@          @@@@@@@@@@@@@@                     @@@@ @@@@                    @@@@@@@@@@@@@@        @@ ")
escreval(" @@          @@@         @@@@@@@@               @@@@ @@@@              @@@@@@@          @@@        @@ ")
escreval(" @@          @@@                @@@@@@@@@@@     @@@@ @@@@   @@@@@@@@@@@@                @@@        @@ ")
escreval(" @@          @@@@@@@                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                @@@@@@@@        @@ ")
escreval(" @@           @@@@@@@@@@@@@                @@@@@@@@@@@@@@@@@@                @@@@@@@@@@ @          @@ ")
escreval(" @@           @@@ @@@@@@@@@@@@@                  @@@@@@                 @@@@@@@@@@   @@ @          @@ ")
escreval(" @@           @   @@      @@@@@@@@@@@@            @@@             @@@@@@@@@@@@       @@ @          @@ ")
escreval(" @@           @   @@                @@@@@@        @@@        @@@@@@                  @@ @          @@ ")
escreval(" @@           @   @@    @@@@@            @@@@@@@@@@@@@@@@@@@@@@             @@@@@    @@ @          @@ ")
escreval(" @@           @   @@    @@@@@@@@@             @@@@@@@@@@@@           @@@@@@@@@@@@    @@ @          @@ ")
escreval(" @@           @   @@    @@@@@@@@@@@@@@@          @@@@@@@           @@@@@@@@@@  @@    @@ @          @@ ")
escreval(" @@           @   @@    @@    @@@@@@@@@@@@@@@   @@@@ @@@@   @@@@@@@@@@         @@    @@ @          @@ ")
escreval(" @@           @   @@    @@              @@@@@   @@@@ @@@@   @@@@               @@    @@ @          @@ ")
escreval(" @@           @   @@    @@                 @@   @@@@ @@@@   @@@                @@    @@ @          @@ ")
escreval(" @@           @   @@    @@                 @@   @@@@ @@@@   @@@                @@    @@ @          @@ ")
escreval(" @@           @   @@    @@                 @@   @@@@ @@@@   @@@                @@    @@ @          @@ ")
escreval(" @@           @   @@    @@                 @@   @@@@ @@@@   @@@                @@    @@ @          @@ ")
escreval(" @@           @   @@    @@                 @@   @@@@ @@@@   @@@                @@    @@ @          @@ ")
escreval(" @@           @   @@    @@                 @@   @@@@ @@@@   @@@                @@    @@ @          @@ ")
escreval(" @@           @   @@    @@                 @@   @@@@ @@@@   @@@                @@    @@ @          @@ ")
escreval(" @@           @   @@    @@                 @@   @@@@ @@@@   @@@          @@@@@@@@    @@ @          @@ ")
escreval(" @@           @   @@    @@@@@@@            @@   @@@@ @@@@   @@@       @@@@@@@@       @@ @          @@ ")
escreval(" @@           @   @@      @@@@@@@@         @@   @@@@ @@@@   @@@   @@@@@@             @@ @          @@ ")
escreval(" @@           @   @@         @@@@@@@@@@@@@@@@   @@@@ @@@@   @@@@@@@@                 @@ @          @@ ")
escreval(" @@           @   @@                            @@@@ @@@@                            @@ @          @@ ")
escreval(" @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ")


timer 1000

limpatela

timer 0

escreval (" @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ")
escreval (" @@  @@@@@@@                       @@@@                  @@                 @@@@                   @@   ")
escreval (" @@  @@@  @@@@                    @@@@                   @@                  @@@@                  @@   ")
escreval (" @@ @   @  @@@                   @@@@                    @@                   @@@@                 @@   ")
escreval (" @@  @@@   @@@                  @@@@                     @@                    @@@@                @@   ")
escreval (" @@        @@@                 @@@@                      @@                     @@@@               @@   ")
escreval (" @@        @@@                @@@@                       @@                      @@@@              @@   ")
escreval (" @@@@     @@@@               @@@@                        @@                       @@@@             @@   ")
escreval (" @@  @  @@@@@               @@@@                         @@                        @@@@            @@   ")
escreval (" @@@@  @@@@                @@@@                          @@                         @@@@           @@   ")
escreval (" @@@@@@@@                 @@@@                           @@                          @@@@          @@   ")
escreval (" @@@@@ @@@@@@           @@@@@                            @@                           @@@@@        @@   ")
escreval (" @@    @@ @@@        @@@@@@                              @@                             @@@@@@@    @@   ")
escreval (" @@    @@ @@@@@@@@@@@@                                   @@                                   @@@@@@@   ")
escreval (" @@    @@      @@@@@@@@@@                                @@                                 @@@@@@@@@   ")
escreval (" @@     @@        @@@@@@@@@                            @@@@@@                             @@@@@@@@ @@   ")
escreval (" @@       @@@        @@@@@@@@@                        @@@@ @@@@                         @@@@@@@@@  @@   ")
escreval (" @@          @@@@@@@@@@@@@@@@@                      @@@@@   @@@@                     @@@@@@@@@@@@@@@@   ")
escreval (" @@                   @ @@ @ @@@@@@@             @@@@@@       @@@@@@@           @@@@@@@@@@@@       @@   ")
escreval (" @@                   @ @@ @@@@@@@@@@@@@@@@@@@@@@@@@            @@@@@@@@@@@@@@@@@ @@@@@@@@@@       @@   ")
escreval (" @@                   @ @@        @@@@@@@@@@@@@@@@                 @@@@@@@@@@@@@@@@      @ @       @@   ")
escreval (" @@                   @ @@                     @@@@@@@@@@@@@@@@@@@@@@@                   @ @       @@   ")
escreval (" @@                   @ @@    @@@@@@              @@@@@@@@@@@@@@@@@                  @@@@@ @       @@   ")
escreval (" @@                   @ @@    @@  @@@@@                 @@@@ @@@@                @@@@@  @@ @       @@   ")
escreval (" @@                   @ @@    @@      @@@@@@@           @@@@ @@@@           @@@@@@      @@ @       @@   ")
escreval (" @@            @@@@@  @ @@    @@            @@@@@@      @@@@ @@@@      @@@@@@           @@ @       @@   ")
escreval (" @@       @@@@@@@ @@@@@ @@    @@               @@@      @@@@ @@@@      @@@              @@ @     @@@@   ")
escreval (" @@    @@@@@@@@@   @@@@ @@    @@               @@@      @@@@ @@@@      @@@              @@ @  @@@@@@@   ")
escreval (" @@ @@@@@@@           @ @@    @@               @@@      @@@@ @@@@      @@@              @@ @  @@@@ @@   ")
escreval (" @@@@@@@              @ @@    @@               @@@      @@@@ @@@@      @@@              @@ @ @@@@  @@   ")
escreval (" @@                   @ @@    @@               @@@      @@@@ @@@@      @@@              @@ @@@     @@   ")
escreval (" @@@@@@@@@@@@@    @@@@@ @@    @@               @@@      @@@@ @@@@      @@@              @@ @ @@@@@@@@   ")
escreval (" @@  @@@@@@@@@@@@@@@@@@ @@    @@               @@@      @@@@ @@@@      @@@              @@ @     @@@@   ")
escreval (" @@          @@@@@@   @ @@    @@@@@@           @@@      @@@@ @@@@      @@@          @@@@@@ @       @@   ")
escreval (" @@                   @ @@       @@@@@@@@      @@@      @@@@ @@@@      @@@        @@@@@@@ @@       @@   ")
escreval (" @@                @@@@@@@          @@@@@@@@@  @@@      @@@@ @@@@      @@@  @@@@@@@       @@       @@   ")
escreval (" @@                @@@@@@@@@                @@@@@@      @@@@ @@@@      @@@@@@@        @@@@@@ @@    @@   ")
escreval (" @@                @@@  @@@@@@@@@@@@@                   @@@@ @@@@              @@@@@@@@@@@@  @@    @@   ")
escreval (" @@                @@@        @@@@@@@@@@@@              @@@@ @@@@         @@@@@@@@@@         @@    @@   ")
escreval (" @@                @@@              @@@@@@@@@@@@        @@@@ @@@@   @@@@@@@@@@@@             @@    @@   ")
escreval (" @@                @@@@@@@@              @@@@@@@@@@@@@@ @@@@ @@@@ @@@@@@@@@              @@@@@@    @@   ")
escreval (" @@                  @ @@@@@@@@@@               @@@@@@@@@@@@@@@@@@@@@              @@@@@@@@@ @     @@   ")
escreval (" @@                  @ @@       @@@@@@                   @@@                 @@@@@@@@     @@ @     @@   ")
escreval (" @@                  @ @@           @@@@@@@@             @@             @@@@@@            @@ @     @@   ")
escreval (" @@                  @ @@                  @@@@@@@@@@@@  @@   @@@@@@@@@@@@                @@ @     @@   ")
escreval (" @@                  @ @@                      @@@@@@@@@@@@@@@@@@@@                       @@ @     @@   ")
escreval (" @@                  @ @@    @@                     @@@@@@@@@@@@                      @@  @@ @     @@   ")
escreval (" @@                  @ @@    @@@@                      @@@@ @@@@                    @@@@  @@ @     @@   ")
escreval (" @@                  @ @@    @@@@@@@@@                 @@@@ @@@@               @@@@@@@@@  @@ @     @@   ")
escreval (" @@                  @ @@    @@     @@@@@              @@@@ @@@@         @@@@@@@@     @@  @@ @     @@   ")
escreval (" @@                  @ @@    @@        @@@@@@          @@@@ @@@@     @@@@@            @@  @@ @     @@   ")
escreval (" @@                  @ @@    @@             @@@@@      @@@@ @@@@     @@@              @@  @@ @     @@   ")
escreval (" @@                  @ @@    @@               @@@      @@@@ @@@@     @@@              @@  @@ @     @@   ")
escreval (" @@                  @ @@    @@               @@@      @@@@ @@@@     @@@              @@  @@ @     @@   ")
escreval (" @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ")


timer 1000

limpatela

timer 0


escreval(" @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  ")
escreval(" @@                                                                                                @@  ")
escreval(" @@                                                                      @  @                      @@  ")
escreval(" @@                                                                      @  @                      @@  ")
escreval(" @@                                                                      @@@@   @    @             @@  ")
escreval(" @@                                                                @     @@@@@@@    @@             @@  ")
escreval(" @@          @@@@@@@@@                                            @@@    @@  @@@    @@@@@@@@@@@@@@@@@  ")
escreval(" @@      @@@@@       @@@@@                                      @@@@@@       @@@@  @@@@@@@@@@@@@@@@@@  ")
escreval(" @@    @@@@        @@@  @@@@                                   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  @@  ")
escreval(" @@    @@         @@@@@  @@@                                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @@  ")
escreval(" @@  @@@@         @@@@@   @@@@                               @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        @@  ")
escreval(" @@  @@@  @@@       @      @@@                        @@     @@@ @@    @@  @@@@@@    @@            @@  ")
escreval(" @@  @@@@@@@@@             @@@                      @@@@@@    @@ @    @@  @@@@@@@@@   @@@@@@       @@  ")
escreval(" @@  @@@  @@@              @@@                    @@@@@@@@@    @       @ @@@@@@@@@@@ @@@@          @@  ")
escreval(" @@  @@@@            @@   @@@@                        @@@@              @@@@@@@@@@@@@@@@           @@  ")
escreval(" @@    @@          @@@@@@@@@                          @@@@@@@@@@    @@@@@@@    @@@@@@@@@           @@  ")
escreval(" @@    @@@@        @@@@@@@@@                          @@@@@@@@@@  @@@@@@         @@@               @@  ")
escreval(" @@      @@@@@       @@@@@                            @@@@@@@@    @ @         @@ @@ @@             @@  ")
escreval(" @@          @@@@@@@@@                                @@                                           @@  ")
escreval(" @@                                                   @@                                           @@  ")
escreval(" @@                                                 @@@@@@                                         @@  ")
escreval(" @@                                                @@@@@@@@                                        @@  ")
escreval(" @@                                              @@@  @@  @@@                                      @@  ")
escreval(" @@                                            @@@@   @@   @@@@                                    @@  ")
escreval(" @@                                           @@@@    @@    @@@@                                   @@  ")
escreval(" @@            @@@@@                        @@@@@     @@     @@@@@                                 @@  ")
escreval(" @@       @@@@@@@ @@@@@                  @@@@@@@      @@      @@@@@                              @@@@  ")
escreval(" @@    @@@@@@      @@@@@@               @@@@@@@       @@       @@@@@@                         @@@@@@@  ")
escreval(" @@ @@@@@@@           @@@        @@@@@@@@@@@@@       @@@@       @@@@@@@@@@@@                  @@@@ @@  ")
escreval(" @@@@@@@               @@@@       @@@@@   @@        @@  @@      @@    @@@@@                  @@@@  @@  ")
escreval(" @@                     @@@         @@@@@  @@      @@    @@    @@  @@@@@                   @@@     @@  ")
escreval(" @@@@@@@@@            @@@@@@@@@       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                       @@@@@@@@  ")
escreval(" @@  @@@@@@@@@@   @@@@@@@@@@@@@        @@@            @@ @@         @@                           @@@@  ")
escreval(" @@          @@@@@@                    @@@            @@ @@         @@                             @@  ")
escreval(" @@                                    @@@            @@ @@         @@                             @@  ")
escreval(" @@                                    @@@            @@ @@         @@                             @@  ")
escreval(" @@                                    @@@ @@@@@@     @@ @@  @@@@@@ @@                             @@  ")
escreval(" @@                                    @@@ @@@@@@@@@  @@ @@ @@@@@@@ @@                             @@  ")
escreval(" @@                                    @@@ @@     @@  @@ @@ @@   @@ @@                             @@  ")
escreval(" @@                                    @@@ @@     @@  @@ @@ @@   @@ @@                             @@  ")
escreval(" @@                                    @@@ @@     @@  @@ @@ @@   @@ @@                             @@  ")
escreval(" @@                                    @@@ @@@@@  @@  @@ @@ @@  @@@ @@                             @@  ")
escreval(" @@                                  @@@@@     @@@@@  @@ @@ @@@@@   @@@@                           @@  ")
escreval(" @@                                  @@@@@@@@@        @@ @@     @@@@@@@@                           @@  ")
escreval(" @@                                  @@@@@@@@@@@      @@ @@   @@@@@@@@@@                           @@  ")
escreval(" @@                                    @@@@@@@@@@@@@@ @@ @@@@@@@@@@@@@                             @@  ")
escreval(" @@                                    @@@ @@@@@@@@@@@@@@@@@@@@@@@@ @@                             @@  ")
escreval(" @@                                    @@@         @@@@@@@@@@       @@                             @@  ")
escreval(" @@                                    @@@           @@@@@@         @@                             @@  ")
escreval(" @@                                    @@@            @@ @@         @@                             @@  ")
escreval(" @@                                    @@@ @@@@       @@ @@    @@@@ @@                             @@  ")
escreval(" @@                                    @@@ @@@@@@@@@  @@ @@ @@@@@@@ @@                             @@  ")
escreval(" @@                                    @@@ @@     @@  @@ @@ @@   @@ @@                             @@  ")
escreval(" @@                                    @@@ @@     @@  @@ @@ @@   @@ @@                             @@  ")
escreval(" @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  ")
   escreval("|------------------------|")
   escreval("  INDO PARA AS TORRES...  ")


fimprocedimento

/// // mostrar status dos elementos

procedimento mostrar_Status_F
var
   x : caractere
inicio

   limpatela()
   enquanto x <> "1" faca

      escreval("|---------------------------|")
      escreval("|     HP      |     100     |")
      escreval("|---------------------------|")
      escreval("|   ATAQUE    |     15      |")
      escreval("|---------------------------|")
      escreval("|    MANA     |     100     |")
      escreval("|---------------------------|")
      escreval("|    CURA     | +30 DE CURA |")
      escreval("|---------------------------|")
      hpF <- 100
      curaF <- 30
      manaF <- 100
      //HP - 100
      //ATAQUE FORTE - 30
      //HABILIDADE - 30 de cura todos")
      //MANA - 100")
      //ATAQUE BASICO - 15

      escreval("PREPARADO PARA ENFRENTAR OS ANDARES?")
      escreval("         1 - SIM || 2 - NÃO         ")
      leia(x)
   fimenquanto
fimprocedimento


procedimento mostrar_Status_D
var
   x : caractere
inicio

   limpatela()
   enquanto x <> "1" faca

      escreval("|----------------------------|")
      escreval("|     HP      |      180     |")
      escreval("|----------------------------|")
      escreval("|   ATAQUE    |      25      |")
      escreval("|----------------------------|")
      escreval("|    MANA     |      60      |")
      escreval("|----------------------------|")
      escreval("|   ESCAMAS   |   -60 DANO   |")
      escreval("| ANCESTRAIS  |   RECEBIDO   |")
      escreval("|----------------------------|")
      //ataqueD <- 25
      hpD <- 180
      manaD <- 60
      //HP - 180")
      //MANA - 60")
      //MORDIDA - 25 - NÃO GASTA DE MANA")
      //BAFO DE FOGO - 40 -15 DE MANA ")
      //ESCAMAS ANCESTRAIS - REDUZ O DANO RECEBIDO EM 50% -25 DE MANA ")
      //FURIA DRAGONICA - 60 DE DANO -40 DE MANA")
      escreval("PREPARADO PARA ENFRENTAR OS ANDARES?")
      escreval("         1 - SIM || 2 - NÃO         ")
      leia(x)
   fimenquanto
fimprocedimento


procedimento mostrar_Status_T
var
   x : caractere
inicio

   limpatela()
   enquanto x <> "1" faca

      escreval("|---------------------------|")
      escreval("|     HP      |      120    |")
      escreval("|---------------------------|")
      escreval("|   ATAQUE    |      20     |")
      escreval("|---------------------------|")
      escreval("|    MANA     |      80     |")
      escreval("|---------------------------|")
      escreval("|   ROUBO     | -30% ATAQUE |")
      escreval("|  DE VIDA    |  INIMIGOS   |")
      escreval("|---------------------------|")
      hpT <- 120
      manaT <- 80
      //ATAQUE BÁSICO - 20")
      //SOMBRA CORRUPTA - 45 - 25 MANA")
      //ROUBO DE VIDA - 18 DANO - ROUBO DE HP 9 -20 DE MANA")
      //"MARCA SOMBRIA - REDUZ O ATAQUE EM 30% DOS INIMIGOS -30 DE MANA")
      escreval("PREPARADO PARA ENFRENTAR OS ANDARES?")
      escreval("         1 - SIM || 2 - NÃO         ")
      leia(x)
   fimenquanto
fimprocedimento

procedimento mostrar_Status_S
var
   x : caractere
inicio

   limpatela()
   enquanto x <> "1" faca

      escreval("|------------------------------|")
      escreval("|     HP      |      130       |")
      escreval("|------------------------------|")
      escreval("|   ATAQUE    |      20        |")
      escreval("|------------------------------|")
      escreval("|    MANA     |      110       |")
      escreval("|------------------------------|")
      escreval("|   BENÇÃO    |  +20% ATAQUE   |")
      escreval("|  CELESTIAL  |     EQUIPE     |")
      escreval("|------------------------------|")
      escreval("|   ESCUDO    | ALIADO PRÓXIMO |")
      escreval("|   SAGRADO   |    TURNO NÃO   |")
      escreval("|             |   RECEBE DANO  |")
      escreval("|------------------------------|")
      //ataqueS -> 20
      hpS <- 130
      manaS <- 110

      //LUZ PURIFICADORA - 20
      //JULGAMENTO DIVINO - 35 -25 DE MANA
      //BENÇÃO CELESTIAL - AUMENTA ATAQUE EM TODOS DA EQUIPE EM 20% - CURA 20 -30 MANA
      //ESCUDO SAGRADO - BLOQUEIA O PROXIMO DANo A SÓ UM ELEMeNTO ")
      //"35 de mana")
      escreval("PREPARADO PARA ENFRENTAR OS ANDARES?")
      escreval("         1 - SIM || 2 - NÃO         ")
      leia(x)
   fimenquanto
fimprocedimento

procedimento fada
inicio
 escreval ("                                                     __          .--.        ")
escreval ("                                           (''''--__(  ''-_     ,' .-.\       ")
escreval ("                                            (''-_ _'''--__''-_(  (^_^))       ")
escreval ("                                              ( '''--___''--__   ) -'(        ")
escreval ("                                               '-__       ''     ,(., )_      ")
escreval ("                                                   ''''----___(.'.  /--       ")
escreval ("                                                            (-_/  (           ")
escreval ("                                                             \   \ \          ")
escreval ("                                                              `.  \ |         ")
escreval ("                                                                \  \/         ")
escreval ("                                                                ||  \         ")
escreval ("                                                              ,-'/`. \        ")
escreval ("                                                              ) /   ) \       ")
escreval ("                                                              |/    `-.\      ")

   escreval("-------------------------------------------")
   escreval("VOCÊ TEM CERTEZA DE ESCOLHER O ELEMENTO FADA?")
   escreval ("1 - SIM || 2 - NÃO")
   escreval("-------------------------------------------")
   leia(escolhaD)
   limpatela
   se escolhaD = "1" entao
      escreval("VC ESCOLHEU O ELEMENTO FADA")
      escreval("-------------------------------------------")
      escreval("Agora você irá trilhar o caminho das torres para chegar ao desafio final, boa sorte...")
      escreval("-------------------------------------------")
      fadaV <- 2
      personagem <- fadaV
      reunir_elementos <- reunir_elementos + 2

      timer 2500
      limpatela()
      timer 0

      escreval("Você deseja ver o status da sua classe?")
      escreval ("1 - SIM || 2 - NÃO")
      leia(status)

      se status = "1" entao
         elemento <- 0
         mostrar_Status_F()
         torre()
      senao
         torre()

         elemento <- 0
      fimse

   senao
      elemento <- 1
      limpatela()
   fimse

fimprocedimento

procedimento cenario_fada
Var
   escolha_acao : inteiro
inicio
   limpatela
escreval ("                                                                                          ")
escreval ("                            vv              ^^^^ vvvvv^^^^^^^^vv ^^^              v       ")
escreval ("                     vvv^^^^vvvvv       vvvvvv       vvvvv^^^^vvv          vvv^^          ")
escreval ("                 vvvvvvvvv^^vvvvvv^^vvvvv    ^^^^vvvv ^^^vvvvv         vvvvvvvvv          ")
escreval ("        vvvvvvvvvvv^^^^^^^^^^^^^vvvvv^^^vvvvv vvvv^^^^   ^    vvvvvvvvvvv^^^^^^^          ")
escreval ("    vvvvvvv^^^^^^^^^vvv^^^^^^^vvvvvvvvvvv^^^vvv  ^v  vvv  vvvvvvv^^^^^^^^^vvv^^^          ")
escreval ("  vvvv^^^^^^vvvvv^^^^^^^vv^^^^^^^vvvv^^^vvvvvv^^^^ vvv/ vvvv^^^^^^vvvvv^^^^^^^vv          ")
escreval (" vv^^^^^^^^vvv^^^^^vv^^^^vvvvvvvvvvvv^^^^^^vv^   vvv / vv^^^^^^^^vvv^^^^^vv^^^^v          ")
escreval (" vvv^^^^^vvvv^^^^^^vvvvv^^vvvvvvvvv^^^^^^vvvvv^ vv  /  vvv^^^^^vvvv^^^^^^vvvvv^^          ")
escreval ("  vvvvvvvvvv^^^v^^^vvvvvv^^vvvvvvvvvv^^^vvvvvvvvv  /  / vvvvvvvvvv^^^v^^^vvvvvv^          ")
escreval ("   ^vv^^^vvvvvvv^^vvvvv^^^^^^^^vvvvvvvvv^^^^^^vvvvvv /   ^vv^^^vvvvvvv^^vvvvv^^^          ")
escreval ("     ^vvvvvvvvv^^^^vvvvvv^^^^^^vvvvvvvv^^^vvvvvvvvvv^v     ^vvvvvvvvv^^^^vvvvvv^          ")
escreval ("        ^^^^^^vvvv^^vvvvv^vvvv^^^v^^^^^^vvvvvv^^^^vvvv        ^^^^^^vvvv^^vvvvv^          ")
escreval (" vvvv^^vvv^^^vvvvvvvvvv^vvvvv^vvvvvv^^^vvvvvvv^^vvvvv^ vvvv^^vvv^^^vvvvvvvvvv^vv          ")
escreval ("vvv^vvvvv^^vvvvvvv^^vvvvvvv^^vvvvv^v  vvv^vvvv^^vvvvv^vvv^vvvvv^^vvvvvvv^^vvvvvv          ")
escreval (" ^vvvvvv^^vvvvvvvv^vv^vvv^^^^^^ ^^^   ^^^vvvvvvvv^^^^  ^vvvvvv^^vvvvvvvv^vv^vvv^          ")
escreval ("    ^^vvvvvvv^^vvvvvvvvvv^^^vvvv   ^^^^ vvv^^^      |     ^^vvvvvvv^^vvvvvvvvvv^          ")
escreval ("         ^^vvvvvv^^^^^^vvvvv   /vvvv    vvvv^v   |  |          ^^vvvvvv^^^^^^vvv          ")
escreval ("              ^^vvvvvvvvvvv   /     vvvvvvvvvvv     |               ^^vvvvvvvvvv         ")
escreval ("                    \_  ^\   /     /       |  |  |  |                     \_  ^\        ")
escreval ("                      \   \  |    /        |  |     |                       \          ")
escreval ("      (\__     __/)    \\ |  |   /         |  |  |  |                        \\       ")
escreval ("     :=)__)   (__(=:    \       /          |        |                         \      ")
escreval ("      (/   | /   \)      |     |           |     |  |               ^^^^^^     |     ")
escreval ("           |/            |     | ^^^^^^  ^^|     |  |^ ^^^^^^^^^^^^       ^^^^^|      ")
escreval ("           |    ^^^^^^^^ ||    |^^^   ^^^^ | |   |  |          ^               |     ")
escreval ("       ^^^^^^^^^^       / / \   \          / /  / \  \         ^^^            /     ")
escreval ("^^^^^^^  ^          ^^   ^^         ^                  ^^^       ^^^ ^^            ")
escreval ("^      ^^^       ^ ^^^^^^^         ^       ^             ^^^^      ^^^ ^^^         ")
escreval ("     ^^     ^   ^^^^^             ^       ^^                ^^^^    ^^^  ^^^      ")
escreval ("    ^^    ^^^^^^^               ^^^       ^                    ^     ^^     ^^^  ")
   escreval("-----------------------------------------------------------------------------------------------------")
   escreval("-----------------------------------------------------------------------------------------------------")
   escreval("Uma floresta viva dentro da torre. ")
      escreval("Luz filtra entre arvores ancestrais.")
      escreval("Flores brilham. ")
      escreval("Tudo parece vivo... e te observa")
      escreval("")
      escreval("Você sente que é observado, mas não vê ninguém.")
      escreval("")
      escreval("O QUE VOCÊ DECIDE FAZER?")
   escreval("1- CONVERSAR COM A FADA|| 2- ATACÁ-LA COVARDEMENTE || 3- TENTAR IR EMBORA E FINGIR QUE NUNCA VIU AQUILO")
   leia(escolha_acao)

   escolha escolha_acao
   caso 1
      historia_conversar_fada()
   caso 2
    se trioDTS <> 0 entao
         luta_fada_triplos()
       senao
         se elementosDuplas <> 0 entao
             luta_fada_duplas()
            senao
              luta_fada()
             fimse
            fimse
   caso 3
      ir_embora_fada()
   fimescolha

   escolha_torre <- 0

fimprocedimento

procedimento historia_conversar_fada
     Var
      dado : inteiro
      x : caractere
   Inicio
      limpatela()
      escreval("=== CONVERSA COM A FADA ===")
      escreval("Uma floresta viva dentro da torre.")
      escreval("Luz filtrada entre árvores ancestrais.")
      escreval("A Fada não aparece de imediato - ela observa...")
      escreval("")
      escreval("FADA: 'Você veio destruir o equilíbrio... ou protegê-lo?'")
      escreval("")
      escreval("Voce tenta demonstrar que quer proteger o equilíbrio...")
      escreval("Role o D20! Tire de 11+ para convencer. Menos: batalha!")
      escreval("Pressione ENTER para rolar...")
      leia(x)

      aleatorio 1,20
      leia(dado)
      aleatorio off
      escreval("Voce tirou: ", dado, " no D20!")

      se dado >= 11 entao
         escreval("")
         escreval("FADA: 'Eu sinto em voce... genuidade.'")
         escreval("FADA: 'Varei com voce. Mas cuide de todos os seres no caminho.'")
         escreval("")
         escreval("SUCESSO! A Fada se juntou a causa!")
         torreFada <- 1
         fadaV <- 2
         reunir_elementos <- reunir_elementos + 2
         verificar_fada()
      senao
         escreval("")
         escreval("FADA: 'Mentira! A floresta rejeita sua presenca!'")
         escreval("FALHOU! A floresta ataca! Prepare-se para lutar!")
         timer 1500
         timer 0
         se trioDTS <> 0 entao
            luta_fada_triplos()
           senao
         se elementosDuplas <> 0 entao
             luta_fada_duplas()
            senao
              luta_fada()
             fimse
            fimse
      fimse

      escreval("Pressione ENTER para continuar...")
      leia(x)

fimprocedimento

procedimento verificar_fada
        Inicio

       se elementosDuplas = 0 entao
        se personagem = sagradoV entao
             duplaFS <- 2
             elementosDuplas <- 1
        fimse

        se personagem = dragaoV entao
            duplaFD <- 1
            elementosDuplas <- 1
        fimse

        se personagem = trevasV entao
            duplaFT <- 3
            elementosDuplas <- 1
        fimse
       fimse

          se elementosDuplas <> 0 entao
              se duplaDT = 4 entao
                 trioFDT <- 1
              fimse

              se duplaDS = 5 entao
                 trioSDF <- 1
              fimse

              se duplaTS = 6 entao
                 trioTFS <- 1
              fimse
          fimse

       se trioDTS <> 0 entao
          quatroElementos <- 1
       fimse
fimprocedimento


procedimento luta_fada()
   Var
     x, y: inteiro
     n : caractere
   inicio

   enquanto vida_fada > 0 faca
   
         se personagem = dragaoV entao
              dragao_Bossfada()
         fimse
   
     // sagrado vs fada
        se personagem = sagradoV entao
              sagrado_Bossfada()
        fimse
   
       // TREVAS VS FADA
         se personagem = trevasV entao
                trevas_Bossfada()
         fimse
   fimenquanto
   
          // dupla de dragao e fada
            se personagem = dragaoV entao
             se hpD <= 0 entao
               escreval("VOCÊ PERDEU")
               reunir_elementos <- 8
               dragaoV <- 0
             senao
               escreval("VOCÊ VENCEU A FADA COM O DRAGÃO")
               escreval("FADA SE JUNTOU A CAUSA")
               torreFada <- 1
               fadaV <- 2
               elementosDuplas <- dragaoV + fadaV
               duplaFD <- 1
               reunir_elementos <- reunir_elementos + 2
             fimse
            fimse

            // dupla de sagrado e fada
            se personagem = sagradoV entao
            se hpS <= 0 entao
               escreval("VOCÊ PERDEU")
               reunir_elementos <- 8
               sagradoV <- 0
            senao
               escreval("VOCÊ VENCEU A FADA COM O SAGRADO ")
               escreval("FADA SE JUNTOU A CAUSA")
               torreFada <- 1
               fadaV <- 2
               elementosDuplas <- sagradoV + fadaV
               duplaFS <- 2
               reunir_elementos <- reunir_elementos + 2
            fimse
          fimse


            // dupla trevas e fada
            se personagem = trevasV entao
            se hpT <= 0 entao
               escreval("VOCÊ PERDEU")
               reunir_elementos <- 8
               trevas <- 0
            senao
               escreval("VOCÊ VENCEU A FADA COM AS TREVAS")
               escreval("FADA SE JUNTOU A CAUSA")
               torreFada <- 1
               fadaV <- 2
               elementosDuplas <- trevasV + fadaV
               duplaFT <- 3
               reunir_elementos <- reunir_elementos + 2
            fimse
          fimse
          
          escreval("PRONTO PRA IR PARA OUTRA TORRE")
          escreval("Pressione ENTER para continuar...")
          leia(n)
          
fimprocedimento
  // dragao x fada
procedimento dragao_Bossfada
      Var
         escudoD, y, x : inteiro
         escama : real
       inicio
         escama <- ataqueBossF / 2
       
         enquanto vida_fada > 0 faca
         timer 3500
         limpatela()
         timer 0

         escreval("VIDA DO DRAGÃO" , hpD, " MANA DO DRAGÃO",manaD)
         escreval()
         escreval()
         escreval("VIDA DA FADA ", vida_fada)



         aleatorio 1,20
         escreval("FADA ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se escudoD = 1 entao
            escudoD <- 0
            ataqueBossF <- ataqueBossF - escama
         senao
            se x >= 16 entao
               hpD <- hpD - ataqueBossF
               escreval("FADA ACERTOU O ATAQUE")
            senao
               escreval("FADA ERROU O ATAQUE")
            fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 30       ||  2 - DANO NO BOSS - 50           ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 15 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - REDUZ O DANO DO BOSS    ||  4 - DANO NO BOSS - 65           ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            || ||       EM 50%                  ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 25 DE MANA        ||      GASTA 40 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueD)

           y <- 0
         escolha ataqueD

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off

            se y >= 11 entao
               escreval("DRAGÃO ACERTOU MORDIDA NA FADA")
               vida_fada <- vida_fada - ataqueDB
            senao
               escreval("DRAGÃO ERROU A MORDIDA NA FADA")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaD < 15 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               se y >= 11 entao
                  escreval("DRAGÃO ACERTOU BAFO DE FOGO NA FADA")
                  manaD <- manaD - 15
                  vida_fada <- vida_fada - ataqueDF
               senao
                  escreval("DRAGÃO ERROU BAFO DE FOGO NA FADA")
                  manaD <- manaD - 15
               fimse
            fimse
         caso 3
            se manaD < 25 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO AUMENTOU A DEFESA")
               escudoD <- 1
               manaD <- manaD - 25
            fimse
         caso 4
            se manaD < 40 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO USOU FURIA DRAGONICA")
               vida_fada <- vida_fada - ataqueDFD
               manaD <- manaD - 40
            fimse
         fimescolha


         se hpD <= 0 entao
            fada_vida <- 0
            escolha_torre <- 0
            torreFada <- 1
            interrompa()
         fimse
        fimenquanto
fimprocedimento

// trevas x fada
procedimento trevas_Bossfada
 Var
    resultado, porcentagem : real
    x, y, reduzT : inteiro
   inicio
       porcentagem <- 30

       resultado <- ataqueBossF * (porcentagem / 100)

       enquanto vida_fada > 0 faca
            timer 3500
            limpatela
            timer 0
            
escreval ("                                                     __          .--.         ")
escreval ("                                           (''''--__(  ''-_    ,' .-.\        ")
escreval ("          VIDA DA FADA ", vida_fada,"                   (''-_ _'''--__''-_(  (^_^))       ")
escreval ("                                              ( '''--___''--__   ) -'(        ")
escreval ("                                               '-__       ''     ,(., )_      ")
escreval ("                                                   ''''----___(.'.  /--       ")
escreval ("                                                            (-_/  (           ")
escreval ("                                                             \   \ \          ")
escreval ("                                                              `.  \ |         ")
escreval ("                                                                \  \/         ")
escreval ("                                                                ||  \         ")
escreval ("                                                              ,-'/`. \        ")
escreval ("                                                              ) /   ) \       ")
escreval ("                                                              |/    `-.\       ")
escreval ("                                                                                                ")
escreval ("                @@@@@@@@@@                                                                      ")
escreval ("            @@@@          @@@@                                                                  ")
escreval ("          @@@                @@@                                                                ")
escreval ("         @@        @@@@@       @@                                                               ")
escreval ("        @@       @@  @  @@      @@                                                              ")
escreval ("        @@         @@@@@        @@       VIDA DAS TREVAS", hpT," MANA DAS TREVAS",manaT,"       ")
escreval ("        @@   @@@@         @@@@  @@                                                              ")
escreval ("        @@   @ @@         @ @@  @@                                                              ")
escreval ("        @@   @@@@    @    @@@@  @@                                                              ")
escreval ("        @@          @@@         @@                                                              ")
escreval ("        @@     @   @@@@@  @     @@                                                              ")
escreval ("         @@  @@@          @@@   @@                                                              ")
escreval ("          @@@@ @@        @@ @@@@                                                                ")
escreval ("           @@  @@ IIIIII @@  @@                                                                 ")
escreval ("            @@  @@@@@@@@@@  @@                                                                  ")
escreval ("             @@   IIIIIII  @@                                                                   ")
escreval ("              @@          @@                                                                    ")




            aleatorio 1,20
            escreval("FADA ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

            se reduzT = 1 entao
               reduzT <- 0
               ataqueBossF <- ataqueBossF - resultado
            senao
               se x >= 16 entao
                  hpT <- hpT - ataqueBossF
                  escreval("FADA ACERTOU O ATAQUE")
               senao
                  escreval("FADA ERROU O ATAQUE")
               fimse
            fimse


         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
         escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 12      ||      DO BOSS EM 30%              ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueT)

                  y <- 0
            escolha ataqueT

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_fada <- vida_fada - ataqueTB
                  escreval("TREVAS ACERTOU O ATAQUE")
               senao
                  escreval("TREVAS ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 25 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     manaT <- manaT - 25
                     vida_fada <- vida_fada - ataqueTF
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 25
                  fimse
               fimse
            caso 3
               aleatorio 1,20
               leia(y)
               aleatorio off
               se manaT < 20 entao
                  escreval("TREVAS NÃO TEM MANA SUFICIENTE")
               senao
                  se  y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_fada <- vida_fada - ataqueTBV
                     hpT <- hpT + ataqueTRV
                     reduzT <- 1
                     manaT <- manaT - 20
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 20
                  fimse
               fimse

            caso 4
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 30 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_fada <- vida_fada - ataqueTRV
                     manaT <- manaT - 30
                     ataqueBossF <- ataqueBossF - resultado
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 30
                  fimse
               fimse
         fimescolha

           se hpT <= 0 entao
            vida_fada <- 0
            escolha_torre <- 8
            torreFada <- 1

            interrompa()
         fimse
         
       fimenquanto
fimprocedimento

// sagrado x fada
procedimento sagrado_Bossfada
     var
       x, y, elemento_escolhido : inteiro
       Inicio
       
       enquanto vida_fada > 0 faca
         timer 3500
         limpatela()
         timer 0
         
escreval ("                                                     __          .--.         ")
escreval ("                                           (''''--__(  ''-_    ,' .-.\        ")
escreval ("          VIDA DA FADA ", vida_fada,"                   (''-_ _'''--__''-_(  (^_^))       ")
escreval ("                                              ( '''--___''--__   ) -'(        ")
escreval ("                                               '-__       ''     ,(., )_      ")
escreval ("                                                   ''''----___(.'.  /--       ")
escreval ("                                                            (-_/  (           ")
escreval ("                                                             \   \ \          ")
escreval ("                                                              `.  \ |         ")
escreval ("                                                                \  \/         ")
escreval ("                                                                ||  \         ")
escreval ("                                                              ,-'/`. \        ")
escreval ("                                                              ) /   ) \       ")
escreval ("                                                              |/    `-.\      ")
escreval ("                                                                                               ")
escreval ("                                                                                               ")
escreval ("                                                                                               ")
escreval ("       .-''-.                     .-''-.                                                       ")
escreval ("     .'_.-.  |                   |  .-._'.                                                     ")
escreval ("    /    _/ /       _______       \ \_    \                                                    ")
escreval ("   /.--.' | |      `=======`      | | '.--.\                                                   ")
escreval ("  /   .-`-| |       _.---._       | |-`-.   \                                                  ")
escreval (" ;.--':   | |     .'     / '.     | |   :'--.;                                                 ")
escreval ("|    _\.'-| |    /      _/   \    | |-'./_    |                                                ")
escreval (";_.-'/:   | |   /   .-'`  '.  \   | |   :\'-._;                                                ")
escreval ("|   | _:-'\  \.'   | ^ _ ^ |   './  /'-:_ |   |                                                ")
escreval (";  .:` '._ \.'     \   _   /     \ / _.' `:.  ;                                                ")
escreval ("|-` '-.;_ ./        '.___.'       '.` _;.-' `-|                                                ")
escreval ("; / .'\ | |        _.'   '._        \'| /'. \ ;                                                ")
escreval ("| .' / `'.|      .' `''   ''` '.       |'` \ '. |                                                ")
escreval (";/  /\_/-`\      |           |       /-\_/\  \;                                                ")
escreval (" |.' .| `; \     | |       | |      /;` |. '.|                                                 ")
escreval (" |  / \.'\_/\    | :--   --: |    /`_/'./ \  |                                                 ")
escreval ("  \| ; | ; |/)   | |       | |   (\| : | ; |/                                                  ")
escreval ("   \ | ; |  /    \.'-.....-'./    \  | ; | /         VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS,"   ")
escreval ("    `\ | |`/    .' / ;|: | \ '.    |`| | /`                                                    ")
escreval ("     .-:_/ \_.-' .' / ' . : '. '.  /`\_:'                                                      ")
escreval ("     |  \```      .'  ;     \    `:                                                            ")
escreval ("      \  \                   '     `'.                                                         ")
escreval ("   .--'\  |  '         '       .      `-._                                                     ")
escreval ("  /`;--' /_.'          .                  `-.                                                  ")
escreval ("  |  `--`        /               \           \                                                 ")
escreval ("   \       .'   '                 '-.        |                                                 ")
escreval ("    \   '               '          __\       |                                                 ")
escreval ("     '.      .                 _.-'  `)     /                                                  ")
escreval ("       '-._                _.-' `| .-`   _.'                                                   ")
escreval ("           `'--....____.--'|     (`  _.-'                                                      ")
escreval ("                    /  | |  \     `'`                                                          ")
escreval ("                    \__/ \__/                                                                  ")


         aleatorio 1,20
         escreval("FADA ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

            se x <= 16 entao
               escreval("FADA ERROU O ATAQUE")
            senao
               se elemento_escolhido > 0 entao
                 elemento_escolhido <- 0
                 escreval("O ATAQUE DA FADA FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
                senao
                 hpS <- hpS - ataqueBossF
               escreval("FADA ACERTOU O ATAQUE")
            fimse
           fimse
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)
)
             y <- 0
         escolha ataqueS

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 11 entao
               vida_fada <- vida_fada - ataqueSB
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("SAGRADO ACERTOU O ATAQUE")
                  vida_fada <- vida_fada - ataqueSF
                  manaS <- manaS - 25
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
                  manaS <- manaS - 25
               fimse
            fimse
         caso 3
            se manaS < 20 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
              se hpS >= 130 entao
                  escreval("VIDA DO SAGRADO NO MÁXIMO")
                  escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                  ataqueSB <- ataqueSB + 6
                  ataqueSF <- ataqueSF + 12
                  manaS <- manaS - 30
                senao
                 escreval("SAGRADO SE CUROU COM A HABILIDADE E")
                 escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                 ataqueSB <- ataqueSB + 6
                 ataqueSF <- ataqueSF + 12
                 hpS <- hpS + ataqueSV
                 manaS <- manaS - 30
              fimse
           fimse
         caso 4
            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               escreval("SAGRADO USOU BLOQUEIO CONTRA O ATAQUE A FADA")
               elemento_escolhido <- 1
               manaS <- manaS - 25
            fimse

         fimescolha

         se hpS <= 0 entao
            vida_fada <- 0
            escolha_torre <- 8
            torreFadas <- 1
            interrompa()
         fimse
       
       
       fimenquanto
fimprocedimento

// luta duplas
procedimento luta_fada_duplas
  Var
     n: inteiro
   inicio

   
   enquanto vida_fada > 0 faca
       // DUPLA DRAGÃO E TREVAS VS FADA
        se duplaDT = 4 entao
           duplaDT_Bossfada()
        fimse
        
        // DUPLA DRAGÃO E SAGRADO VS FADA
        se duplaDS = 5 entao
            duplaDS_Bossfada()
        fimse
        
        // DUPLA TREVAS E SAGRADO VS FADA
        se duplaTS = 6 entao
           duplaTS_Bossfada()
        fimse
        
   fimenquanto
   
        // formação de trios
        
        // DRAGÃO, TREVAS E FADA
       se duplaDT = 4 entao
        se (hpD > 0) e (hpT > 0) entao
            escreval("A DUPLA DRAGÃO E TREVAS VENCENRAM A FADA")
            trioFTD <- 1
            escolha_torre <- 0
            torreFada <- 1
            reunir_elementos <- reunir_elementos + 2
            fadaV <- 2
            elementosDuplas <- 0
            
           senao
            se (hpT <= 0) e (hpD <= 0) entao
            reunir_elementos <- 8
            trevasV <- 0
            dragaoV <- 0
             escreval("art- todos morreram")
            // colocar um procedimento de imagem perdedor aqui
            senao
             se hpD <= 0 entao
              escreval("DRAGÃO MORREU NA LUTA")
              dragaoV <- 0
              duplaFT <- 3
              escreval("TREVAS VENCEU A FADA")
              escolha_torre <- 0
              torreFada <- 1
              fadaV <- 2
              duplaDT <- 0
              reunir_elementos <- reunir_elementos + 2
              senao
               se hpT <= 0 entao
                escreval("TREVAS MORREU NA LUTA")
                trevasV <- 0
                duplaFD <- 1
                escreval("DRAGÃO VENCEU A FADA")
                escolha_torre <- 0
                torreFada <- 1
                fadaV <- 2
                reunir_elementos <- reunir_elementos + 2
                duplaDT <- 0
               fimse
              fimse
             fimse
            fimse
           fimse
         // DRAGÃO, SAGRADO E FADA
        se duplaDS = 5 entao
         se (hpD > 0) e (hpS > 0) entao
            escreval("A DUPLA DRAGÃO E SAGRADO VENCENRAM A FADA")
            trioSDF <- 1
            escolha_torre <- 0
            torreFada <- 1
            fadaV <- 2
            reunir_elementos <- reunir_elementos + 2
            elementosDuplas <- 0
           senao
            se (hpT <= 0) e (hpS <= 0) entao
            reunir_elementos <- 8
              trevasV <- 0
             sagradoV <- 0
             escreval("art- todos morreram")
            // colocar um procedimento de imagem perdedor aqui
            senao
             se hpD <= 0 entao
              escreval("DRAGÃO MORREU NA LUTA")
              dragaoV <- 0
              duplaFS <- 2
              duplaDS <- 0
              escreval("SAGRADO VENCEU A FADA")
              escolha_torre <- 0
              torreFada <- 1
              fadaV <- 2
              reunir_elementos <- reunir_elementos + 2
              duplaDS <- 0
              senao
               se hpS <= 0 entao
                escreval("SAGRADO MORREU NA LUTA")
                sagradoV <- 0
                duplaFD <- 1
                duplaDS <- 0
                escreval("DRAGÃO VENCEU A FADA")
                escolha_torre <- 0
                torreFada <- 1
                fadaV <- 2
                reunir_elementos <- reunir_elementos + 2
               fimse
              fimse
             fimse
            fimse
           fimse
         // TREVAS, SAGRADO E FADA
        se duplaTS = 6 entao
         se (hpT > 0) e (hpS > 0) entao
            escreval("A DUPLA TREVAS E SAGRADO VENCENRAM A FADA")
            trioTFS <- 1
            escolha_torre <- 0
            torreFada <- 1
            reunir_elementos <- reunir_elementos + 2
            fadaV <- 2
            elementosDuplas <- 0
           senao
            se (hpT <= 0) e (hpS <= 0) entao
            reunir_elementos <- 8
            trevasV <- 0
            sagradoV <-0
             escreval("art- todos morreram")
            // colocar um procedimento de imagem perdedor aqui
            senao
             se hpT <= 0 entao
              escreval("TREVAS MORREU NA LUTA")
              trevasV <- 0
              duplaFS <- 2
              duplaTS <- 0
              escreval("SAGRADO VENCEU A FADA")
              escolha_torre <- 0
              torreFada <- 1
              reunir_elementos <- reunir_elementos + 2
              fadaV <- 2
              senao
               se hpS <= 0 entao
                escreval("SAGRADO MORREU NA LUTA")
                escreval("TREVAS VENCEU A FADA")
                escolha_torre <- 0
                torreFada <- 1
                sagradoV <- 0
                duplaFT <- 3
                reunir_elementos <- reunir_elementos + 2
                fadaV <- 2
                duplaTS <- 0
                 fimse
               fimse
              fimse
             fimse
            fimse
        escreval("ESTA PRONTO PARA IR NA OUTRA TORRE")
        escreval("Pressione ENTER para continuar...")
        leia(n)
        
        
fimprocedimento
    // DUPLA DRAGÃO E TREVAS VS FADA
procedimento duplaDT_Bossfada
    var
      x, y, escudoD, reduzT : inteiro
      escama, porcentagem, resultado  : real
      Inicio
       porcentagem <- 30

       resultado <- ataqueBossF * (porcentagem / 100)
       escama <- ataqueBossF / 2
        
       enquanto vida_fada > 0 faca
       timer 3500
       limpatela()
       timer 0
      
          se hpD > 0 entao
             // VERIFICAR SE A FADA ESTA VIVA
              se vida_fada > 0 entao
                  //LUTA
         escreval("ART")
         escreval("VIDA DO DRAGÃO" , hpD, " MANA DO DRAGÃO",manaD)
         escreval()
         escreval()
         escreval("VIDA DO SAGRADO ", vida_fada)

         aleatorio 1,20
         escreval("FADA ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se escudoD = 1 entao
            escudoD <- 0
            ataqueBossF <- ataqueBossF - escama
            escudoD <- 0
         senao
            se x >= 16 entao
               hpD <- hpD - ataqueBossF
               escreval("FADA ACERTOU O ATAQUE")
            senao
               escreval("FADA ERROU O ATAQUE")
            fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 30       ||  2 - DANO NO BOSS - 50           ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 15 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - REDUZ O DANO DO BOSS    ||  4 - DANO NO BOSS - 65           ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            || ||       EM 50%                  ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 25 DE MANA        ||      GASTA 40 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueD)

            y <- 0
         escolha ataqueD

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off

            se y >= 11 entao
               escreval("DRAGÃO ACERTOU MORDIDA NO SAGRADO")
               vida_fada <- vida_fada - ataqueDB
            senao
               escreval("DRAGÃO ERROU A MORDIDA NO SAGRADO")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaD < 15 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               se y >= 11 entao
                  escreval("DRAGÃO ACERTOU BAFO DE FOGO NO FADA")
                  manaD <- manaD - 15
                  vida_fada <- vida_fada - ataqueDF
               senao
                  escreval("DRAGÃO ERROU BAFO DE FOGO NO FADA")
                  manaD <- manaD - 15
               fimse
            fimse
         caso 3
            se manaD < 25 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO AUMENTOU A DEFESA")
               escudoD <- 1
               manaD <- manaD - 25
            fimse
         caso 4
            se manaD < 40 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO USOU FURIA DRAGONICA")
               vida_fada <- vida_fada - ataqueDFD
               manaD <- manaD - 40
            fimse
         fimescolha

           senao
            escreval("VENCEU A FADA")
            interrompa()

        fimse
      fimse


      timer 3500
      limpatela()
      timer 0
      
  se hpT > 0 entao
    // VERIFICAR SE A FADA ESTA VIVA
     se vida_fada > 0 entao
                  //LUTA

escreval ("                                                     __          .--.         ")
escreval ("                                           (''''--__(  ''-_    ,' .-.\        ")
escreval ("          VIDA DA FADA ", vida_fada,"                   (''-_ _'''--__''-_(  (^_^))       ")
escreval ("                                              ( '''--___''--__   ) -'(        ")
escreval ("                                               '-__       ''     ,(., )_      ")
escreval ("                                                   ''''----___(.'.  /--       ")
escreval ("                                                            (-_/  (           ")
escreval ("                                                             \   \ \          ")
escreval ("                                                              `.  \ |         ")
escreval ("                                                                \  \/         ")
escreval ("                                                                ||  \         ")
escreval ("                                                              ,-'/`. \        ")
escreval ("                                                              ) /   ) \       ")
escreval ("                                                              |/    `-.\       ")
escreval ("                                                                                                ")
escreval ("                @@@@@@@@@@                                                                      ")
escreval ("            @@@@          @@@@                                                                  ")
escreval ("          @@@                @@@                                                                ")
escreval ("         @@        @@@@@       @@                                                               ")
escreval ("        @@       @@  @  @@      @@                                                              ")
escreval ("        @@         @@@@@        @@       VIDA DAS TREVAS", hpT," MANA DAS TREVAS",manaT,"       ")
escreval ("        @@   @@@@         @@@@  @@                                                              ")
escreval ("        @@   @ @@         @ @@  @@                                                              ")
escreval ("        @@   @@@@    @    @@@@  @@                                                              ")
escreval ("        @@          @@@         @@                                                              ")
escreval ("        @@     @   @@@@@  @     @@                                                              ")
escreval ("         @@  @@@          @@@   @@                                                              ")
escreval ("          @@@@ @@        @@ @@@@                                                                ")
escreval ("           @@  @@ IIIIII @@  @@                                                                 ")
escreval ("            @@  @@@@@@@@@@  @@                                                                  ")
escreval ("             @@   IIIIIII  @@                                                                   ")
escreval ("              @@          @@                                                                    ")



            aleatorio 1,20
            escreval("FADA ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

            se reduzT = 1 entao
               reduzT <- 0
               ataqueBossF <- ataqueBossF - resultado
             senao
               se x >= 16 entao
                  hpT <- hpT - ataqueBossF
                  escreval("FADA ACERTOU O ATAQUE")
               senao
                  escreval("FADA ERROU O ATAQUE")
               fimse
            fimse

            escreval()
            escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
            escreval()
            escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
            escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
            escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
            escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
            escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
            escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
            escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
            escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
            escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 10      ||      DO BOSS EM 30%              ||")
            escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
            escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
            escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
            leia(ataqueT)
               y <- 0
            escolha ataqueT

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_fada <- vida_fada - ataqueTB
                  escreval("TREVAS ACERTOU O ATAQUE")
               senao
                  escreval("TREVAS ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 25 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
                senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     manaT <- manaT - 25
                     vida_fada <- vida_fada - ataqueTF
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 25
                  fimse
               fimse
            caso 3
               aleatorio 1,20
               leia(y)
               aleatorio off
               se manaT < 20 entao
                  escreval("TREVAS NÃO TEM MANA SUFICIENTE")
               senao
                  se y <= 11 entao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 20
                   senao
                    se hpT >= 120 entao
                     escreval("TREVAS VIDA NO MÁXIMO")
                     vida_fada <- vida_fada - ataqueTRV
                     reduzT <- 1
                     manaT <- manaT - 20
                    senao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_fada <- vida_fada - ataqueTRV
                     hpT <- hpT + ataqueTBV
                     reduzT <- reduzT + 1
                     manaT <- manaT - 20
                  fimse
               fimse
              fimse
            caso 4
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 30 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_fada <- vida_fada - ataqueTBV
                     manaT <- manaT - 30
                     ataqueBossF <- ataqueBossF - resultado
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 30
                  fimse
               fimse
           fimescolha

                 senao
                  interrompa()
              fimse
            fimse
        fimenquanto
fimprocedimento

   // DUPLA DRAGÃO E SAGRADO VS FADA
procedimento duplaDS_Bossfada
       Var
         x, y, elemento_escolhido, escudoD : inteiro
         escama : real
         inicio
         
         escama <- ataqueBossF / 2
         
         enquanto vida_fada > 0 faca
         timer 3500
         limpatela()
         timer 0
         
         
               se hpD > 0 entao
             // VERIFICAR SE A FADA ESTA VIVA
              se vida_fada > 0 entao
                  //LUTA
          escreval("ART")
         escreval("VIDA DO DRAGÃO" , hpD, " MANA DO DRAGÃO",manaD)
         escreval()
         escreval()
         escreval("VIDA DO SAGRADO ", vida_fada)

         aleatorio 1,20
         escreval("FADA ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

        se elemento_escolhido = 1 entao
           elemento_escolhido <- 0
           escreval("ATAQUE DA FADA FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
             senao
                se escudoD > 0 entao
                  escudoD <- 0
                  ataqueBossF <- ataqueBossF - escama
                  senao
                      se x >= 16 entao
                         hpD <- hpD - ataqueBossF
                         escreval("FADA ACERTOU O ATAQUE")
                      senao
                        escreval("FADA ERROU O ATAQUE")
                       fimse
                      fimse
                     fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 30       ||  2 - DANO NO BOSS - 50           ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 15 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - REDUZ O DANO DO BOSS    ||  4 - DANO NO BOSS - 65           ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            || ||       EM 50%                  ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 25 DE MANA        ||      GASTA 40 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueD)

              y <- 0
         escolha ataqueD

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off

            se y >= 11 entao
               escreval("DRAGÃO ACERTOU MORDIDA NO SAGRADO")
               vida_fada <- vida_fada - ataqueDB
            senao
               escreval("DRAGÃO ERROU A MORDIDA NO SAGRADO")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaD < 15 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               se y >= 11 entao
                  escreval("DRAGÃO ACERTOU BAFO DE FOGO NO SAGRADO")
                  manaD <- manaD - 15
                  vida_fada <- vida_fada - ataqueDF
               senao
                  escreval("DRAGÃO ERROU BAFO DE FOGO NO SAGRADO")
                  manaD <- manaD - 15
               fimse
            fimse
         caso 3
            se manaD < 25 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO AUMENTOU A DEFESA")
               escudoD <- 1
               manaD <- manaD - 25
            fimse
         caso 4
            se manaD < 40 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO USOU FURIA DRAGONICA")
               vida_fada <- vida_fada - ataqueDFD
               manaD <- manaD - 40
            fimse
         fimescolha

                 senao
                  interrompa()
              fimse

            fimse

         timer 3500
         limpatela()
         timer 0


  se hpS > 0 entao
    // VERIFICAR SE A FADA ESTA VIVA
     se vida_fada > 0 entao
                  //LUTA


escreval ("                                                     __          .--.         ")
escreval ("                                           (''''--__(  ''-_    ,' .-.\        ")
escreval ("          VIDA DA FADA ", vida_fada,"                   (''-_ _'''--__''-_(  (^_^))       ")
escreval ("                                              ( '''--___''--__   ) -'(        ")
escreval ("                                               '-__       ''     ,(., )_      ")
escreval ("                                                   ''''----___(.'.  /--       ")
escreval ("                                                            (-_/  (           ")
escreval ("                                                             \   \ \          ")
escreval ("                                                              `.  \ |         ")
escreval ("                                                                \  \/         ")
escreval ("                                                                ||  \         ")
escreval ("                                                              ,-'/`. \        ")
escreval ("                                                              ) /   ) \       ")
escreval ("                                                              |/    `-.\      ")
escreval ("                                                                                               ")
escreval ("                                                                                               ")
escreval ("                                                                                               ")
escreval ("       .-''-.                     .-''-.                                                       ")
escreval ("     .'_.-.  |                   |  .-._'.                                                     ")
escreval ("    /    _/ /       _______       \ \_    \                                                    ")
escreval ("   /.--.' | |      `=======`      | | '.--.\                                                   ")
escreval ("  /   .-`-| |       _.---._       | |-`-.   \                                                  ")
escreval (" ;.--':   | |     .'     / '.     | |   :'--.;                                                 ")
escreval ("|    _\.'-| |    /      _/   \    | |-'./_    |                                                ")
escreval (";_.-'/:   | |   /   .-'`  '.  \   | |   :\'-._;                                                ")
escreval ("|   | _:-'\  \.'   | ^ _ ^ |   './  /'-:_ |   |                                                ")
escreval (";  .:` '._ \.'     \   _   /     \ / _.' `:.  ;                                                ")
escreval ("|-` '-.;_ ./        '.___.'       '.` _;.-' `-|                                                ")
escreval ("; / .'\ | |        _.'   '._        \'| /'. \ ;                                                ")
escreval ("| .' / `'.|      .' `''   ''` '.       |'` \ '. |                                                ")
escreval (";/  /\_/-`\      |           |       /-\_/\  \;                                                ")
escreval (" |.' .| `; \     | |       | |      /;` |. '.|                                                 ")
escreval (" |  / \.'\_/\    | :--   --: |    /`_/'./ \  |                                                 ")
escreval ("  \| ; | ; |/)   | |       | |   (\| : | ; |/                                                  ")
escreval ("   \ | ; |  /    \.'-.....-'./    \  | ; | /         VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS,"   ")
escreval ("    `\ | |`/    .' / ;|: | \ '.    |`| | /`                                                    ")
escreval ("     .-:_/ \_.-' .' / ' . : '. '.  /`\_:'                                                      ")
escreval ("     |  \```      .'  ;     \    `:                                                            ")
escreval ("      \  \                   '     `'.                                                         ")
escreval ("   .--'\  |  '         '       .      `-._                                                     ")
escreval ("  /`;--' /_.'          .                  `-.                                                  ")
escreval ("  |  `--`        /               \           \                                                 ")
escreval ("   \       .'   '                 '-.        |                                                 ")
escreval ("    \   '               '          __\       |                                                 ")
escreval ("     '.      .                 _.-'  `)     /                                                  ")
escreval ("       '-._                _.-' `| .-`   _.'                                                   ")
escreval ("           `'--....____.--'|     (`  _.-'                                                      ")
escreval ("                    /  | |  \     `'`                                                          ")
escreval ("                    \__/ \__/                                                                  ")


         aleatorio 1,20
         escreval("FADA ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

            se x <= 16 entao
               escreval("FADA ERROU O ATAQUE")
            senao
               se elemento_escolhido = 2 entao
                 elemento_escolhido <- 0
                 escreval("O ATAQUE DA FADA FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
                senao
                 hpS <- hpS - ataqueBossF
               escreval("FADA ACERTOU O ATAQUE")
            fimse
           fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)

             y <- 0
         escolha ataqueS

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 11 entao
               vida_fada <- vida_fada - ataqueSB
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("SAGRADO ACERTOU O ATAQUE")
                  vida_fada <- vida_fada - ataqueSF
                  manaS <- manaS - 25
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
                  manaS <- manaS - 25
               fimse
            fimse
         caso 3
            se manaS < 20 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
              se hpS >= 130 entao
                  escreval("VIDA DO SAGRADO NO MÁXIMO")
                  escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO E DA DUPLA")
                  ataqueSB <- ataqueSB + 6
                  ataqueSF <- ataqueSF + 12
                  ataqueDB <- ataqueDB + 5
                  ataqueDF <- ataqueDF + 9
                  ataqueDFD <- ataqueDFD + 12
                  manaS <- manaS - 30
                senao
                 escreval("SAGRADO SE CUROU COM A HABILIDADE E ")
                 escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO E DA DUPLA")
                 ataqueSB <- ataqueSB + 6
                 ataqueSF <- ataqueSF + 12
                 ataqueDB <- ataqueDB + 5
                 ataqueDF <- ataqueDF + 9
                 ataqueDFD <- ataqueDFD + 12
                 hpS <- hpS + ataqueSV
                 manaS <- manaS - 30
              fimse
           fimse
         caso 4
            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               escreval("QUEM VOCÊ QUER PROTEGER CONTRA O ATAQUE DA FADA")
               escreval("       1 - DRAGÃO || 2 - SAGRADO               ")
               leia(elemento_escolhido)
               manaS <- manaS - 25
            fimse

         fimescolha

                 senao
                  interrompa()
              fimse
            fimse
         fimenquanto
fimprocedimento

   // DUPLA SAGRADO E TREVAS VS FADA
procedimento duplaTS_Bossfada
     Var
        elemento_escolhido, x ,y, reduzT: inteiro
        porcentagem, resultado : real
       Inicio
       
        porcentagem <- 30
        resultado <- ataqueBossF * (porcentagem / 100)

       
       enquanto vida_fada > 0 faca
       
       timer 3500
      limpatela()
      timer 0
       
     se hpT > 0 entao
       // VERIFICAR SE A FADA ESTA VIVA
        se vida_fada > 0 entao
            //LUTA
escreval ("                                                     __          .--.         ")
escreval ("                                           (''''--__(  ''-_    ,' .-.\        ")
escreval ("          VIDA DA FADA ", vida_fada,"                   (''-_ _'''--__''-_(  (^_^))       ")
escreval ("                                              ( '''--___''--__   ) -'(        ")
escreval ("                                               '-__       ''     ,(., )_      ")
escreval ("                                                   ''''----___(.'.  /--       ")
escreval ("                                                            (-_/  (           ")
escreval ("                                                             \   \ \          ")
escreval ("                                                              `.  \ |         ")
escreval ("                                                                \  \/         ")
escreval ("                                                                ||  \         ")
escreval ("                                                              ,-'/`. \        ")
escreval ("                                                              ) /   ) \       ")
escreval ("                                                              |/    `-.\       ")
escreval ("                                                                                                ")
escreval ("                @@@@@@@@@@                                                                      ")
escreval ("            @@@@          @@@@                                                                  ")
escreval ("          @@@                @@@                                                                ")
escreval ("         @@        @@@@@       @@                                                               ")
escreval ("        @@       @@  @  @@      @@                                                              ")
escreval ("        @@         @@@@@        @@       VIDA DAS TREVAS", hpT," MANA DAS TREVAS",manaT,"       ")
escreval ("        @@   @@@@         @@@@  @@                                                              ")
escreval ("        @@   @ @@         @ @@  @@                                                              ")
escreval ("        @@   @@@@    @    @@@@  @@                                                              ")
escreval ("        @@          @@@         @@                                                              ")
escreval ("        @@     @   @@@@@  @     @@                                                              ")
escreval ("         @@  @@@          @@@   @@                                                              ")
escreval ("          @@@@ @@        @@ @@@@                                                                ")
escreval ("           @@  @@ IIIIII @@  @@                                                                 ")
escreval ("            @@  @@@@@@@@@@  @@                                                                  ")
escreval ("             @@   IIIIIII  @@                                                                   ")
escreval ("              @@          @@                                                                    ")



            aleatorio 1,20
            escreval("FADA ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

           se elemento_escolhido = 1 entao
             escreval("O ATAQUE DA FADA FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
            senao
            se reduzT = 0 entao
               reduzT <- 0
               ataqueBossF <- ataqueBossF - resultado
            senao
               se x >= 16 entao
                  hpT <- hpT - ataqueBossF
                  escreval("FADA ACERTOU O ATAQUE")
               senao
                  escreval("FADA ERROU O ATAQUE")
               fimse
            fimse
           fimse

         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
         escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 10      ||      DO BOSS EM 30%              ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueT)

                y <- 0
            escolha ataqueT

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_fada <- vida_fada - ataqueTB
                  escreval("TREVAS ACERTOU O ATAQUE")
               senao
                  escreval("TREVAS ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 25 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     manaT <- manaT - 25
                     vida_fada <- vida_fada - ataqueTF
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 25
                  fimse
               fimse
            caso 3
               aleatorio 1,20
               leia(y)
               aleatorio off
               se manaT < 20 entao
                  escreval("TREVAS NÃO TEM MANA SUFICIENTE")
               senao
                  se y <= 11 entao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 20
                   senao
                    se hpT >= 120 entao
                     escreval("VIDA NO MÁXIMO")
                     vida_fada <- vida_fada - ataqueTBV
                     reduzT <- reduzT + 1
                     manaT <- manaT - 20
                    senao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_fada <- vida_fada - ataqueTBV
                     hpT <- hpT + ataqueTRV
                     reduzT <- reduzT + 1
                     manaT <- manaT - 20
                  senao
                   fimse
                  fimse
               fimse

           caso 4
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 30 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_fada <- vida_fada - ataqueTRV
                     manaT <- manaT - 30
                     ataqueBoss <- ataqueBoss - resultado
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 30
                  fimse
               fimse
         fimescolha

                 senao
                  interrompa()
              fimse
       fimse

       timer 3500
         limpatela()
         timer 0

      se hpS > 0 entao
       // VERIFICAR SE A FADA ESTA VIVA
        se vida_fada > 0 entao
                  //LUTA
escreval ("                                                     __          .--.         ")
escreval ("                                           (''''--__(  ''-_    ,' .-.\        ")
escreval ("          VIDA DA FADA ", vida_fada,"                   (''-_ _'''--__''-_(  (^_^))       ")
escreval ("                                              ( '''--___''--__   ) -'(        ")
escreval ("                                               '-__       ''     ,(., )_      ")
escreval ("                                                   ''''----___(.'.  /--       ")
escreval ("                                                            (-_/  (           ")
escreval ("                                                             \   \ \          ")
escreval ("                                                              `.  \ |         ")
escreval ("                                                                \  \/         ")
escreval ("                                                                ||  \         ")
escreval ("                                                              ,-'/`. \        ")
escreval ("                                                              ) /   ) \       ")
escreval ("                                                              |/    `-.\      ")
escreval ("                                                                                               ")
escreval ("                                                                                               ")
escreval ("                                                                                               ")
escreval ("       .-''-.                     .-''-.                                                       ")
escreval ("     .'_.-.  |                   |  .-._'.                                                     ")
escreval ("    /    _/ /       _______       \ \_    \                                                    ")
escreval ("   /.--.' | |      `=======`      | | '.--.\                                                   ")
escreval ("  /   .-`-| |       _.---._       | |-`-.   \                                                  ")
escreval (" ;.--':   | |     .'     / '.     | |   :'--.;                                                 ")
escreval ("|    _\.'-| |    /      _/   \    | |-'./_    |                                                ")
escreval (";_.-'/:   | |   /   .-'`  '.  \   | |   :\'-._;                                                ")
escreval ("|   | _:-'\  \.'   | ^ _ ^ |   './  /'-:_ |   |                                                ")
escreval (";  .:` '._ \.'     \   _   /     \ / _.' `:.  ;                                                ")
escreval ("|-` '-.;_ ./        '.___.'       '.` _;.-' `-|                                                ")
escreval ("; / .'\ | |        _.'   '._        \'| /'. \ ;                                                ")
escreval ("| .' / `'.|      .' `''   ''` '.       |'` \ '. |                                                ")
escreval (";/  /\_/-`\      |           |       /-\_/\  \;                                                ")
escreval (" |.' .| `; \     | |       | |      /;` |. '.|                                                 ")
escreval (" |  / \.'\_/\    | :--   --: |    /`_/'./ \  |                                                 ")
escreval ("  \| ; | ; |/)   | |       | |   (\| : | ; |/                                                  ")
escreval ("   \ | ; |  /    \.'-.....-'./    \  | ; | /         VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS,"   ")
escreval ("    `\ | |`/    .' / ;|: | \ '.    |`| | /`                                                    ")
escreval ("     .-:_/ \_.-' .' / ' . : '. '.  /`\_:'                                                      ")
escreval ("     |  \```      .'  ;     \    `:                                                            ")
escreval ("      \  \                   '     `'.                                                         ")
escreval ("   .--'\  |  '         '       .      `-._                                                     ")
escreval ("  /`;--' /_.'          .                  `-.                                                  ")
escreval ("  |  `--`        /               \           \                                                 ")
escreval ("   \       .'   '                 '-.        |                                                 ")
escreval ("    \   '               '          __\       |                                                 ")
escreval ("     '.      .                 _.-'  `)     /                                                  ")
escreval ("       '-._                _.-' `| .-`   _.'                                                   ")
escreval ("           `'--....____.--'|     (`  _.-'                                                      ")
escreval ("                    /  | |  \     `'`                                                          ")
escreval ("                    \__/ \__/                                                                  ")


         aleatorio 1,20
         escreval("FADA ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

            se x <= 16 entao
               escreval("FADA ERROU O ATAQUE")
            senao
               se elemento_escolhido > 0 entao
                 elemento_escolhido <- 0
                 escreval("O ATAQUE DA FADA FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
                senao
                 hpS <- hpS - ataqueBossF
               escreval("FADA ACERTOU O ATAQUE")
            fimse
           fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)


             y <- 0
         escolha ataqueS

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 11 entao
               vida_fada <- vida_fada - ataqueSB
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("SAGRADO ACERTOU O ATAQUE")
                  vida_fada <- vida_fada - ataqueSF
                  manaS <- manaS - 25
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
                  manaS <- manaS - 25
               fimse
            fimse
         caso 3
            se manaS < 20 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
              se hpS >= 130 entao
                  escreval("VIDA DO SAGRADO NO MÁXIMO")
                  escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO E DA DUPLA")
                  ataqueSB <- ataqueSB + 6
                  ataqueSF <- ataqueSF + 12
                  ataqueTB <- ataqueTB + 4
                  ataqueTF <- ataqueTF + 9
                  ataqueTBV <- ataqueTBV + 4
                  ataqueTRV <- ataqueTRV + 2
                  manaS <- manaS - 30
                senao
                 escreval("SAGRADO SE CUROU COM A HABILIDADE ")
                 escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO E DA DUPLA")
                 ataqueSB <- ataqueSB + 6
                 ataqueSF <- ataqueSF + 12
                 ataqueTB <- ataqueTB + 4
                 ataqueTF <- ataqueTF + 9
                 ataqueTBV <- ataqueTBV + 4
                 ataqueTRV <- ataqueTRV + 2

                 hpS <- hpS + ataqueSV
                 manaS <- manaS - 30
              fimse
           fimse
         caso 4
            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               escreval("SAGRADO USOU BLOQUEIO CONTRA O ATAQUE DAS TREVAS")
               escreval("       1 - TREAVAS || 2 - SAGRADO               ")
               leia(elemento_escolhido)
               manaS <- manaS - 25
            fimse

         fimescolha

                 senao
                  interrompa()
              fimse
            fimse
       
       
       fimenquanto
fimprocedimento

procedimento luta_fada_triplos
   Var
     x, y,n: inteiro
     escudoD, reduzT : inteiro
     escama, resultado, porcentagem : real
     elemento_escolhido : inteiro
         inicio

   porcentagem <- 30
   escama <- ataqueBossF / 2
   resultado <- ataqueBossF * (porcentagem / 100)


  enquanto vida_fada > 0 faca

       timer 3500
         limpatela()
         timer 0

       se hpT > 0 entao
       // VERIFICAR SE A FADA ESTA VIVA
        se vida_fada > 0 entao
                  //LUTA

escreval ("                                                     __          .--.         ")
escreval ("                                           (''''--__(  ''-_    ,' .-.\        ")
escreval ("          VIDA DA FADA ", vida_fada,"                   (''-_ _'''--__''-_(  (^_^))       ")
escreval ("                                              ( '''--___''--__   ) -'(        ")
escreval ("                                               '-__       ''     ,(., )_      ")
escreval ("                                                   ''''----___(.'.  /--       ")
escreval ("                                                            (-_/  (           ")
escreval ("                                                             \   \ \          ")
escreval ("                                                              `.  \ |         ")
escreval ("                                                                \  \/         ")
escreval ("                                                                ||  \         ")
escreval ("                                                              ,-'/`. \        ")
escreval ("                                                              ) /   ) \       ")
escreval ("                                                              |/    `-.\       ")
escreval ("                                                                                                ")
escreval ("                @@@@@@@@@@                                                                      ")
escreval ("            @@@@          @@@@                                                                  ")
escreval ("          @@@                @@@                                                                ")
escreval ("         @@        @@@@@       @@                                                               ")
escreval ("        @@       @@  @  @@      @@                                                              ")
escreval ("        @@         @@@@@        @@       VIDA DAS TREVAS", hpT," MANA DAS TREVAS",manaT,"       ")
escreval ("        @@   @@@@         @@@@  @@                                                              ")
escreval ("        @@   @ @@         @ @@  @@                                                              ")
escreval ("        @@   @@@@    @    @@@@  @@                                                              ")
escreval ("        @@          @@@         @@                                                              ")
escreval ("        @@     @   @@@@@  @     @@                                                              ")
escreval ("         @@  @@@          @@@   @@                                                              ")
escreval ("          @@@@ @@        @@ @@@@                                                                ")
escreval ("           @@  @@ IIIIII @@  @@                                                                 ")
escreval ("            @@  @@@@@@@@@@  @@                                                                  ")
escreval ("             @@   IIIIIII  @@                                                                   ")
escreval ("              @@          @@                                                                    ")


            aleatorio 1,20
            escreval("FADA ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

           se elemento_escolhido = 3 entao
             elemento_escolhido <- 0
             escreval("O ATAQUE DA FADA FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
            senao
            se reduzT > 0 entao
               ataqueBossF <- ataqueBossF - resultado
            senao
               se x >= 16 entao
                  hpT <- hpT - ataqueBossF
                  escreval("FADA ACERTOU O ATAQUE")
               senao
                  escreval("FADA ERROU O ATAQUE")
               fimse
            fimse
           fimse

         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
         escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 10      ||      DO BOSS EM 30%              ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueT)

                y <- 0
            escolha ataqueT

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_fada <- vida_fada - ataqueTB
                  escreval("TREVAS ACERTOU O ATAQUE")
               senao
                  escreval("TREVAS ERROU O ATAQUE")
               fimse
           caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 25 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     manaT <- manaT - 25
                     vida_fada <- vida_fada - ataqueTF
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 25
                  fimse
               fimse
            caso 3
               aleatorio 1,20
               leia(y)
               aleatorio off
               se manaT < 20 entao
                  escreval("TREVAS NÃO TEM MANA SUFICIENTE")
               senao
                  se y <= 11 entao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 20
                   senao
                    se hpT >= 120 entao
                     escreval("VIDA NO MÁXIMO")
                     vida_fada <- vida_fada - ataqueTBV
                     reduzT <- 1
                     manaT <- manaT - 20
                    senao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_fada <- vida_fada - ataqueTBV
                     hpT <- hpT + ataqueTRV
                     reduzT <- reduzT + 1
                     manaT <- manaT - 20
                  senao
                   fimse
                  fimse
               fimse

         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaT < 30 entao
               escreval("TREVAS NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("TREVAS ACERTOU O ATAQUE")
                  vida_fada <- vida_fada - ataqueTRV
                  manaT <- manaT - 30
                  ataqueBossF <- ataqueBossF - resultado
               senao
                  escreval("TREVAS ERROU O ATAQUE")
                  manaT <- manaT - 30
               fimse
            fimse
         fimescolha

           senao
            interrompa()
        fimse
       fimse
       

       
       se hpS > 0 entao
       // VERIFICAR SE A FADA ESTA VIVA
        se vida_fada > 0 entao
            //LUTA
           timer 3500
         limpatela()
         timer 0

escreval ("                                                     __          .--.         ")
escreval ("                                           (''''--__(  ''-_    ,' .-.\        ")
escreval ("          VIDA DA FADA ", vida_fada,"                   (''-_ _'''--__''-_(  (^_^))       ")
escreval ("                                              ( '''--___''--__   ) -'(        ")
escreval ("                                               '-__       ''     ,(., )_      ")
escreval ("                                                   ''''----___(.'.  /--       ")
escreval ("                                                            (-_/  (           ")
escreval ("                                                             \   \ \          ")
escreval ("                                                              `.  \ |         ")
escreval ("                                                                \  \/         ")
escreval ("                                                                ||  \         ")
escreval ("                                                              ,-'/`. \        ")
escreval ("                                                              ) /   ) \       ")
escreval ("                                                              |/    `-.\      ")
escreval ("                                                                                               ")
escreval ("                                                                                               ")
escreval ("                                                                                               ")
escreval ("       .-''-.                     .-''-.                                                       ")
escreval ("     .'_.-.  |                   |  .-._'.                                                     ")
escreval ("    /    _/ /       _______       \ \_    \                                                    ")
escreval ("   /.--.' | |      `=======`      | | '.--.\                                                   ")
escreval ("  /   .-`-| |       _.---._       | |-`-.   \                                                  ")
escreval (" ;.--':   | |     .'     / '.     | |   :'--.;                                                 ")
escreval ("|    _\.'-| |    /      _/   \    | |-'./_    |                                                ")
escreval (";_.-'/:   | |   /   .-'`  '.  \   | |   :\'-._;                                                ")
escreval ("|   | _:-'\  \.'   | ^ _ ^ |   './  /'-:_ |   |                                                ")
escreval (";  .:` '._ \.'     \   _   /     \ / _.' `:.  ;                                                ")
escreval ("|-` '-.;_ ./        '.___.'       '.` _;.-' `-|                                                ")
escreval ("; / .'\ | |        _.'   '._        \'| /'. \ ;                                                ")
escreval ("| .' / `'.|      .' `''   ''` '.       |'` \ '. |                                                ")
escreval (";/  /\_/-`\      |           |       /-\_/\  \;                                                ")
escreval (" |.' .| `; \     | |       | |      /;` |. '.|                                                 ")
escreval (" |  / \.'\_/\    | :--   --: |    /`_/'./ \  |                                                 ")
escreval ("  \| ; | ; |/)   | |       | |   (\| : | ; |/                                                  ")
escreval ("   \ | ; |  /    \.'-.....-'./    \  | ; | /         VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS,"   ")
escreval ("    `\ | |`/    .' / ;|: | \ '.    |`| | /`                                                    ")
escreval ("     .-:_/ \_.-' .' / ' . : '. '.  /`\_:'                                                      ")
escreval ("     |  \```      .'  ;     \    `:                                                            ")
escreval ("      \  \                   '     `'.                                                         ")
escreval ("   .--'\  |  '         '       .      `-._                                                     ")
escreval ("  /`;--' /_.'          .                  `-.                                                  ")
escreval ("  |  `--`        /               \           \                                                 ")
escreval ("   \       .'   '                 '-.        |                                                 ")
escreval ("    \   '               '          __\       |                                                 ")
escreval ("     '.      .                 _.-'  `)     /                                                  ")
escreval ("       '-._                _.-' `| .-`   _.'                                                   ")
escreval ("           `'--....____.--'|     (`  _.-'                                                      ")
escreval ("                    /  | |  \     `'`                                                          ")
escreval ("                    \__/ \__/                                                                  ")


         aleatorio 1,20
         escreval("FADA ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

            se elemento_escolhido = 2 entao
                elemento_escolhido <- 0
                 escreval("O ATAQUE DA FADA FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
            senao
               se x >= 16 entao
                  hpS <- hpS - ataqueBossF
               escreval("FADA ACERTOU O ATAQUE")
                senao
                 escreval("FADA ERROU O ATAQUE")
            fimse
           fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)

             y <- 0
         escolha ataqueS

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 11 entao
               vida_fada <- vida_fada - ataqueSB
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("SAGRADO ACERTOU O ATAQUE")
                  vida_fada <- vida_fada - ataqueSF
                  manaS <- manaS - 25
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
                  manaS <- manaS - 25
               fimse
            fimse
         caso 3
            se manaS < 20 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
              se hpS >= 130 entao
                  escreval("VIDA DO SAGRADO NO MÁXIMO")
                  escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO E DO GRUPO")
                  ataqueSB <- ataqueSB + 6
                  ataqueSF <- ataqueSF + 12
                  ataqueDB <- ataqueDB + 5
                  ataqueDF <- ataqueDF + 9
                  ataqueDFD <- ataqueDFD + 12
                  ataqueTB <- ataqueTB + 4
                  ataqueTF <- ataqueTF + 9
                  ataqueTBV <- ataqueTBV + 4
                  ataqueTRV <- ataqueTRV + 2
                  manaS <- manaS - 30
                senao
                 escreval("SAGRADO SE CUROU COM A HABILIDADE E")
                 escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO E DO GRUPO")
                 ataqueSB <- ataqueSB + 6
                 ataqueSF <- ataqueSF + 12
                 ataqueDB <- ataqueDB + 5
                 ataqueDF <- ataqueDF + 9
                 ataqueDFD <- ataqueDFD + 12
                 ataqueTB <- ataqueTB + 4
                 ataqueTF <- ataqueTF + 9
                 ataqueTBV <- ataqueTBV + 4
                 ataqueTRV <- ataqueTRV + 2
                 hpS <- hpS + ataqueSV
                 manaS <- manaS - 30
              fimse
           fimse
         caso 4
            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               escreval("QUEM VOCÊ QUER PROTEGER CONTRA O ATAQUE DA FADA")
               escreval("   1 - DRAGÃO || 2 - SAGRADO || 3 - TREVAS     ")
               leia(elemento_escolhido)
               manaS <- manaS - 25
          fimse

         fimescolha

                 senao
                  interrompa()
              fimse
            fimse
            
          timer 3500
         limpatela()
         timer 0
            
       se hpD > 0 entao
       // VERIFICAR SE A FADA ESTA VIVA
        se vida_fada > 0 entao
                  //LUTA
          escreval("ART")
         escreval("VIDA DO DRAGÃO" , hpD, " MANA DO DRAGÃO",manaD)
         escreval()
         escreval()
         escreval("VIDA DO FADA ", vida_fada)

         aleatorio 1,20
         escreval("FADA ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

        se elemento_escolhido = 1 entao
           elemento_escolhido <- 0
           escreval("ATAQUE DA FADA FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
             senao
                se escudoD > 0 entao
                  escudoD <- 0
                  ataqueBossF <- ataqueBossF - escama
                  senao
                      se x >= 16 entao
                         hpD <- hpD - ataqueBossF
                         escreval("FADA ACERTOU O ATAQUE")
                      senao
                        escreval("FADA ERROU O ATAQUE")
                       fimse
                      fimse
                     fimse

         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 30       ||  2 - DANO NO BOSS - 50           ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 15 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - REDUZ O DANO DO BOSS    ||  4 - DANO NO BOSS - 65           ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            || ||       EM 50%                  ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 25 DE MANA        ||      GASTA 40 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueD)

            y <- 0
         escolha ataqueD

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off

            se y >= 11 entao
               escreval("DRAGÃO ACERTOU MORDIDA NA FADA")
               vida_fada <- vida_fada - ataqueDB
            senao
               escreval("DRAGÃO ERROU A MORDIDA NA FADA")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaD < 15 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               se y >= 11 entao
                  escreval("DRAGÃO ACERTOU BAFO DE FOGO NA FADA")
                  manaD <- manaD - 15
                  vida_fada <- vida_fada - ataqueDF
               senao
                  escreval("DRAGÃO ERROU BAFO DE FOGO NA FADA")
                  manaD <- manaD - 15
               fimse
            fimse
         caso 3
            se manaD < 25 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO AUMENTOU A DEFESA")
               escudoD <- 1
               manaD <- manaD - 25
            fimse
         caso 4
            se manaD < 40 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO USOU FURIA DRAGONICA")
               vida_fada <- vida_fada - ataqueDFD
               manaD <- manaD - 40
            fimse
         fimescolha

                 senao
                  interrompa()
              fimse
             fimse


       fimenquanto


            // FAZER O QUARTETO PARA O BOSS FINAL E AS POSSIVEIS MORTES
          timer 3500
         limpatela()
         timer 0
         se (hpT > 0) e (hpS > 0) e (hpD > 0) entao
             fadaV <- 2
             quatroElementos <- 1
             reunir_elementos <- reunir_elementos + 2
            senao
             se (hpT <= 0) e (hpS <= 0) e (hpD <= 0) entao
                 reunir_elementos <- 8
                 escreval("TODOS PERDERAM")
                 trevasV <- 0
                 sagradoV <- 0
                 dragaoV <- 0
                 // procedimento perdeu art
               senao
                se (hpT <= 0) e (hpS <= 0) entao
                  escreval("TREVAS MORREU EM BATALHA")
                  escreval("SAGRADO MORREU EM BATALHA")
                  escreval("DRAGÃO VENCEU CONTRA A FADA")
                  fadaV <- 2
                  reunir_elementos <- reunir_elementos + 2
                  trevasV <- 0
                  sagradoV <- 0
                  
                  senao
                   se (hpT <= 0) e (hpD <= 0) entao
                     escreval("TREVAS MORREU EM BATALHA")
                     escreval("DRAGÃO MORREU EM BATALHA")
                     escreval("SAGRADO VENCEU CONTRA A FADA")
                     fadaV <- 2
                     reunir_elementos <- reunir_elementos + 2
                     trevasV <- 0
                     dragaoV <- 0
                     senao
                      se (hpS <= 0) e (hpD <= 0) entao
                         escreval("SAGRADO MORREU EM BATALHA")
                         escreval("DRAGÃO MORREU EM BATALHA")
                         escreval("TREVAS VENCEU CONTRA A FADA")
                         fadaV <- 2
                         reunir_elementos <- reunir_elementos + 2
                         sagradoV <- 0
                         dragaoV <- 0
                       senao
                        se hpT <= 0 entao
                           escreval("TREVAS MORREU EM BATALHA")
                           escreval("DRAGÃO E SAGRADO VENCERAM CONTRA A FADA")
                           fadaV <- 2
                           reunir_elementos <- reunir_elementos + 2
                           trevasV <- 0
                           senao
                            se hpS <= 0 entao
                              escreval("SAGRADO MORREU EM BATALHA")
                              escreval("DRAGÃO E TREVAS VENCERAM CONTRA A FADA")
                              fadaV <- 2
                              reunir_elementos <- reunir_elementos + 2
                              sagradoV <- 0
                              senao
                               se hpD <= 0 entao
                                 escreval("DRAGÃO MORREU EM BATALHA")
                                 escreval("SAGRADO E TREVAS VENCERAM CONTRA A FADA")
                                 fadaV <- 2
                                 reunir_elementos <- reunir_elementos + 2
                                 dragaoV <- 0
                                 fimse
                               fimse
                            fimse
                        fimse
                      fimse
                   fimse
                fimse
            fimse
            escreval("PREPARADO PARA DESAFIAR O BOSS FINAL")
            escreval("Pressione ENTER para continuar...")
            leia(n)
fimprocedimento

procedimento ir_embora_fada
     var
      y : inteiro
      x : caractere
   inicio
      limpatela()
      escreval("=== TENTANDO FUGIR ===")
      escreval("Voce tenta sair da floresta viva...")
      escreval("A Fada apenas observa voce sair, sem interferir.")
      escreval("Role um D20 para tentar fugir (precisa de 11+)!")
      escreval("Pressione ENTER para rolar...")
      leia(x)
      aleatorio 1,20
      leia(y)
      aleatorio off
      escreval("Voce tirou: ", y, " no D20!")
      se y >= 11 entao
         escreval("CONSEGUIU FUGIR!")
         escreval("As arvores se abrem e voce encontra a saida.")
         escreval("(Torre ignorada - Fada nao foi recrutada)")
         torreFada <- 1
         reunir_elementos <- reunir_elementos + 2
      senao
         escreval("A floresta se fecha ao redor! Sem saida...")
         escreval("A Fada aparece na sua frente, olhando curiosa.")
         timer 1500
         timer 0
         historia_conversar_fada()
      fimse
      escreval("Pressione ENTER para continuar...")
      leia(x)

fimprocedimento


// historia sagrado
procedimento sagrado
inicio
escreval ("       .-''-.                     .-''-.                                                       ")
escreval ("     .'_.-.  |                   |  .-._'.                                                     ")
escreval ("    /    _/ /       _______       \ \_    \                                                    ")
escreval ("   /.--.' | |      `=======`      | | '.--.\                                                   ")
escreval ("  /   .-`-| |       _.---._       | |-`-.   \                                                  ")
escreval (" ;.--':   | |     .'     / '.     | |   :'--.;                                                 ")
escreval ("|    _\.'-| |    /      _/   \    | |-'./_    |                                                ")
escreval (";_.-'/:   | |   /   .-'`  '.  \   | |   :\'-._;                                                ")
escreval ("|   | _:-'\  \.'   | ^ _ ^ |   './  /'-:_ |   |                                                ")
escreval (";  .:` '._ \.'     \   _   /     \ / _.' `:.  ;                                                ")
escreval ("|-` '-.;_ ./        '.___.'       '.` _;.-' `-|                                                ")
escreval ("; / .'\ | |        _.'   '._        \'| /'. \ ;                                                ")
escreval ("| .' / `'.|      .' `''   ''` '.       |'` \ '. |                                              ")
escreval (";/  /\_/-`\      |           |       /-\_/\  \;                                                ")
escreval (" |.' .| `; \     | |       | |      /;` |. '.|                                                 ")
escreval (" |  / \.'\_/\    | :--   --: |    /`_/'./ \  |                                                 ")
escreval ("  \| ; | ; |/)   | |       | |   (\| : | ; |/                                                  ")
escreval ("   \ | ; |  /    \.'-.....-'./    \  | ; | /                                                   ")
escreval ("    `\ | |`/    .' / ;|: | \ '.    |`| | /`                                                    ")
escreval ("     .-:_/ \_.-' .' / ' . : '. '.  /`\_:'                                                      ")
escreval ("     |  \```      .'  ;     \    `:                                                            ")
escreval ("      \  \                   '     `'.                                                         ")
escreval ("   .--'\  |  '         '       .      `-._                                                     ")
escreval ("  /`;--' /_.'          .                  `-.                                                  ")
escreval ("  |  `--`        /               \           \                                                 ")
escreval ("   \       .'   '                 '-.        |                                                 ")
escreval ("    \   '               '          __\       |                                                 ")
escreval ("     '.      .                 _.-'  `)     /                                                  ")
escreval ("       '-._                _.-' `| .-`   _.'                                                   ")
escreval ("           `'--....____.--'|     (`  _.-'                                                      ")
escreval ("                    /  | |  \     `'`                                                          ")
escreval ("                    \__/ \__/                                                                  ")


   escreval()

   escreval("VOCÊ TEM CERTEZA DE ESCOLHER O ELEMENTO SAGRADO?")
   escreval ("1 - SIM || 2 - NÃO")
   leia(escolhaD)
   limpatela
   se escolhaD = "1" entao

      escreval("VC ESCOLHEU O ELEMENTO SAGRADO")
      escreval("-------------------------------------------")
      escreval("Agora você irá trilhar o caminho das torres para chegar ao desafio final, boa sorte...")
      escreval("-------------------------------------------")
      sagradoV <- 3
      personagem <- sagradoV
      reunir_elementos <- reunir_elementos + 2
      timer 4000
      limpatela()
      timer 0


      escreval("Você deseja ver o status da sua classe?")
      escreval ("1 - SIM || 2 - NÃO")
      leia(status)

      se status = "1" entao
         elemento <- 0
         mostrar_Status_S()
         torre()
      senao
         torre()

         elemento <- 0
      fimse

   senao
      elemento <- 1
      limpatela()
   fimse



fimprocedimento

procedimento cenario_sagrado
Var
   escolha_acao : inteiro
inicio
   limpatela

   escreval ("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ")
escreval ("@@       @@@@                                                               @@@@@@                @@ ")
escreval ("@@        @@@@@                                                            @@@@                   @@ ")
escreval ("@@          @@@@@@                                                     @@@@@@                     @@ ")
escreval ("@@            @@@@@                @@@@@@@@@@@@@@                     @@@@@                       @@ ")
escreval ("@@               @@@@           @@@@@@@@@@@@@@@@@@@@                @@@@                          @@ ")
escreval ("@@                  @@@      @@@@                  @@@@          @@@@                             @@ ")
escreval ("@@                   @@@@ @@@@                        @@@@   @@@@@                                @@ ")
escreval ("@@                     @@@@@@        @@@@@@@@@@@        @@@@@@@@@                                 @@ ")
escreval ("@@                     @@@@@@        @@@@@@@@@@@         @@@@@                                    @@ ")
escreval ("@@                   @@@@   @@@@@    @@@@@@@@@@@     @@@@@ @@@@                                   @@ ")
escreval ("@@                   @@@        @@@  @@@@@@@@@@@   @@@      @@@                                   @@ ")
escreval ("@@                  @@@@          @@@@@@@@@@@@@@@@@@        @@@@                                  @@ ")
escreval ("@@                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@                                 @@ ")
escreval ("@@                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                 @@ ")
escreval ("@@                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                 @@ ")
escreval ("@@                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                 @@ ")
escreval ("@@                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                                 @@ ")
escreval ("@@                  @@@@          @@@@@@@@@@@@@@@@           @@@@                   @@@@@@@@@@@@  @@ ")
escreval ("@@                   @@@        @@@@@@@@@@@@@@@@@@@@        @@@                     @@@@@@@@@@@@  @@ ")
escreval ("@@                   @@@       @@@@  @@@@@@@@@@@  @@@@      @@@                  @@@@@@@@@@@@@@@@@@@ ")
escreval ("@@                   @@@@@   @@@@    @@@@@@@@@@@   @@@@    @@@@                  @@@@@@@@@@@@@@@@@@@ ")
escreval ("@@                     @@@  @@@@     @@@@@@@@@@@     @@@@  @@@                   @@@@@@@@@@@@@@@@@@@ ")
escreval ("@@                      @@@@@        @@@@@@@@@@@        @@@@                      @@@          @@@@@ ")
escreval ("@@ @@                   @@@@@@       @@@@@@@@@@@       @@@@@@                     @@@@@@@@@@@@@@@@@@ ")
escreval ("@@ @@                @@@@@  @@@@@    @@@@@@@@@@@   @@@@@@  @@@@                   @@@@@@@@@@@@@@@@@@ ")
escreval ("@@@@@@@@            @@@@     @@@@@@@@@@@@@@@@@@@@@@@@@@     @@@                      @@@@@@@@@    @@ ")
escreval ("@@@@@@@@          @@@@          @@@@@@@@@@@@@@@@@@@@        @@@@@                    @@@@@@@@@    @@ ")
escreval ("@@ @@       @@@  @@@@               @@@@@@@@@@@@@             @@@@                  @@@@@@@@@@@@  @@ ")
escreval ("@@ @@       @@@  @@                  @@@@@@@@@@@                 @@@                @@@@@@@@@@@@  @@ ")
escreval ("@@@@@@@@ @@@@@@@@@                   @@@@@@@@@@@                   @@@              @@@@@@@@@@@@  @@ ")
escreval ("@@@@@@@@@@@ @@@@                     @@@@@@@@@@@                    @@@@          @@@@@@@@@@@@@@@ @@ ")
escreval ("@@     @@@@@@@@                 @@@@@@@@@@@@@@@@@@@@                  @@@@    @@@@@@@@@@@@@@@@@@@@@@ ")
escreval ("@@       @@@@@@@@@          @@@@@@@@@@@@@@@@@@@@@@@@@@@                @@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ")
escreval ("@@     @@@@   @@@@@@@   @@@@@@@@@                 @@@@@@@@               @@@@@@@@@@              @@@ ")
escreval ("@@    @@@           @@@@@@@                             @@@@@@        @@@@@@@@@                   @@ ")
escreval ("@@ @@@@             @@@@@@                                 @@@@@  @@@@@@@     @@@                 @@ ")
escreval ("@@@@@            @@@@@@@                                    @@@@@@@@@          @@@@               @@ ")
escreval ("@@@@           @@@@@@                                         @@@@@@             @@@@             @@ ")
escreval ("@@           @@@@@@                                             @@@@@             @@@@@           @@ ")
escreval ("@@          @@@@@@                                               @@@@@@             @@@@          @@ ")
escreval ("@@        @@@                                                       @@@@@              @@@        @@ ")
escreval ("@@       @@@@                                                         @@@@             @@@        @@ ")
escreval ("@@    @@@@@@                                                           @@@@@            @@@@@     @@ ")
escreval ("@@    @@@@                                                               @@@@             @@@@    @@ ")
escreval ("@@  @@@@                                                                  @@@@@             @@@@     ")
escreval ("@@ @@@@@                                                                   @@@@@@@@@@@@@@@@@@@@@@@@@ ")
escreval ("@@@@@@                                                                       @@@@@@@@@@@@@@@@@@@@@@@ ")
escreval ("@@                                                                                                @@ ")
escreval ("@@                                                                                                @@ ")
escreval ("@@                                                                                                @@ ")
escreval ("@@                                                                                                @@ ")
escreval ("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ")

timer 1000

limpatela

timer 0

 escreval ("       .-''-.                     .-''-.                                                       ")
escreval ("     .'_.-.  |                   |  .-._'.           IN NOMINE PATRIS                          ")
escreval ("    /    _/ /       _______       \ \_    \          ET FILLI                                  ")
escreval ("   /.--.' | |      `=======`      | | '.--.\         ET SPIRITUS SANCT                         ")
escreval ("  /   .-`-| |       _.---._       | |-`-.   \                                                  ")
escreval (" ;.--':   | |     .'     / '.     | |   :'--.;                                                 ")
escreval ("|    _\.'-| |    /      _/   \    | |-'./_    |                                                ")
escreval (";_.-'/:   | |   /   .-'`  '.  \   | |   :\'-._;                                                ")
escreval ("|   | _:-'\  \.'   | ^ _ ^ |   './  /'-:_ |   |                                                ")
escreval (";  .:` '._ \.'     \   _   /     \ / _.' `:.  ;                                                ")
escreval ("|-` '-.;_ ./        '.___.'       '.` _;.-' `-|                                                ")
escreval ("; / .'\ | |        _.'   '._        \'| /'. \ ;                                                ")
escreval ("| .' / `'.|      .' `''   ''` '.       |'` \ '. |                                              ")
escreval (";/  /\_/-`\      |           |       /-\_/\  \;                                                ")
escreval (" |.' .| `; \     | |       | |      /;` |. '.|                                                 ")
escreval (" |  / \.'\_/\    | :--   --: |    /`_/'./ \  |                                                 ")
escreval ("  \| ; | ; |/)   | |       | |   (\| : | ; |/                                                  ")
escreval ("   \ | ; |  /    \.'-.....-'./    \  | ; | /                                                   ")
escreval ("    `\ | |`/    .' / ;|: | \ '.    |`| | /`                                                    ")
escreval ("     .-:_/ \_.-' .' / ' . : '. '.  /`\_:'                                                      ")
escreval ("     |  \```      .'  ;     \    `:                                                            ")
escreval ("      \  \                   '     `'.                                                         ")
escreval ("   .--'\  |  '         '       .      `-._                                                     ")
escreval ("  /`;--' /_.'          .                  `-.                                                  ")
escreval ("  |  `--`        /               \           \                                                 ")
escreval ("   \       .'   '                 '-.        |                                                 ")
escreval ("    \   '               '          __\       |                                                 ")
escreval ("     '.      .                 _.-'  `)     /                                                  ")
escreval ("       '-._                _.-' `| .-`   _.'                                                   ")
escreval ("           `'--....____.--'|     (`  _.-'                                                      ")
escreval ("                    /  | |  \     `'`                                                          ")
escreval ("                    \__/ \__/                                                                  ")
   escreval("-----------------------------------------------------------------------------------------------------")
   escreval("-----------------------------------------------------------------------------------------------------")
   escreval("VOCÊ ADENTRA O ANDAR MISTERIOSO, A LUZ ALI DENTRO NÃO ILUMINAVA;")
   escreval("ELA PURIFICAVA, E CADA PASSO EM DIREÇÃO À CRIATURA PARECIA UM PECADO COMETIDO. O QUE FAZER???")
   escreval("")
      escreval("SAGRADO: 'Eu sabia que voce viria.'")
      escreval("")
      escreval("O QUE VOCE DECIDE FAZER?")
      escreval("1- CONVERSAR COM SAGRADO || 2- ATACAR || 3- TENTAR IR EMBORA")
   leia(escolha_acao)

   escolha escolha_acao
   caso 1
      historia_conversar_sagrado()
   caso 2
    se trioFTD <> 0 entao
         luta_sagrado_trio()
      senao
       se elementosDuplas <> 0 entao
         luta_sagrado_dupla()
       senao
       luta_sagrado()
     fimse
    fimse
   caso 3
      ir_embora_sagrado()
   fimescolha

   escolha_torre <- 0

fimprocedimento


procedimento historia_conversar_sagrado
          Var
      dado : inteiro
      x : caractere
   Inicio
      limpatela()
      escreval("Uma sala branca e silenciosa.")
      escreval("=== CONVERSA COM O SAGRADO ===")
      escreval("Tudo iluminado, mas sem origem de luz.")
      escreval("O ser sagrado esta no centro, imÃ³vel,")
      escreval("olhando diretamente para voce.")
      escreval("")
      escreval("SAGRADO: 'Por que voce luta? Pelo poder... ou pela escolha?'")
      escreval("")
      escreval("Voce tenta responder com coerencia e proposito...")
      escreval("Role o D20! Tire de 11+ para convencer. Menos: julgamento!")
      escreval("Pressione ENTER para rolar...")
      leia(x)

      aleatorio 1,20
      leia(dado)
      aleatorio off
      escreval("Voce tirou: ", dado, " no D20!")

     se personagem = fadaV entao
        dado <- dado + 5
     fimse
     
      se dado >= 11 entao
         escreval("")
         escreval("SAGRADO: 'Sua resposta e... coerente.'")
         escreval("SAGRADO: 'Eu nao luto por voce. Luto pelo que e certo.'")
         escreval("SAGRADO: 'Me guie bem.'")
         escreval("")
         escreval("SUCESSO! O Sagrado se juntou a causa!")
         torreSagrado <- 1
         sagradoV <- 3
         reunir_elementos <- reunir_elementos + 2
         verificar_sagrado()
         //
      senao
         escreval("")
         escreval("SAGRADO: 'Voce nao sabe o que quer. Deixe-me te mostrar.'")
         escreval("FALHOU! O Sagrado te quebra com julgamento. Prepare para lutar!")
         timer 1500
         timer 0
         se trioFTD <> 0 entao
            luta_sagrado_trio()
               senao
                se elementosDuplas <> 0 entao
                  luta_sagrado_dupla()
                senao
                luta_sagrado()
              fimse
          fimse
    fimse


      escreval("Pressione ENTER para continuar...")
      leia(x)
fimprocedimento

procedimento verificar_sagrado
        Inicio

       se elementosDuplas = 0 entao
        se personagem = fadaV entao
           duplaFS <- 2
           elementosDuplas <- 1
        fimse

        se personagem = dragaoV entao
           duplaDS <- 5
           elementosDuplas <- 1
        fimse

        se personagem = trevasV entao
           duplaTS <- 6
           elementosDuplas <- 1
        fimse
       fimse

          se elementosDuplas <> 0 entao
              se duplaFD = 1 entao
                 trioSDF <- 1
              fimse

              se duplaFT = 4 entao
                 trioTFS <- 1
              fimse

              se duplaDT = 4 entao
                 trioDTS <- 1
              fimse
          fimse

       se trioFTD <> 0 entao
          quatroElementos <- 1
       fimse
fimprocedimento



// os elementos x sagrado

procedimento luta_sagrado
   Var
     n: inteiro

         inicio
   // habilidades dos elementos


   enquanto vida_sagrado > 0 faca

      // cenario da fada vs sagrado

      se personagem = fadaV entao
           fada_BossSagrado()
      fimse

      // cenario dragão VS SAGRADO
      se personagem = dragaoV entao
         dragao_BossSagrado()
      fimse

         // trevas vs SAGRADO

      se personagem = trevasV entao
         trevas_BossSagrado()
     fimse
        
 fimenquanto

        // dupla de fada e sagrado
            se personagem = fadaV entao
             se hpF <= 0 entao
               escreval("VOCÊ PERDEU")
                reunir_elementos <- 8
                fadaV <- 0
             senao
               escreval("VOCÊ VENCEU o SAGRADO")
               escreval("SAGRADO SE JUNTOU A CAUSA")
               torreSagrado <- 1
               sagradoV <- 3
               elementosDuplas <- fadaV + sagradoV
               duplaFS <- 2
               reunir_elementos <- reunir_elementos + 2
             fimse
            fimse

            // dupla de dragao e sagrado
            se personagem = dragaoV entao
            se hpD <= 0 entao
               escreval("VOCÊ PERDEU")
               reunir_elementos <- 8
               dragaoV <- 0
            senao
               escreval("VOCÊ VENCEU o SAGRADO")
               escreval("SAGRADO SE JUNTOU A CAUSA")
               torreSagrado <- 1
               sagradoV <- 3
               elementosDuplas <- dragaoV + sagradoV
               duplaDS <- 5
               reunir_elementos <- reunir_elementos + 2
            fimse
          fimse
          

            // dupla trevas e sagrado
            se personagem = trevasV entao
            se hpT <= 0 entao
               escreval("VOCÊ PERDEU")
               trevasV <- 0
               reunir_elementos <- 8
            senao
               escreval("VOCÊ VENCEU o SAGRADO")
               escreval("SAGRADO SE JUNTOU A CAUSA")
               torreSagrado <- 1
               sagradoV <- 3
               elementosDuplas <- trevasV + sagradoV
               duplaTS <- 6
               reunir_elementos <- reunir_elementos + 2
            fimse
          fimse
          
          escreval("PRONTO PRA IR NA PROXIMA TORRE???")
          escreval("Pressione ENTER para continuar...")
          leia(n)
fimprocedimento

procedimento fada_BossSagrado
       Var
         x, y, turno_perdido: inteiro
         
         Inicio

         enquanto vida_sagrado > 0 faca
          timer 3500
         limpatela()
         timer 0
           
         escreval("ART")

         escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)
         escreval()
         escreval()
         escreval("VIDA DO SAGRADO ", vida_sagrado)

         aleatorio 1,20
         escreval("SAGRADO ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se turno_perdido = 1 entao
            turno_perdido <- 0
            escreval("SAGRADO DORMINDO")

         senao
            se x >= 16 entao
               hpF <- hpF - ataqueBossS
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - FAZ O BOSS DORMIR           ||")
         escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 35           ||")
         escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueF)

            y <- 0
         escolha ataqueF

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y > 6 entao
               vida_sagrado <- vida_sagrado - ataqueFB
               escreval("FADA ACERTOU O ATAQUE")
            senao
               escreval("FADA ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 30 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  escreval("FADA ACERTOU O ATAQUE")
                  turno_perdido <- 1
                  manaF <- manaF - 30
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 30
               fimse
            fimse
         caso 3
            se hpF >= 100 entao
               escreval("FADA VIDA ESTA NO MÁXIMO")
            senao
               se manaF < 20 entao
                  escreval("FADA NÃO TEM MANA SUFICENTE")
               senao
                  escreval("FADA SE CUROU ")
                  hpF <- hpF + ataqueFV
                  manaF <- manaF - 20
               fimse
            fimse
         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 10 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  vida_sagrado <- vida_sagrado - ataqueFF
                  manaF <- manaF - 10
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 10
               fimse
            fimse
         fimescolha

            se hpF <= 0 entao
               vida_sagrado <- 0
               escolha_torre <- 0
               torreSagrado <- 1
               interrompa()
            fimse
      fimenquanto
         
fimprocedimento

procedimento dragao_BossSagrado
      Var
        x , y, escudoD : inteiro
        escama : real
        
      inicio
      
        escama <- ataqueBossS / 2
      
      
        enquanto vida_sagrado > 0 faca
         timer 3500
         limpatela()
         timer 0

            escreval("art")
         escreval("VIDA DO DRAGÃO" , hpD, " MANA DO DRAGÃO",manaD)
         escreval()
         escreval()
         escreval("VIDA DO SAGRADO ", vida_sagrado)

         aleatorio 1,20
         escreval("SAGRADO ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se escudoD = 1 entao
            escudoD <- 0
            ataqueBossS <- ataqueBossS - escama
         senao
            se x >= 16 entao
               hpD <- hpD - ataqueBossS
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 30       ||  2 - DANO NO BOSS - 50           ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 15 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - REDUZ O DANO DO BOSS    ||  4 - DANO NO BOSS - 65           ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            || ||       EM 50%                  ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 25 DE MANA        ||      GASTA 40 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueD)

             y <- 0
         escolha ataqueD

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off

            se y >= 11 entao
               escreval("DRAGÃO ACERTOU MORDIDA NO SAGRADO")
               vida_sagrado <- vida_sagrado - ataqueDB
            senao
               escreval("DRAGÃO ERROU A MORDIDA NO SAGRADO")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaD < 15 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               se y >= 11 entao
                  escreval("DRAGÃO ACERTOU BAFO DE FOGO NO SAGRADO")
                  manaD <- manaD - 15
                  vida_sagrado <- vida_sagrado - ataqueDF
               senao
                  escreval("DRAGÃO ERROU BAFO DE FOGO NO SAGRADO")
                  manaD <- manaD - 15
               fimse
            fimse
         caso 3
            se manaD < 25 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO AUMENTOU A DEFESA")
               escudoD <- 1
               manaD <- manaD - 25
            fimse
         caso 4
            se manaD < 40 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO USOU FURIA DRAGONICA")
               vida_sagrado <- vida_sagrado - ataqueDFD
               manaD <- manaD - 40
            fimse
         fimescolha


         se hpD <= 0 entao
            vida_sagrado <- 0
            escolha_torre <- 0
            torreSagrado <- 1
            interrompa()
         fimse
        
        fimenquanto
        
        
fimprocedimento


procedimento trevas_BossSagrado
       Var
          x, y : inteiro
          reduzT : inteiro
          resultado, porcentagem, ataqueBoss : real
        Inicio
        

        porcentagem <- 30

       resultado <- ataqueBoss * (porcentagem / 100)
        
          
          enquanto vida_sagrado > 0 faca
            timer 3500
         limpatela()
         timer 0

                escreval("ART")
            escreval("VIDA DAS TREVAS" , hpT, " MANA DAS TREVAS",manaT)
            escreval()
            escreval()
            escreval("VIDA DO SAGRADO ", vida_sagrado)

            aleatorio 1,20
            escreval("SAGRADO ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

            se reduzT > 0 entao
               ataqueBossS <- ataqueBossS - resultado
            senao
               se x >= 16 entao
                  hpT <- hpT - ataqueBossS
                  escreval("SAGRADO ACERTOU O ATAQUE")
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
               fimse
            fimse

         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
         escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 10      ||      DO BOSS EM 30%              ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueT)

              y <- 0
            escolha ataqueT

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_sagrado <- vida_sagrado - ataqueTB
                  escreval("TREVAS ACERTOU O ATAQUE")
               senao
                  escreval("TREVAS ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 25 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     manaT <- manaT - 25
                     vida_sagrado <- vida_sagrado - ataqueTF
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 25
                  fimse
               fimse
            caso 3
               aleatorio 1,20
               leia(y)
               aleatorio off
               se manaT < 20 entao
                  escreval("TREVAS NÃO TEM MANA SUFICIENTE")
               senao
                  se  y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_sagrado <- vida_sagrado - ataqueTBV
                     hpT <- hpT + ataqueTRV
                     reduzT <- reduzT + 1
                     manaT <- manaT - 20
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 20
                  fimse
               fimse

         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaT < 30 entao
               escreval("TREVAS NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("TREVAS ACERTOU O ATAQUE")
                  vida_sagrado <-  vida_sagrado - ataqueTRV
                  manaT <- manaT - 30
                  ataqueBossS <- ataqueBossS - resultado
               senao
                  escreval("TREVAS ERROU O ATAQUE")
                  manaT <- manaT - 30
               fimse
            fimse
         fimescolha

           se hpT <= 0 entao
            vida_sagrado <- 0
            escolha_torre <- 0
            torreSagrado <- 1
            interrompa()
         fimse
          
          fimenquanto
fimprocedimento

procedimento luta_sagrado_dupla
     Var
     n: inteiro

         inicio
            
enquanto vida_sagrado > 0 faca
                 //  FADA E DRAGÃO
        se duplaFD = 1 entao
           duplaFD_BossSagrado()
        fimse

               
               // FADA E TREVAS
        se duplaFT = 3 entao
           duplaFT_BossSagrado()
        fimse
               
               
               //  DRAGÃO E TREVAS
         se duplaDT = 4 entao
            duplaDT_BossSagrado()
         fimse
fimenquanto


       // DRAGÃO, TREVAS E SAGRADO
       timer 3500
         limpatela()
         timer 0
       
       
     se duplaDT = 4 entao
        se (hpD > 0) e (hpT > 0) entao
            escreval("A DUPLA DRAGÃO E TREVAS VENCENRAM O SAGRADO")
            escreval("O SAGRADO SE JUNTOU A CAUSA")
            trioDTS <- 1
            escolha_torre <- 0
            torreSagrado <- 1
            reunir_elementos <- reunir_elementos + 2
            elementosDuplas <- 0
            sagradoV <- 3
          senao
           se (hpD <= 0) e (hpT <= 0) entao
            reunir_elementos <- 8
             dragaoV <- 0
             trevasV <- 0
             escreval("art- todos morreram")
            // colocar um procedimento de imagem perdedor aqui
            senao
             se hpD <= 0 entao
              escreval("DRAGÃO MORREU NA LUTA")
              escreval("TREVAS VENCEU O SAGRADO")
              escreval("O SAGRADO SE JUNTOU A CAUSA")
              escolha_torre <- 0
              torreSagrado <- 1
              dragaoV <- 0
              sagradoV <- 3
              duplaTS <- 6
              duplaDT <- 0
              senao
               se hpT <= 0 entao
                escreval("TREVAS MORREU NA LUTA")
                escreval("DRAGÃO VENCEU O SAGRADO")
                escreval("O SAGRADO SE JUNTOU A CAUSA")
                escolha_torre <- 0
                torreSagrado <- 1
                trevasV <- 0
                sagradoV <- 3
                duplaDS <- 5
                duplaDT <- 0
               fimse
              fimse
             fimse
            fimse
           fimse
         // DRAGÃO  E FADA e SAGRADO
        se duplaFD = 1 entao
         se (hpD > 0) e (hpF > 0) entao
            escreval("A DUPLA DRAGÃO E FADA VENCENRAM O SAGRADO")
            escreval("O SAGRADO SE JUNTOU A CAUSA")
            trioSDF <- 1
            escolha_torre <- 0
            torreSagrado <- 1
            reunir_elementos <- reunir_elementos + 2
            elementosDuplas <- 0
            sagradoV <- 3
           senao
           se (hpF <= 0) e (hpD <= 0) entao
            reunir_elementos <- 8
            fadaV <- 0
            dragaoV <- 0
             escreval("art- todos morreram")
            // colocar um procedimento de imagem perdedor aqui
            senao
             se hpD <= 0 entao
              escreval("DRAGÃO MORREU NA LUTA")
              escreval("SAGRADO VENCEU O SAGRADO")
              escreval("O SAGRADO SE JUNTOU A CAUSA")
              escolha_torre <- 0
              torreSagrado <- 1
              reunir_elementos <- reunir_elementos + 2
               dragaoV <- 0
               duplaFS <- 2
               duplaFD <- 0
              senao
               se hpF <= 0 entao
                escreval("FADA MORREU NA LUTA")
                escreval("DRAGÃO VENCEU O SAGRADO")
                escreval("O SAGRADO SE JUNTOU A CAUSA")
                escolha_torre <- 0
                torreSagrado <- 1
                reunir_elementos <- reunir_elementos + 2
                fadaV <- 0
                duplaDS <- 5
                duplaFD <- 0
               fimse
              fimse
             fimse
            fimse
           fimse
         // FADA, TREVAS  E SAGRADO
        se duplaFT = 3 entao
         se (hpF > 0) e (hpT > 0) entao
            escreval("A DUPLA TREVAS E SAGRADO VENCENRAM O SAGRADO")
            trioTFS <- 1
            escolha_torre <- 0
            torreSagrado <- 1
            reunir_elementos <- reunir_elementos + 2
            elementosDuplas <- 0
            sagradoV <- 3
           senao
            se (hpF <= 0) e (hpT <= 0) entao
             reunir_elementos <- 8
             trevas <- 0
             fadaV <- 0
             escreval("art- todos morreram")
            // colocar um procedimento de imagem perdedor aqui
            senao
             se hpT <= 0 entao
              escreval("TREVAS MORREU NA LUTA")
              escreval("FADA VENCEU O SAGRADO")
              escolha_torre <- 0
              torreSagrado <- 1
              reunir_elementos <- reunir_elementos + 2
               trevasV <- 0
               duplaFS <- 2
               duplaFT <- 0
              senao
               se hpF < 0 entao
                escreval("FADA MORREU NA LUTA")
                escreval("TREVAS VENCEU O SAGRADO")
                escolha_torre <- 0
                torreSagrado <- 1
                reunir_elementos <- reunir_elementos + 2
                 fadaV <- 0
                 duplaTS <- 6
                 duplaFT <- 0
               fimse
              fimse
             fimse
            fimse
           fimse
        escreval("ESTA PRONTO PARA IR NA OUTRA TORRE")
        escreval("Pressione ENTER para continuar...")
        leia(n)
        
        
fimprocedimento

procedimento duplaFD_BossSagrado
       Var
        x, y, escudoD, turno_perdido : inteiro
        escama : real
        inicio

         escama <- ataqueBossS / 2
        
          enquanto vida_sagrado > 0 faca

          timer 3500
          limpatela()
          timer 0
          
    se hpF > 1 entao
      se vida_sagrado > 0 entao
      //luta
          escreval("ART")

         escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)
         escreval()
         escreval()
         escreval("VIDA DO SAGRADO ", vida_sagrado)

         aleatorio 1,20
         escreval("SAGRADO ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se turno_perdido = 2 entao
            turno_perdido <- turno_perdido - 1
            escreval("SAGRADO DORMINDO")
         senao
            se x >= 16 entao
               hpF <- hpF - ataqueBossS
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - FAZ O BOSS DORMIR           ||")
         escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 35           ||")
         escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueF)

            y <- 0
         escolha ataqueF

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y > 6 entao
               vida_sagrado <- vida_sagrado - ataqueFB
               escreval("FADA ACERTOU O ATAQUE")
            senao
               escreval("FADA ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 30 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  escreval("FADA ACERTOU O ATAQUE")
                  turno_perdido <- 3
                  manaF <- manaF - 30
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 30
               fimse
            fimse
         caso 3
            se hpF >= 100 entao
               escreval("SUA VIDA ESTA NO MÁXIMO")
               hpD <- hpD + ataqueFV
            senao
               se manaF < 20 entao
                  escreval("FADA NÃO TEM MANA SUFICENTE")
               senao
                  escreval("FADA CUROU A EQUIPE")
                  hpF <- hpF + ataqueFV
                  hpD <- hpD + ataqueFV
                  manaF <- manaF - 20
               fimse
            fimse
         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 10 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  vida_sagrado <- vida_sagrado - ataqueFF
                  manaF <- manaF - 10
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 10
               fimse
            fimse
      fimescolha
                   senao
                     interrompa()
                    fimse
                   fimse
       timer 3500
         limpatela()
         timer 0
      se hpD > 1 entao
       se vida_sagrado > 0 entao


               escreval("art")
               escreval("VIDA DO DRAGÃO" , hpD, " MANA DO DRAGÃO",manaD)
               escreval()
               escreval()
               escreval("VIDA DO SAGRADO ", vida_sagrado)

               aleatorio 1,20
               escreval("SAGRADO ATACANDO ROLANDO D20")
               leia(x)
               aleatorio off

           se turno_perdido = 3 entao
              turno_perdido <-  turno_perdido - 1
              escreval("SAGRADO DORMINDO")
             senao
               se escudoD = 1 entao
               escudoD <- 0
                  ataqueBossS <- ataqueBossS - escama
               senao
                  se x >= 16 entao
                     hpD <- hpD - ataqueBossS
                     escreval("SAGRADO ACERTOU O ATAQUE")
                  senao
                     escreval("SAGRADO ERROU O ATAQUE")
                  fimse
               fimse
              fimse
               escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 30       ||  2 - DANO NO BOSS - 50           ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 15 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - REDUZ O DANO DO BOSS    ||  4 - DANO NO BOSS - 65           ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            || ||       EM 50%                  ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 25 DE MANA        ||      GASTA 40 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueD)

                  y <- 0
               escolha ataqueD

               caso 1
                  aleatorio 1,20
                  leia(y)
                  aleatorio off

                  se y >= 11 entao
                     escreval("DRAGÃO ACERTOU MORDIDA NO SAGRADO")
                     vida_sagrado <- vida_sagrado - ataqueDB
                  senao
                     escreval("DRAGÃO ERROU A MORDIDA NO SAGRADO")
                  fimse
               caso 2
                  aleatorio 1,20
                  leia(y)
                  aleatorio off

                  se manaD < 15 entao
                     escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
                  senao
                     se y >= 11 entao
                        escreval("DRAGÃO ACERTOU BAFO DE FOGO NO SAGRADO")
                        manaD <- manaD - 15
                        vida_sagrado <- vida_sagrado - ataqueDF
                     senao
                        escreval("DRAGÃO ERROU BAFO DE FOGO NO SAGRADO")
                        manaD <- manaD - 15
                     fimse
                  fimse
               caso 3
                  se manaD < 25 entao
                     escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
                  senao
                     escreval("DRAGÃO AUMENTOU A DEFESA")
                     escudoD <- 1
                     manaD <- manaD - 25
                  fimse
               caso 4
                  se manaD < 40 entao
                     escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
                  senao
                     escreval("DRAGÃO USOU FURIA DRAGONICA")
                     vida_sagrado <- vida_sagrado - ataqueDFD
                     manaD <- manaD - 40
                  fimse
               fimescolha

                   senao
                     interrompa()
                    fimse
                   fimse
          
          
          fimenquanto
fimprocedimento

procedimento duplaFT_BossSagrado
   var
      x, y, turno_perdido, reduzT : inteiro
      resultado, porcentagem : real
    inicio
    
     porcentagem <- 30
     resultado <- ataqueBossS * (porcentagem / 100)


     enquanto vida_sagrado > 0 faca
       timer 3500
         limpatela()
         timer 0
     
       se hpF > 0 entao
          se vida_sagrado > 0 entao
                    // luta
           //
         escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)
         escreval()
         escreval()
         escreval("VIDA DO SAGRADO ", vida_sagrado)

         aleatorio 1,20
         escreval("SAGRADO ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se turno_perdido = 2 entao
            turno_perdido <- turno_perdido - 1
            escreval("SAGRADO DORMINDO")

         senao
            se x >= 16 entao
               hpF <- hpF - ataqueBossS
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - FAZ O BOSS DORMIR           ||")
         escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 35           ||")
         escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueF)

            y <- 0
         escolha ataqueF

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y > 6 entao
               vida_sagrado <- vida_sagrado - ataqueFB
               escreval("FADA ACERTOU O ATAQUE")
            senao
               escreval("FADA ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 30 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  escreval("FADA ACERTOU O ATAQUE")
                  turno_perdido <- 3
                  manaF <- manaF - 30
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 30
               fimse
            fimse
         caso 3
            se hpF >= 100 entao
               escreval("A VIDA DA FADA ESTA NO MÁXIMO")
               hpT <- hpT + ataqueFV
            senao
               se manaF < 20 entao
                  escreval("FADA NÃO TEM MANA SUFICENTE")
               senao
                  escreval("FADA SE CUROU")
                  hpF <- hpF + ataqueFV
                  hpT <- hpT + ataqueFV
                  manaF <- manaF - 20
               fimse
            fimse
      caso 4
         aleatorio 1,20
         leia(y)
         aleatorio off

         se manaF < 10 entao
            escreval("FADA NÃO TEM MANA SUFICENTE")
         senao
            se y > 6 entao
               vida_sagrado <- vida_sagrado - ataqueFF
               manaF <- manaF - 10
            senao
               escreval("FADA ERROU O ATAQUE")
               manaF <- manaF - 10
            fimse
         fimse
      fimescolha

            senao
             interrompa()
             fimse
         fimse

       timer 3500
         limpatela()
         timer 0
         
      se hpT > 0 entao
         se vida_sagrado > 0 entao

            escreval("ART")
            escreval("VIDA DAS TREVAS" , hpT, " MANA DAS TREVAS",manaT)
            escreval()
            escreval()
            escreval("VIDA DO SAGRADO ", vida_sagrado)

            aleatorio 1,20
            escreval("SAGRADO ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

          se turno_perdido = 3 entao
             turno_perdido <- turno_perdido - 1
             escreval("SAGRADO DORMINDO")
           senao
            se reduzT = 1 entao
               reduzT <- 0
               ataqueBoss <- ataqueBoss - resultado
            senao
               se x >= 16 entao
                  hpT <- hpT - ataqueBosss
                  escreval("SAGRADO ACERTOU O ATAQUE")
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
               fimse
            fimse
           fimse
            escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
         escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 10      ||      DO BOSS EM 30%              ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueT)

              y <- 0
            escolha ataqueT

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_sagrado <- vida_sagrado - ataqueTB
                  escreval("TREVAS ACERTOU O ATAQUE")
               senao
                  escreval("TREVAS ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 25 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     manaT <- manaT - 25
                     vida_sagrado <- vida_sagrado - ataqueTF
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 25
                  fimse
               fimse
            caso 3
               aleatorio 1,20
               leia(y)
               aleatorio off
               se manaT < 20 entao
                  escreval("TREVAS NÃO TEM MANA SUFICIENTE")
               senao
                  se  y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_sagrado <- vida_sagrado - ataqueTBV
                     hpT <- hpT + ataqueTRV
                     reduzT <- 1
                     manaT <- manaT - 20
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 20
                  fimse
               fimse

         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaT < 30 entao
               escreval("TREVAS NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("TREVAS ACERTOU O ATAQUE")
                  vida_sagrado <- vida_sagrado - ataqueTRV
                  manaT <- manaT - 30
                  ataqueBossS <- ataqueBossS - resultado
               senao
                  escreval("TREVAS ERROU O ATAQUE")
                  manaT <- manaT - 30
               fimse
            fimse
         fimescolha

          senao
           interrompa()
          fimse
      fimse
     
     
     fimenquanto
fimprocedimento


procedimento duplaDT_BossSagrado
      Var
        x , y : inteiro
        reduzT, escudoD : inteiro
        resultado, porcentagem , escama: real
      inicio

       porcentagem <- 30
       resultado <- ataqueBossS * (porcentagem / 100)


       enquanto vida_sagrado > 0 faca
       timer 3500
         limpatela()
         timer 0
       
       se hpD > 0 entao
       se vida_sagrado > 0 entao
              // luta

         escreval("art")
         escreval("VIDA DO DRAGÃO" , hpD, " MANA DO DRAGÃO",manaD)
         escreval()
         escreval()
         escreval("VIDA DO SAGRADO ", vida_sagrado)

         aleatorio 1,20
         escreval("SAGRADO ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se escudoD = 1 entao
            escudoD <- 0
            ataqueBossS <- ataqueBossS - escama
         senao
            se x >= 16 entao
               hpD <- hpD - ataqueBossS
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 30       ||  2 - DANO NO BOSS - 50           ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 15 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - REDUZ O DANO DO BOSS    ||  4 - DANO NO BOSS - 65           ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            || ||       EM 50%                  ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 25 DE MANA        ||      GASTA 40 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueD)

              y <- 0
         escolha ataqueD

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off

            se y >= 11 entao
               escreval("DRAGÃO ACERTOU MORDIDA NO SAGRADO")
               vida_sagrado <- vida_sagrado - ataqueDB
            senao
               escreval("DRAGÃO ERROU A MORDIDA NO SAGRADO")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaD < 15 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               se y >= 11 entao
                  escreval("DRAGÃO ACERTOU BAFO DE FOGO NO SAGRADO")
                  manaD <- manaD - 15
                  vida_sagrado <- vida_sagrado - ataqueDF
               senao
                  escreval("DRAGÃO ERROU BAFO DE FOGO NO SAGRADO")
                  manaD <- manaD - 15
               fimse
            fimse
         caso 3
            se manaD < 25 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO AUMENTOU A DEFESA")
               escudoD <- 1
               manaD <- manaD - 25
            fimse
         caso 4
            se manaD < 40 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO USOU FURIA DRAGONICA")
               vida_sagrado <- vida_sagrado - ataqueDFD
               manaD <- manaD - 40
            fimse
         fimescolha

               senao
                interrompa()
                fimse
            fimse
        timer 3500
         limpatela()
         timer 0
      se hpT > 0 entao
         se vida_sagrado > 0 entao
           escreval("ART")
            escreval("VIDA DAS TREVAS" , hpT, " MANA DAS TREVAS",manaT)
            escreval()
            escreval()
            escreval("VIDA DO SAGRADO ", vida_sagrado)

            aleatorio 1,20
            escreval("SAGRADO ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

            se reduzT = 1 entao
               reduzT <- 0
               ataqueBossS <- ataqueBossS - resultado
            senao
               se x >= 16 entao
                  hpT <- hpT - ataqueBossS
                  escreval("SAGRADO ACERTOU O ATAQUE")
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
               fimse
            fimse

            escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
         escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 10      ||      DO BOSS EM 30%              ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueT)


                y <- 0
            escolha ataqueT

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_sagrado <- vida_sagrado - ataqueTB
                  escreval("TREVAS ACERTOU O ATAQUE")
               senao
                  escreval("TREVAS ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 25 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     manaT <- manaT - 25
                     vida_sagrado <- vida_sagrado - ataqueTF
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 25
                  fimse
               fimse
            caso 3
               aleatorio 1,20
               leia(y)
               aleatorio off
               se manaT < 20 entao
                  escreval("TREVAS NÃO TEM MANA SUFICIENTE")
               senao
                  se  y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_sagrado <- vida_sagrado - ataqueTBV
                     hpT <- hpT + ataqueTRV
                     reduzT <- 1
                     manaT <- manaT - 20
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 20
                  fimse
               fimse

            caso 4
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 30 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_sagrado <- vida_sagrado - ataqueTRV
                     manaT <- manaT - 30
                     ataqueBoss <- ataqueBoss - resultado
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 30
                  fimse
               fimse
            fimescolha
          senao
              interrompa()
             fimse
            fimse
       
       
       fimenquanto
fimprocedimento

procedimento luta_sagrado_trio
   Var
     x, turno_perdido, y, n: inteiro
     escudoD, reduzT : inteiro
     escama, resultado, porcentagem : real
     inicio
        porcentagem <- 30
        resultado <- ataqueBossS * (porcentagem / 100)
        escama <- ataqueBossS / 2


        enquanto vida_sagrado > 0 faca
        
        timer 3500
         limpatela()
         timer 0
        
         se hpT > 0 entao
          se vida_sagrado > 0 entao
            escreval("ART")
            escreval("VIDA DAS TREVAS" , hpT, " MANA DAS TREVAS",manaT)
            escreval()
            escreval()
            escreval("VIDA DO SAGRADO ", vida_sagrado)

            aleatorio 1,20
            escreval("SAGRADO ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

         se turno_perdido = 4 entao
            turno_perdido <- turno_perdido - 1
           senao
            se reduzT = 1 entao
               reduzT <- 0
               ataqueBossS <- ataqueBossS - resultado
            senao
               se x >= 16 entao
                  hpT <- hpT - ataqueBossS
                  escreval("SAGRADO ACERTOU O ATAQUE")
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
               fimse
            fimse
           fimse
            escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
         escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 10      ||      DO BOSS EM 30%              ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueT)

                y <- 0
            escolha ataqueT

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_sagrado <- vida_sagrado - ataqueTB
                  escreval("TREVAS ACERTOU O ATAQUE")
               senao
                  escreval("TREVAS ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 25 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     manaT <- manaT - 25
                     vida_sagrado <- vida_sagrado - ataqueTF
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 25
                  fimse
               fimse
            caso 3
               aleatorio 1,20
               leia(y)
               aleatorio off
               se manaT < 20 entao
                  escreval("TREVAS NÃO TEM MANA SUFICIENTE")
               senao
                  se  y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_sagrado <- vida_sagrado - ataqueTBV
                     hpT <- hpT + ataqueTRV
                     reduzT <- 1
                     manaT <- manaT - 20
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 20
                  fimse
               fimse

            caso 4
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 30 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_sagrado <- vida_sagrado - ataqueTRV
                     manaT <- manaT - 30
                     ataqueBoss <- ataqueBoss - resultado
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 30
                  fimse
               fimse
            fimescolha
          senao
              interrompa()
             fimse
            fimse

         timer 3500
         limpatela()
         timer 0
            
     se hpD > 0 entao
       se vida_sagrado > 0 entao
              // luta

         escreval("art")
         escreval("VIDA DO DRAGÃO" , hpD, " MANA DO DRAGÃO",manaD)
         escreval()
         escreval()
         escreval("VIDA DO SAGRADO ", vida_sagrado)

         aleatorio 1,20
         escreval("SAGRADO ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off
       se turno_perdido = 3 entao
          turno_perdido <- turno_perdido - 1
          escreval("SAGRADO DORMINDO")
        senao
         se escudoD = 1 entao
            escudoD <- 0
            ataqueBossS <- ataqueBossS - escama
         senao
            se x >= 16 entao
               hpD <- hpD - ataqueBossS
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         fimse
        fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 40           ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 15 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - REDUZ O DANO DO BOSS    ||  4 - DANO NO BOSS - 60           ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            || ||       EM 50%                  ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 25 DE MANA        ||      GASTA 40 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueD)

              y <- 0
         escolha ataqueD

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off

            se y >= 11 entao
               escreval("DRAGÃO ACERTOU MORDIDA NO SAGRADO")
               vida_sagrado <- vida_sagrado - ataqueDB
            senao
               escreval("DRAGÃO ERROU A MORDIDA NO SAGRADO")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaD < 15 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               se y >= 11 entao
                  escreval("DRAGÃO ACERTOU BAFO DE FOGO NO SAGRADO")
                  manaD <- manaD - 15
                  vida_sagrado <- vida_sagrado - ataqueDF
               senao
                  escreval("DRAGÃO ERROU BAFO DE FOGO NO SAGRADO")
                  manaD <- manaD - 15
               fimse
            fimse
         caso 3
            se manaD < 25 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO AUMENTOU A DEFESA")
               escudoD <- 1
               manaD <- manaD - 25
            fimse
         caso 4
            se manaD < 40 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO USOU FURIA DRAGONICA")
               vida_sagrado <- vida_sagrado - ataqueDFD
               manaD <- manaD - 40
            fimse
         fimescolha

               senao
                interrompa()
                fimse
            fimse
            
            
           timer 3500
         limpatela()
         timer 0
            
            se hpF > 0 entao
          se vida_sagrado > 0 entao
                    // luta
           //
         escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)
         escreval()
         escreval()
         escreval("VIDA DO SAGRADO ", vida_sagrado)

         aleatorio 1,20
         escreval("SAGRADO ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se turno_perdido = 2 entao
            turno_perdido <- turno_perdido - 1
            escreval("SAGRADO DORMINDO")

         senao
            se x >= 16 entao
               hpF <- hpF - ataqueBossS
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 18       ||  2 - FAZ O BOSS DORMIR           ||")
         escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 30           ||")
         escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueF)

            y <- 0
         escolha ataqueF

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y > 6 entao
               vida_sagrado <- vida_sagrado - ataqueFB
               escreval("FADA ACERTOU O ATAQUE")
            senao
               escreval("FADA ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 30 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  escreval("FADA ACERTOU O ATAQUE")
                  turno_perdido <- 4
                  manaF <- manaF - 30
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 30
               fimse
            fimse
         caso 3
            se hpF >= 100 entao
               escreval("A VIDA DA FADA ESTA NO MÁXIMO")
            senao
               se manaF < 20 entao
                  escreval("FADA NÃO TEM MANA SUFICENTE")
               senao
                  escreval("FADA SE CUROU")
                  hpF <- hpF + ataqueFV
                  manaF <- manaF - 20
               fimse
            fimse
         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 10 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  vida_sagrado <- vida_sagrado - ataqueFF
                  manaF <- manaF - 10
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 10
               fimse
            fimse
      fimescolha

            senao
             interrompa()
             fimse
         fimse

        fimenquanto
        
         timer 3500
         limpatela()
         timer 0
        
        // verificar se algum elemento morreu
        se (hpT > 0) e (hpF > 0) e (hpD > 0) entao
             sagradoV <- 3
             quatroElementos <- 1
             reunir_elementos <- reunir_elementos + 2
            senao
             se (hpT <= 0) e (hpS <= 0) e (hpD <= 0) entao
                 reunir_elementos <- 8
                 trevasV <- 0
                 sagradoV <- 0
                 dragaoV <- 0
                 escreval("TODOS PERDERAM")
                 // procedimento perdeu art
               senao
                se (hpT <= 0) e (hpF <= 0) entao
                  escreval("TREVAS MORREU EM BATALHA")
                  escreval("FADA MORREU EM BATALHA")
                  escreval("DRAGÃO VENCEU CONTRA O SAGRADO")
                  sagradoV <- 3
                  reunir_elementos <- reunir_elementos + 2
                  trevasV <- 0
                  fadaV <- 0
                  senao
                   se (hpT <= 0) e (hpD <= 0) entao
                     escreval("TREVAS MORREU EM BATALHA")
                     escreval("DRAGÃO MORREU EM BATALHA")
                     escreval("FADA VENCEU CONTRA O SAGRADO")
                     sagradoV <- 3
                     reunir_elementos <- reunir_elementos + 2
                     trevasV <- 0
                     dragaoV <- 0
                     senao
                      se (hpF <= 0) e (hpD <= 0) entao
                         escreval("FADA MORREU EM BATALHA")
                         escreval("DRAGÃO MORREU EM BATALHA")
                         escreval("TREVAS VENCEU CONTRA A FADA")
                         sagradoV <- 3
                         reunir_elementos <- reunir_elementos + 2
                         fadaV <- 0
                         dragaoV <- 0
                       senao
                        se hpT <= 0 entao
                           escreval("TREVAS MORREU EM BATALHA")
                           escreval("DRAGÃO E SAGRADO VENCERAM CONTRA O SAGRADO")
                           sagradoV <- 3
                           reunir_elementos <- reunir_elementos + 2
                           trevasV <- 0
                           senao
                            se hpF <= 0 entao
                              escreval("FADA MORREU EM BATALHA")
                              escreval("DRAGÃO E TREVAS VENCERAM CONTRA O SAGRADO")
                              sagradoV <- 3
                              reunir_elementos <- reunir_elementos + 2
                              fadaV <- 0
                              senao
                               se hpD <= 0 entao
                                 escreval("DRAGÃO MORREU EM BATALHA")
                                 escreval("SAGRADO E TREVAS VENCERAM CONTRA O SAGRADO")
                                 sagradoV <- 3
                                 reunir_elementos <- reunir_elementos + 2
                                 dragaoV <- 0
                                 fimse
                               fimse
                            fimse
                        fimse
                      fimse
                   fimse
                fimse
            fimse
        escreval("PREPARADO PARA ENFENTRAR O BOSS FINAL")
        escreval("Pressione ENTER para continuar...")
        leia(n)
fimprocedimento


procedimento ir_embora_sagrado
   var
      y : inteiro
      x : caractere
   inicio
      limpatela()
      escreval("=== TENTANDO FUGIR ===")
      escreval("Voce tenta sair da sala branca e silenciosa...")
      escreval("O Sagrado apenas observa, como se ja soubesse seu destino.")
      escreval("Role um D20 para tentar fugir (precisa de 11+)!")
      escreval("Pressione ENTER para rolar...")
      leia(x)
      aleatorio 1,20
      leia(y)
      aleatorio off
      escreval("Voce tirou: ", y, " no D20!")
      se y >= 11 entao
         escreval("CONSEGUIU FUGIR!")
         escreval("A porta aparece e voce sai.")
         escreval("(Torre ignorada - Sagrado nao foi recrutado)")
         torreSagrado <- 1
         escolha_torre <- escolha_torre + 2
      senao
         escreval("A sala nao tem saida que voce possa ver...")
         escreval("SAGRADO: 'Ha algo que voce precisa responder antes de sair.'")
         timer 1500
         timer 0
         historia_conversar_sagrado()
      fimse
      escreval("Pressione ENTER para continuar...")
      leia(x)
fimprocedimento


// historia trevas

procedimento trevas
inicio

   escreval("           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ")
   escreval("      @@@@@@@@@                        @@@@@@@@@   ")
   escreval("     @@@@@                                  @@@@@   ")
   escreval("   @@@@@@                                    @@@@@@ ")
   escreval("   @@@@                                        @@@@   ")
   escreval(" @@@@@                @@@@@@@@@@                @@@@@ ")
   escreval("@@@@             @@@@@@@@     @@@@@@@             @@@@ ")
   escreval("@@@@            @@                  @@            @@@@ ")
   escreval("@@@        @@@  @@ @@     @@     @@  @@  @@        @@@  ")
   escreval("@@@        @@@@@@  @@@@   @@   @@@@  @@@@@@        @@@  ")
   escreval("@@@        @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@        @@@  ")
   escreval("@@@           @@@                    @@@           @@@  ")
   escreval("@@@             @@@@@@@        @@@@@@@             @@@  ")
   escreval("@@@  @@@@@@@@@@@@@    @@@@@@@@@@  @@@@@@@@@@@@@@@  @@@  ")
   escreval("@@@  @@@@   @@@@@@@@@@         @@@@@@@@@@@   @@@@@ @@@  ")
   escreval("@@@ @@@             @@@        @@@             @@@ @@@  ")
   escreval("@@@ @@@              @@@      @@@@             @@@ @@@  ")
   escreval("@@@ @@   @@@@@        @@@     @@        @@@@@   @@ @@@  ")
   escreval("@@@ @@   @@@@@@@@@@@              @@@@@@@@@@@   @@ @@@  ")
   escreval("@@@ @@   @@@@@@@@@@@              @@@@@@@@@@@   @@ @@@  ")
   escreval("@@@ @@   @@      @@@              @@@      @@   @@ @@@  ")
   escreval("@@@ @@   @@      @@@       @      @@@      @@   @@ @@@  ")
   escreval(" @@@@@   @@@@@@@@@@@      @@@     @@@@@@@@@@@   @@@@@   ")
   escreval(" @@@                     @@@@@                    @@@  ")
   escreval(" @@@                    @@   @@                   @@@  ")
   escreval(" @@@              @@              @@              @@@  ")
   escreval(" @@@              @@              @@              @@@  ")
   escreval(" @@@@            @@@              @@@            @@@@  ")
   escreval("  @@@@@      @@@@@@                @@@@@@      @@@@@   ")
   escreval("      @@@@@@@@                          @@@@@@@@       ")
   escreval("      @@@  @@@                          @@@  @@@   ")
   escreval("      @@@  @@@@                       @@@@@  @@@   ")
   escreval("      @@@   @@@@ @ @ @ @ @ @ @ @ @ @ @ @@@   @@@   ")
   escreval("      @@@@  @ @ @ @ @ @ @ @ @ @ @ @ @ @     @@@@   ")
   escreval("      @@@@   @ @ @ @ @ @ @ @ @ @ @ @ @      @@@@   ")
   escreval("        @@@@                              @@@@     ")
   escreval("         @@@                             @@@@   ")
   escreval("         @@@@                            @@@@   ")
   escreval("           @@@@@@@                  @@@@@@@     ")
   escreval("               @@@@@              @@@@@@       ")
   escreval("                @@@@@@@@@@@@@@@@@@@@@@        ")
   escreval("                     @@@@@@@@@@@@@            ")

   escreval()

   escreval("VOCÊ TEM CERTEZA DE ESCOLHER O ELEMENTO TREVAS?")
   escreval ("1 - SIM || 2 - NÃO")
   leia(escolhaD)
   limpatela
   se escolhaD = "1" entao

      escreval("VC ESCOLHEU O ELEMENTO DAS TREVAS")
      escreval("-------------------------------------------")
      escreval("Agora você irá trilhar o caminho das torres para chegar ao desafio final, boa sorte...")
      escreval("-------------------------------------------")
      trevasV <- 4
      personagem <- trevasV

      timer 2500
      limpatela()
      timer 0


      escreval("Você deseja ver o status da sua classe?")
      escreval ("1 - SIM || 2 - NÃO")
      leia(status)

      se status = "1" entao
         elemento <- 0
         mostrar_Status_T()
         torre()
      senao
         torre()

         elemento <- 0
      fimse

   senao
      elemento <- 1
      limpatela()
   fimse

fimprocedimento



procedimento cenario_trevas
Var
   escolha_acao : inteiro
inicio
   limpatela

   escreval(" ----------------------------------------------------------------------------------------------------------------------------  ")
escreval(" ----------------------------------------------------------------------------------------------------------------------------  ")
escreval(" ----------------------------------------------------------------------------------------------------------------------------  ")
escreval(" ----------------------------------------------------------------------------------------------------------------------------  ")
escreval(" ----------------------------------------------------------------------------------------------------------------------------  ")
escreval(" --------------------------------------------------------------------------------*#####=-------------------------------------  ")
escreval(" --------------------------------------------------------------------------------######=-------------------------------------  ")
escreval(" ------------------------------=##+#*=---------------------------------------=@@@######%@@*----------------------------------  ")
escreval(" --------------------=%%*@%%-----=+------------------------------------------=%%%######%%%*----------------------------------  ")
escreval(" -----------=-==-------=#=------------------------------------------------=%%%%%%++++++#%%%%%*-------------------------------  ")
escreval(" ---------=+=%++=------------++-=*=------------------------------------=+++######++++++*#####*+++----------------------------  ")
escreval(" ------------------=%*#%#+-=%=+@%-##-----------------------------------+%%%++++++++++++++++++*%%%----------------------------  ")
escreval(" ---------------------=-------=+------------------------------#########%%%#++++++++++++++++++*%%%#########+------------------  ")
escreval(" -------------------------------------------------------------%%%%%%%%%%%%%++++++++++++++++++*%%%%%%%%%%%%+------------------  ")
escreval(" ---------------------------------------------------=%%%%%%%%%%%%*******#########++++++##########******%%%%%%%%%%%%#---------  ")
escreval(" ---------------------------------------------------=###########%*******#########++++++*#########******###%%%%%%%%#*---------  ")
escreval(" ---------------------------------------------------=************################++++++*###############************+---------  ")
escreval(" ------------------------------------------------+**#############################++++++*############################**#------  ")
escreval(" ------------------------------------------------+###############################++++++*###############################------  ")
escreval(" ------------------------------------------------+#####################################################################------  ")
escreval(" ------------------------------------------=-----*#########################################################%%%%%%%%%%%%------  ")
escreval(" -----------------------------------------+*+=----------------%%%%%%%%%*------------------------=%%%%%%%%%+------------------  ")
escreval(" ----------------------------------------=****+---------------#%%%%%%##+------------------------=%%%%%%#%#+------------------  ")
escreval(" ----------------------------------------+##***=--------------*##******=------------------------=###******=------------------  ")
escreval(" ---------------------------------------*%%##*++=-------------*##******=------------------------=###******=------------------  ")
escreval(" -------------------------=++++++===----*%%%##**+=------------*##******=------------------------=###******=------------------  ")
escreval(" -----------------------=*@@@@@@@@@+---=#%@@@%##**+-----------*##******=------------------------=###******=------------------  ")
escreval(" ---------------------=+%*-------*%+---*%%@@@@@##**=----------*##******=------------------------=###******=------------------  ")
escreval(" ---------------------------------+*--*%%@@@@@@@@%#*+---------*##******=------------------------=###******=------------------  ")
escreval(" ---------------------------------+*--*%%@@@@@@@@@@#+---------*##******=------------------------=###******=------------------  ")
escreval(" ---------------------------------+*--=#@@@@@@@@@@@%+---------*##******=------------------------=###******=------------------  ")
escreval(" --------------------------------=*#%###%@@@@@@@@@@%+---------*##******=------------------------=###******=------------------ ")
escreval(" --------------------------------=*@@@%%@@@@@@@@@@@#*=--------*##******=------------------------=###******=------------------ ")
escreval(" ---------------------------------+@@@@@@@@@@@@@@%%##=--------*##******=------------------------=###******=------------------ ")
escreval(" ---------------------------------+@@@@@@@@@@@@@@%%##=--------*##******=------------------------=###******=------------------ ")
escreval(" ---------------------------------+*==#@@@@@@@@@@%%##=--------*##******=------------------------=###******=#%%#*------------- ")
escreval(" ---------------------------------+*--*@@@@@@@@@%%%##=--------*##******=------------------------=###******=#%##*-----====---- ")
escreval(" ---------------------------------+*--*@@@@@@@@%%%###=--------*##******=------------------------=###***%%%@%%#######-#%##---- ")
escreval(" ---------------------------------+*--*@@@@@@@@%%%##*=--------*##******=------------------------=###***%%###########-#%##---- ")
escreval(" -------------=*#***+=------------+*--*@@@@@@@@%%%##%+--------*##******=------------------------=###***%%#*#####*###%%%#####+ ")
escreval(" -----------=#%###*****+--+***+---+*--*@%%@@@@@@@@@@@+--------*##******=------------------------=###******=#%%%*-*@%########+ ")
escreval(" ------=#*--=#%%####***+*%###***+=+*--*@%@@@@@@%##%*+=--------*##******=------------------------=###******=#%##+-----#%%%---- ")
escreval(" ----=*#%#++=#%%####***+*%####**+=+*--*@@@@@@@@%##%+----------*##******=------------------------=###******=#%##+-----#%##---- ")
escreval(" ----=**##++=#%%####***+*%####**+=+*--*@@@@@@@@@@%@@*------#########******+------------------=#########****%%##+-----#%##---- ")
escreval(" ------=%#--=#%%####***+*%####**+=+*-=#@@@@@@@@@@@@@@+-----#########******+------------------=#########****%%##+-----#%##---- ")
escreval(" --+###%@@###%%%%%##***+*%%%##***=+*=#%%@@@@@@@@@@@@@%*=###################**+------------+############****%%###+----#%##---- ")
escreval(" --+@@@@@@@@@%%%%%%#***+#%%%%%***=+**@@@@@@@@@@@@@@@@@@####################**+------------+#############***%%###+----#%##---- ")
escreval(" %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ")
escreval(" %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ")
escreval(" %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ")
escreval(" %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ")
escreval(" %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ")

timer 1000

limpatela

timer 0

escreval("          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                      ")
escreval("      @@@@@                                @@@@                   ")
escreval("     @@@@@                                  @@@@@      YOU WILL  ")
escreval("   @@@@@@                                    @@@@@@    DIE HERE!!!     ")
escreval("   @@@@                                        @@@@               ")
escreval(" @@@@@                @@@@@@@@@@                @@@@@             ")
escreval("@@@@             @@@@@@@@ @@ @@@@@@@             @@@@             ")
escreval("@@@@            @@ @@@@@@@@@@@@@@@@ @@            @@@@            ")
escreval("@@@           @@@ @@              @@ @@@           @@@            ")
escreval("@@@        @@@@@@      @@@@          @@@@@@        @@@  ")
escreval("@@@        @@@@@@     @ @  @         @@@@@@        @@@  ")
escreval("@@@           @@@      @@@@          @@@           @@@  ")
escreval("@@@             @@@@@@@        @@@@@@@             @@@  ")
escreval("@@@  @@@@@@@@@@@@@    @@@@@@@@@@  @@@@@@@@@@@@@@@  @@@  ")
escreval("@@@  @@@@   @@@@@@@@@@         @@@@@@@@@@@   @@@@@ @@@  ")
escreval("@@@ @@@             @@@        @@@             @@@ @@@  ")
escreval("@@@ @@@              @@@      @@@@             @@@ @@@  ")
escreval("@@@ @@   @@@@@        @@@     @@        @@@@@   @@ @@@  ")
escreval("@@@ @@   @@@@@@@@@@@              @@@@@@@@@@@   @@ @@@  ")
escreval("@@@ @@   @@@@@@@@@@@              @@@@@@@@@@@   @@ @@@  ")
escreval("@@@ @@   @@      @@@              @@@      @@   @@ @@@  ")
escreval("@@@ @@   @@      @@@       @      @@@      @@   @@ @@@  ")
escreval(" @@@@@   @@@@@@@@@@@      @@@     @@@@@@@@@@@   @@@@@   ")
escreval(" @@@                     @@@@@                    @@@  ")
escreval(" @@@                    @@   @@                   @@@  ")
escreval(" @@@              @@              @@              @@@  ")
escreval(" @@@              @@              @@              @@@  ")
escreval(" @@@@            @@@              @@@            @@@@  ")
escreval("  @@@@@      @@@@@@                @@@@@@      @@@@@   ")
escreval("      @@@@@@@@                          @@@@@@@@       ")
escreval("      @@@  @@@   @ @ @ @ @ @ @ @ @ @ @  @@@  @@@   ")
escreval("      @@@  @@@@ @@@@@@@@@@@@@@@@@@@@@@@ @@@@ @@@   ")
escreval("      @@@   @@@@                       @@@@  @@@   ")
escreval("      @@@@  @@                           @@ @@@@   ")
escreval("      @@@@  @@                           @@ @@@@   ")
escreval("        @@@@ @@ @@@@@@@@@@@@@@@@@@@@@@@ @@ @@@@     ")
escreval("         @@@  @@ @ @ @ @ @ @ @ @ @ @ @ @@ @@@@   ")
escreval("         @@@@                            @@@@   ")
escreval("           @@@@@@@                  @@@@@@@     ")
escreval("               @@@@@              @@@@@@       ")
escreval("                @@@@@@@@@@@@@@@@@@@@@@        ")
escreval("                     @@@@@@@@@@@@@            ")


escreval("-----------------------------------------------------------------------------------------------------")
escreval("-----------------------------------------------------------------------------------------------------")
escreval("Um frio cortante preenche o ar. No centro do salão,")
escreval("uma figura esqueletica sentada, impassível.")
escreval("Seus olhos vazios pousam em você.")
escreval("")
escreval("TREVAS: 'Voce chegou... interessante.'")
escreval("")
escreval("O QUE VOCE DECIDE FAZER?")
escreval("1- CONVERSAR COM TREVAS || 2- ATACAR || 3- TENTAR IR EMBORA")
leia(escolha_acao)

   escolha escolha_acao
   caso 1
      historia_conversar_trevas()
   caso 2
        se trioSDF <> 0 entao
           trio_trevas_luta()
         senao
          se elementosDuplas <> 0 entao
             luta_dupla_trevas()
          senao
            luta_trevas()
         fimse
        fimse
   caso 3
      ir_embora_trevas()
   fimescolha

fimprocedimento



procedimento historia_conversar_trevas
    Var
      dado : inteiro
      x : caractere
   Inicio
      limpatela()
      escreval("=== CONVERSA COM TREVAS ===")
      escreval("Um salao frio. Uma figura esqueletica sentada no centro.")
      escreval("Ela fala pouco, mas seus olhos vazios observam tudo.")
      escreval("")
      escreval("TREVAS: 'Voce quer me usar... ou realmente tem um proposito?'")
      escreval("")
      escreval("Voce tenta demonstrar que seu proposito e real...")
      escreval("Role o D20! Tire de 11+ para convencer. Menos que isso: batalha!")
      escreval("Pressione ENTER para rolar...")
      leia(x)

      aleatorio 1,20
      leia(dado)
      aleatorio off
      escreval("Voce tirou: ", dado, " no D20!")

     se personagem = fadaV entao
         dado <- dado + 5
     fimse
         
      se dado >= 11 entao
         escreval("")
         escreval("TREVAS: '...Proposito real. Raro.'")
         escreval("TREVAS: 'Tudo bem. Mas lembre-se... eu ja te analisei.'")
         escreval("")
         escreval("SUCESSO! Trevas se juntou a causa!")
         torreTrevas <- 1
         trevasV <- 4
         reunir_elementos <- reunir_elementos + 2
         verificar_trevas()
      senao
         escreval("TREVAS: 'Sua intencao e vazia. Prove com acao.'")
         escreval("FALHOU! Trevas te envolve em ilusoes. Prepare-se para lutar!")
         timer 1500
         timer 0
               se trioSDF <> 0 entao
                  luta_trio_trevas()
                 senao
                   se elementosDuplas <> 0 entao
                     luta_dupla_trevas()
                    senao
                   luta_trevas()
               fimse
              fimse

     fimse
     
      escreval("Pressione ENTER para continuar...")
      leia(x)
fimprocedimento

procedimento verificar_trevas
        Inicio

       se elementosDuplas = 0 entao
        se personagem = fadaV entao
           duplaFT <- 3
           elementosDuplas <- 1
        fimse

        se personagem = dragaoV entao
            duplaDT <- 4
            elementosDuplas <- 1
        fimse

        se personagem = sagradoV entao
            duplaTS <- 6
            elementosDuplas <- 1
        fimse
       fimse

          se elementosDuplas <> 0 entao
              se duplaFD = 1 entao
                 trioFDT <- 1
              fimse

              se duplaDS = 4 entao
                 trioDTS <- 1
              fimse

              se duplaFS = 2 entao
                 trioTFS <- 1
              fimse
          fimse

       se trioSDF <> 0 entao
          quatroElementos <- 1
       fimse
fimprocedimento


procedimento luta_trevas
   Var
       n: inteiro

      inicio
   
   enquanto vida_trevas > 0 faca

      // cenario da fada vs trevas

      se personagem = fadaV entao
         fada_Bosstrevas()
      fimse

   //  dragão VS TREVAS
   
        se personagem = dragaoV entao
           dragao_Bosstrevas()
      fimse

   // sagrado vs TREVAS
        se personagem = sagradoV entao
           sagrado_Bosstrevas()
        fimse
      
      
fimenquanto

          // fada e trevas dupla
          se personagem = fadaV entao
            se hpF <= 0 entao
               escreval("VOCÊ PERDEU")
               reunir_elementos <- 8
               fadaV <- 0
            senao
               escreval("VOCÊ VENCEU AS TREVAS COM A FADA")
               escreval("TREVAS SE JUNTOU A CAUSA")
               torreTrevas <- 1
               trevasV <- 4
               elementosDuplas <- fadaV + trevasV
               duplaFT <- 3
               reunir_elementos <- reunir_elementos + 2
            fimse
          fimse

          // DRAGÃO E TREVAS DUPLA
            se personagem = dragaoV entao
             se hpD <= 0 entao
                escreval("VOCÊ PERDEU")
                reunir_elementos <- 8
                dragaoV <- 0
            senao
               escreval("VOCÊ VENCEU AS TREVAS COM O DRAGÃO")
               escreval("TREVAS SE JUNTOU A CAUSA")
               torreTrevas <- 1
               trevasV <- 4
               elementosDuplas <- dragaoV + trevasV
               duplaDT <- 4
               reunir_elementos <- reunir_elementos + 2
            fimse
          fimse

          // SAGRADO E TREVAS DUPLA
            se personagem = sagradoV entao
               se hpS <= 0 entao
                escreval("VOCÊ PERDEU")
                reunir_elementos <- 8
                sagradoV <- 0
            senao
               escreval("VOCÊ VENCEU AS TREVAS COM O SAGRADO")
               escreval("TREVAS SE JUNTOU A CAUSA")
               torreTrevas <- 1
               trevasV <- 4
               elementosDuplas <- sagradoV + trevasV
               duplaTS <- 6
               reunir_elementos <- reunir_elementos + 2
            fimse
          fimse

          //
          escreval("PRONTO PARA IR NA OUTRA TORRE")
          escreval("Pressione ENTER para continuar...")
          leia(n)
fimprocedimento


procedimento fada_Bosstrevas
        Var
          x, y, turno_perdido : inteiro
          
          Inicio

           enquanto vida_trevas > 0 faca
           
            timer 3500
         limpatela()
         timer 0
           
                 escreval("ART")

               escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)
               escreval()
               escreval()
               escreval("VIDA DAS TREVAS ", vida_trevas)

               aleatorio 1,20
               escreval("TREVAS ATACANDO ROLANDO D20")
               leia(x)
               aleatorio off


               se turno_perdido = 1 entao
                  turno_perdido <- 0
                  escreval("TREVAS DORMINDO")
               senao
                  se x >= 16 entao
                     hpF <- hpF - ataqueBossT
                     escreval("TREVAS ACERTOU O ATAQUE")
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                  fimse
               fimse
               escreval()
               escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
               escreval()
               escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
               escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
               escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - FAZ O BOSS DORMIR           ||")
               escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
               escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
               escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
               escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
               escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 35           ||")
               escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
               escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
               escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
               escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
               leia(ataqueF)
                  y <- 0
               escolha ataqueF

               caso 1
                  aleatorio 1,20
                  leia(y)
                  aleatorio off
                  se y > 6 entao
                     vida_trevas <- vida_trevas - ataqueFB
                     escreval("FADA ACERTOU O ATAQUE")
                  senao
                     escreval("FADA ERROU O ATAQUE")
                  fimse
               caso 2
                  aleatorio 1,20
                  leia(y)
                  aleatorio off

                  se manaF < 30 entao
                     escreval("FADA NÃO TEM MANA SUFICENTE")
                  senao
                     se y > 6 entao
                        escreval("FADA ACERTOU O ATAQUE")
                        turno_perdido <- 1
                        manaF <- manaF - 30
                     senao
                        escreval("FADA ERROU O ATAQUE")
                        manaF <- manaF - 30
                     fimse
                  fimse
               caso 3
                  se hpF >= 100 entao
                     escreval("SUA VIDA ESTA NO MÁXIMO")
                  senao
                     se manaF < 20 entao
                        escreval("FADA NÃO TEM MANA SUFICENTE")
                     senao
                        escreval("FADA ACERTOU O ATAQUE")
                        hpF <- hpF + ataqueFV
                        manaF <- manaF - 20
                     fimse
                  fimse
               caso 4
                  aleatorio 1,20
                  leia(y)
                  aleatorio off

                  se manaF < 10 entao
                     escreval("FADA NÃO TEM MANA SUFICENTE")
                  senao
                     se y > 6 entao
                        vida_trevas <- vida_trevas - ataqueFF
                        manaF <- manaF - 10
                     senao
                        escreval("FADA ERROU O ATAQUE")
                        manaF <- manaF - 10
                     fimse
                  fimse
            fimescolha

            se hpF <= 0 entao
               vida_trevas <- 0
               escolha_torre <- 0
               torreTrevas <- 1
            fimse
           
           fimenquanto
fimprocedimento

procedimento sagrado_Bosstrevas
      Var
        x, y, elemento_escolhido : inteiro
      
        Inicio
        
         enquanto vida_trevas > 0 faca
           timer 3500
         limpatela()
         timer 0
         
              escreval("VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS)
         escreval("VIDA DO TREVAS", vida_trevas)

         escreval("ART")

         escreval()
         escreval()

         aleatorio 1,20
         escreval("TREVAS ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

            se x <= 16 entao
               escreval("TREVAS ERROU O ATAQUE")
            senao
               se elemento_escolhido = 1 entao
                 elemento_escolhido <- 0
                 escreval("O ATAQUE DAS TREVAS FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
                senao
                 hpS <- hpS - ataqueBossT
               escreval("TREVAS ACERTOU O ATAQUE")
            fimse
           fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)
            y <- 0
         escolha ataqueS

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 11 entao
               vida_trevas <- vida_trevas - ataqueSB
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("SAGRADO ACERTOU O ATAQUE")
                  vida_trevas <- vida_trevas - ataqueSF
                  manaS <- manaS - 25
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
                  manaS <- manaS - 25
               fimse
            fimse
         caso 3
            se manaS < 20 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
              se hpS >= 130 entao
                  escreval("VIDA DO SAGRADO NO MÁXIMO")
                  escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                  ataqueSB <- ataqueSB + 6
                  ataqueSF <- ataqueSF + 12
                  manaS <- manaS - 30
                senao
                 escreval("VOCÊ SE CUROU COM A HABILIDADE E")
                 escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                 ataqueSB <- ataqueSB + 6
                 ataqueSF <- ataqueSF + 12
                 hpS <- hpS + ataqueSV
                 manaS <- manaS - 30
              fimse
           fimse
         caso 4
            se manaT < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               escreval("SAGRADO USOU BLOQUEIO CONTRA O ATAQUE DAS TREVAS")
               elemento_escolhido <- 1
            fimse

         fimescolha

         se hpS <= 0 entao
            vida_sagrado <- 0
            escolha_torre <- 0
            torreTrevas <- 1
         fimse
         
         fimenquanto
fimprocedimento

procedimento dragao_Bosstrevas
      Var
        x, y, escudoD : inteiro
        escama : real
       Inicio
       
         escama <- ataqueBossT / 2
       enquanto vida_trevas > 0 faca
        timer 3500
        limpatela()
        timer 0

         escreval("             VIDA DAS TREVAS:",vida_trevas,"                                     @@@@@@@@@@@@@@            ")
         escreval("                                                                   @@@@            @@@@         ")
         escreval("                                                                 @@@        @@@@      @@@       ")
         escreval("                                                                @@         @  @ @       @@      ")
         escreval("                                                               @@  @@@@     @@@@   @@@@  @@     ")
         escreval("                                                               @@ @    @@@@      @@@   @ @@     ")
         escreval("                                                               @@ @       @     @      @ @@     ")
         escreval("           @@     @@                                           @@  @ @              @ @  @@     ")
         escreval("           @ @@   @ @@                                         @@  @ @@@@@      @@@@@ @  @@     ")
         escreval("     @     @@ @@   @ @@                                        @@  @ @@  @      @  @@ @  @@     ")
         escreval("    @ @     @@ @@@@@ @@                                        @@ @@ @@@@@      @@@@@ @@ @@     ")
         escreval(" @@@@@@      @        @                  @                     @@@@         @@         @@@@     ")
         escreval("@@@@  @      @         @                @ @                    @@@@        @@@@        @@ @     ")
         escreval("@@ @  @     @           @              @@@@@                   @ @@     @       @      @@ @     ")
         escreval(" @  @ @@    @           @            @@@ @@@@@                 @ @@    @         @     @@ @     ")
         escreval("  @  @ @@    @         @           @@@   @@  @@@               @@  @@@@           @@@@@  @@     ")
         escreval("   @  @ @@    @       @        @@@     @@  @      @@@@@          @@ @@@@@@@@@@@@@@@@@  @@       ")
         escreval("  @   @   @@@ @       @     @@@@      @@   @@         @@@@@       @@ @@@@@@@@@@@@@@@  @@        ")
         escreval(" @   @      @@@       @          @@@    @@@@   @@@@             @@ @@@@ I I I I I @@@@  @@      ")
         escreval("   @  @  @@   @       @  @@@@       @@@     @             @@@      @@@ I I I I I I  @@@         ")
         escreval("@   @        @       @@@@@         @@       @               @@       @@@           @@@          ")
         escreval("    @       @                     @@        @@               @@       @@@        @@@            ")
         escreval("    @@@@@@@@@                    @@          @                 @@  xxxxx@@@@@@@@@@xxxx          ")
         escreval("    @ @   @          @@@@@       @           @@                 @ xxxxxxxxxxxxxxxxxxxxx         ")
         escreval("    @    @              @@@@    @@            @                  @ xxxxxxxxxxxxxxxxxxx          ")
         escreval("    @   @               @  @@@@ @  @@@@@@     @@                  @   xxxxxxxxxxxxx             ")
         escreval("    @  @                @@   @@ @@@@     @@@   @   @@@@@@@        @                             ")
         escreval("    @@@                  @@@   @@@         @@  @  @@     @@@      @                             ")
         escreval("                          @@@   @           @@ @@@          @@@   @                             ")
         escreval("                             @@              @@@@             @@  @                             ")
         escreval("                              @@              @@@              @ @@                             ")
         escreval("@                     @       @@              @@               @@@                              ")
         escreval(" @                   @        @@                                @@                              ")
         escreval("  @@@@@@@@@@@@@@@@@@         @@                                 @@                              ")
         escreval("     @@    @        @@      @@                                                                  ")
         escreval("      @    @         @@    @@                                                                   ")
         escreval("      @   @          @@    @@                                                                   ")
         escreval("     @    @          @    @@                                                                    ")
         escreval("    @     @@@       @@    @@@@                                                                  ")
         escreval("   @       @ @      @@        @xxx                                                              ")
         escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxx@@xxxxxxxx                                                          ")
         escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx    VIDA DO DRAGÃO: ",hpD," MANA DO DRAGÃO:",manaD,"   ")
         escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                      ")
         escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                       ")
         escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                           ")
         escreval(" xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                               ")

         aleatorio 1,20
         escreval("TREVAS ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se escudoD > 0 entao
         escudoD <- 0
            ataqueBoss <- ataqueBossT - escama
         senao
            se x >= 16 entao
               hpD <- hpD - ataqueBossT
               escreval("TREVAS ACERTOU O ATAQUE")
            senao
               escreval("TREVAS ERROU O ATAQUE")
            fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 30       ||  2 - DANO NO BOSS - 50           ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 15 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - REDUZ O DANO DO BOSS    ||  4 - DANO NO BOSS - 65           ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            || ||       EM 50%                  ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 25 DE MANA        ||      GASTA 40 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueD)
             y <- 0
         escolha ataqueD

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off

            se y >= 11 entao
               escreval("DRAGÃO ACERTOU MORDIDA NO TREVAS")
               vida_trevas <- vida_trevas - ataqueDB
            senao
               escreval("DRAGÃO ERROU A MORDIDA NO TREVAS")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaD < 15 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               se y >= 11 entao
                  escreval("DRAGÃO ACERTOU BAFO DE FOGO NO TREVAS")
                  manaD <- manaD - 15
                  vida_trevas <- vida_trevas - ataqueDF
               senao
                  escreval("DRAGÃO ERROU BAFO DE FOGO NO TREVAS")
                  manaD <- manaD - 15
               fimse
            fimse
         caso 3
            se manaD < 25 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO AUMENTOU A DEFESA")
               escudoD <- 1
               manaD <- manaD - 25
            fimse
         caso 4
            se manaD < 40 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO USOU FURIA DRAGONICA")
               vida_trevas <- vida_trevas - ataqueDFD
               manaD <- manaD - 40
            fimse
         fimescolha


         se hpD <= 0 entao
            vida_sagrado <- 0
            escolha_torre <- 0
            torreTrevas <- 1
         fimse
       fimenquanto
fimprocedimento


// duplas possiveis x trevas

procedimento luta_dupla_trevas
      Var
         n : inteiro

       Inicio
          
   enquanto vida_trevas > 0 faca

      // sagrado e fada vs trevas
     se duplaFS = 2 entao
          duplaFS_BossTrevas()
     fimse
     
   // sagrado e dragao  vs trevas
      se duplaDS = 5 entao
         duplaDS_BossTrevas()
      fimse
   // dragao e fada vs  trevas
       se duplaFD = 1 entao
          duplaFD_BossTrevas()
       fimse
   
fimenquanto
       // formação de trios

        // DRAGÃO, FADA E TREVAS
       se duplaFD = 1 entao
        se (hpD > 0) e (hpF > 0) entao
            escreval("A DUPLA DRAGÃO E FADA VENCENRAM A TREVAS")
            trioFTD <- 1
            escolha_torre <- 0
            torreTrevas <- 1
            trevasV <- 4
            reunir_elementos <- reunir_elementos + 2
            elementosDuplas <- 0
           senao
            se (hpD <= 0) e (hpF <= 0) entao
            reunir_elementos <- 8
            dragaoV <- 0
            fadaV <- 0
             escreval("art- todos morreram")
            // colocar um procedimento de imagem perdedor aqui
            senao
             se hpD <= 0 entao
              escreval("DRAGÃO MORREU NA LUTA")
              escreval("FADA VENCEU AS TREVAS")
              escolha_torre <- 0
              torreFada <- 1
              dragaoV <- 0
              duplaFD <- 0
              duplaFS <- 2
              trevasV <- 4
              reunir_elementos <- reunir_elementos + 2
              senao
               se hpF <= 0 entao
                escreval("FADA MORREU NA LUTA")
                escreval("DRAGÃO VENCEU AS TREVAS")
                escolha_torre <- 0
                torreTrevas <- 1
                fadaV <- 0
                trevasV <- 4
                duplaDS <- 5
                duplaFD <- 0
                reunir_elementos <- reunir_elementos + 2
               fimse
              fimse
             fimse
            fimse
           fimse
         // DRAGÃO, SAGRADO E TREVAS
        se duplaDS = 5 entao
         se (hpD > 0) e (hpS > 0) entao
            escreval("A DUPLA DRAGÃO E SAGRADO VENCENRAM AS TREVAS")
            trioSDF <- 1
            escolha_torre <- 0
            torreTrevas <- 1
            reunir_elementos <- reunir_elementos + 2
            trevas <- 4
            elementosDuplas <- 0
           senao
           se (hpD <= 0) e (hpS <= 0) entao
            reunir_elementos <- 8
             escreval("art- todos morreram")
             dragaoV <- 0
             sagradoV <- 0
            // colocar um procedimento de imagem perdedor aqui
            senao
             se hpD <= 0 entao
              escreval("DRAGÃO MORREU NA LUTA")
              escreval("SAGRADO VENCEU AS TREVAS")
              escolha_torre <- 0
              torreTrevas <- 1
              reunir_elementos <- reunir_elementos + 2
              dragaoV <- 0
              duplaFS <- 2
              duplaDS <- 0
              trevas <- 4
              senao
               se hpS <= 0 entao
                escreval("SAGRADO MORREU NA LUTA")
                escreval("DRAGÃO VENCEU AS TREVAS")
                escolha_torre <- 0
                torreTrevas <- 1
                trevas <- 4
                reunir_elementos <- reunir_elementos + 2
                sagradoV <- 0
                duplaDT <- 4
                duplaDS <- 0
               fimse
              fimse
             fimse
            fimse
           fimse
         // FADA, SAGRADO E TREVAS
        se duplaFS = 2 entao
         se (hpF > 0) e (hpS > 0) entao
            escreval("A DUPLA FADA E SAGRADO VENCENRAM AS TREVAS")
            trioTFS <- 1
            escolha_torre <- 0
            torreTrevas <- 1
            trevasV <- 4
            elementosDuplas <- 0
            reunir_elementos <- reunir_elementos + 2
           senao
            se (hpF <= 0) e (hpS <= 0) entao
            reunir_elementos <- 8
             fadaV <- 0
             sagradoV <- 0
             escreval("art- todos morreram")
            // colocar um procedimento de imagem perdedor aqui
            senao
             se hpF <= 0 entao
              escreval("FADA MORREU NA LUTA")
              escreval("SAGRADO VENCEU AS TREVAS")
              escolha_torre <- 0
              torreTrevas <- 1
              fadaV <- 0
              duplaFS <- 0
              trevasV <- 4
              duplaTS <- 6
              reunir_elementos <- reunir_elementos + 2
              senao
               se hpS <= 0 entao
                escreval("SAGRADO MORREU NA LUTA")
                escreval("FADA VENCEU AS TREVAS")
                escolha_torre <- 0
                torreTrevas <- 1
                sagradoV <- 0
                trevaV <- 4
                duplaFS <- 0
                duplaFT <- 3
                reunir_elementos <- reunir_elementos + 2
               fimse
              fimse
             fimse
            fimse
           fimse
            //
        escreval("ESTA PRONTO PARA IR NA OUTRA TORRE")
        escreval("Pressione ENTER para continuar...")
        leia(n)


fimprocedimento

procedimento duplaFS_BossTrevas
    Var
     x, y : inteiro
     elemento_escolhido, turno_perdido : inteiro
     Inicio
     
      enquanto vida_trevas > 0 faca
      
          timer 3500
         limpatela()
         timer 0
      
            se hpF > 0 entao
              se vida_trevas > 0 entao
               // timer 2000
               // limpatela()
               // timer 0
               escreval("ART")
               escreval("VIDA DAS TREVAS ", vida_trevas)
               escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)

               aleatorio 1,20
               escreval("TREVAS ATACANDO ROLANDO D20")
               leia(x)
               aleatorio off

               se turno_perdido = 2 entao
                 turno_perdido <- turno_perdido - 1
                 escreval("TREVAS DORMINDO")
                senao
                 se elemento_escolhido = 1 entao
                  elemento_escolhido <- 0
                  escreval("FADA PROTEGIDA ATAQUE BLOQUEADO PELA HABILIDADE DO SAGRADO")
               senao
                 se x >= 16 entao
                   hpF <- hpF - ataqueBossT
                   escreval("TREVAS ACERTOU O ATAQUE")
                  senao
                    escreval("TREVAS ERROU O ATAQUE")
                 fimse
                fimse
               fimse

         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - FAZ O BOSS DORMIR           ||")
         escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 35           ||")
         escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueF)
                  y <- 0
               escolha ataqueF

               caso 1
                  aleatorio 1,20
                  leia(y)
                  aleatorio off
                  se y >= 6 entao
                     vida_trevas <- vida_trevas - ataqueFB
                     escreval("FADA ACERTOU O ATAQUE")
                  senao
                     escreval("FADA ERROU O ATAQUE")
                  fimse
               caso 2
                  aleatorio 1,20
                  leia(y)
                  aleatorio off

                  se manaF < 30 entao
                     escreval("FADA NÃO TEM MANA SUFICENTE")
                  senao
                     se y >= 6 entao
                        escreval("FADA ACERTOU O ATAQUE")
                        vida_trevas <- vida_trevas - ataqueFF
                        turno_perdido <- 3
                        manaF <- manaF - 30
                     senao
                        escreval("FADA ERROU O ATAQUE")
                        manaF <- manaF - 30
                     fimse
                  fimse
               caso 3

                  // CURAR TODOS COLOCAR
                  se hpF >= 100 entao
                     escreval("FADA VIDA ESTA NO MÁXIMO")
                  senao
                     se manaF < 20 entao
                        escreval("FADA NÃO TEM MANA SUFICENTE")
                     senao
                        escreval("FADA ACERTOU O ATAQUE")
                        hpF <- hpF + 20
                        manaF <- manaF - 20
                     fimse
                  fimse
               caso 4
                  aleatorio 1,20
                  leia(y)
                  aleatorio off

                  se manaF < 10 entao
                     escreval("FADA NÃO TEM MANA SUFICENTE")
                  senao
                     se y >= 6 entao
                        escreval("FADA ACERTOU O ATAQUE")
                        vida_trevas <- vida_trevas - ataqueFF
                        manaF <- manaF - 10
                     senao
                        escreval("FADA ERROU O ATAQUE")
                        manaF <- manaF - 10
                     fimse
                  fimse
              fimescolha

                  senao
                interrompa()
              fimse
            fimse

        se hpS > 0 entao
          se vida_trevas > 0 entao
            timer 3500
         limpatela()
         timer 0
            escreval("ART")
            escreval("VIDA DAS TREVAS ", vida_trevas)
            escreval("VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS)

            aleatorio 1,20
            escreval("TREVAS ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

          se turno_perdido = 3 entao
              turno_perdido <- turno_perdido - 1
              escreval("TREVAS DORMINDO")
            senao
             se x <= 16 entao
               escreval("TREVAS ERROU O ATAQUE")
            senao
               se elemento_escolhido = 2 entao
                 elemento_escolhido <- 0
                 escreval("O ATAQUE DAS TREVAS FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
                senao
                 hpS <- hpS - ataqueBossT
               escreval("TERVAS ACERTOU O ATAQUE")
            fimse
           fimse
          fimse

         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)
               y <- 0
            escolha ataqueS

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_trevas <- vida_trevas - ataqueSB
                  escreval("SAGRADO ACERTOU O ATAQUE")
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaS < 25 entao
                  escreval("SAGRADO NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("SAGRADO ACERTOU O ATAQUE")
                     vida_trevas <- vida_trevas - ataqueSF
                     manaS <- manaS - 25
                  senao
                     escreval("SAGRADO ERROU O ATAQUE")
                     manaS <- manaS - 25
                  fimse
               fimse
            caso 3
               se manaS < 20 entao
                  escreval("SAGRADONÃO TEM MANA SUFICENTE")
               senao
                  se hpS >= 130 entao
                  escreval("VIDA DO SAGRADO NO MÁXIMO")
                  escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                  ataqueSB <- ataqueSB + 6
                  ataqueSF <- ataqueSF + 12
                  ataqueFB <- ataqueFB + 3
                  ataqueFF <- ataqueFF + 6
                  manaS <- manaS - 30
                senao
                 escreval("SAGRADO SE CUROU COM A HABILIDADE E")
                 escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                 ataqueSB <- ataqueSB + 6
                 ataqueSF <- ataqueSF + 12
                 ataqueFB <- ataqueFB + 3
                 ataqueFF <- ataqueFF + 6
                 hpS <- hpS + ataqueSV
                 manaS <- manaS - 30
              fimse
            fimse
            caso 4

               se manaS < 25 entao
                  escreval("SAGRADO NÃO TEM MANA SUFICENTE")
               senao
                  escreval("ESCOLHA UM ELEMENTO PARA PROTEGER")
                  escreval ("1 - FADA || 2 - SAGRADO")
                  leia(elemento_escolhido)
               fimse
            fimescolha


             senao
                interrompa()
         fimse
        fimse

      fimenquanto
fimprocedimento

procedimento duplaDS_BossTrevas
   var
     x , y, escudoD, elemento_escolhido : inteiro
     escama : real
     
     Inicio
     
     escama <- ataqueBossT / 2
     
     enquanto vida_trevas > 0 faca
           se hpD > 0 entao
             se vida_trevas > 0 entao
              timer 3500
         limpatela()
         timer 0

            escreval("             VIDA DAS TREVAS:",vida_trevas,"                                     @@@@@@@@@@@@@@            ")
            escreval("                                                                   @@@@            @@@@         ")
            escreval("                                                                 @@@        @@@@      @@@       ")
            escreval("                                                                @@         @  @ @       @@      ")
            escreval("                                                               @@  @@@@     @@@@   @@@@  @@     ")
            escreval("                                                               @@ @    @@@@      @@@   @ @@     ")
            escreval("                                                               @@ @       @     @      @ @@     ")
            escreval("           @@     @@                                           @@  @ @              @ @  @@     ")
            escreval("           @ @@   @ @@                                         @@  @ @@@@@      @@@@@ @  @@     ")
            escreval("     @     @@ @@   @ @@                                        @@  @ @@  @      @  @@ @  @@     ")
            escreval("    @ @     @@ @@@@@ @@                                        @@ @@ @@@@@      @@@@@ @@ @@     ")
            escreval(" @@@@@@      @        @                  @                     @@@@         @@         @@@@     ")
            escreval("@@@@  @      @         @                @ @                    @@@@        @@@@        @@ @     ")
            escreval("@@ @  @     @           @              @@@@@                   @ @@     @       @      @@ @     ")
            escreval(" @  @ @@    @           @            @@@ @@@@@                 @ @@    @         @     @@ @     ")
            escreval("  @  @ @@    @         @           @@@   @@  @@@               @@  @@@@           @@@@@  @@     ")
            escreval("   @  @ @@    @       @        @@@     @@  @      @@@@@          @@ @@@@@@@@@@@@@@@@@  @@       ")
            escreval("  @   @   @@@ @       @     @@@@      @@   @@         @@@@@       @@ @@@@@@@@@@@@@@@  @@        ")
            escreval(" @   @      @@@       @          @@@    @@@@   @@@@             @@ @@@@ I I I I I @@@@  @@      ")
            escreval("   @  @  @@   @       @  @@@@       @@@     @             @@@      @@@ I I I I I I  @@@         ")
            escreval("@   @        @       @@@@@         @@       @               @@       @@@           @@@          ")
            escreval("    @       @                     @@        @@               @@       @@@        @@@            ")
            escreval("    @@@@@@@@@                    @@          @                 @@  xxxxx@@@@@@@@@@xxxx          ")
            escreval("    @ @   @          @@@@@       @           @@                 @ xxxxxxxxxxxxxxxxxxxxx         ")
            escreval("    @    @              @@@@    @@            @                  @ xxxxxxxxxxxxxxxxxxx          ")
            escreval("    @   @               @  @@@@ @  @@@@@@     @@                  @   xxxxxxxxxxxxx             ")
            escreval("    @  @                @@   @@ @@@@     @@@   @   @@@@@@@        @                             ")
            escreval("    @@@                  @@@   @@@         @@  @  @@     @@@      @                             ")
            escreval("                          @@@   @           @@ @@@          @@@   @                             ")
            escreval("                             @@              @@@@             @@  @                             ")
            escreval("                              @@              @@@              @ @@                             ")
            escreval("@                     @       @@              @@               @@@                              ")
            escreval(" @                   @        @@                                @@                              ")
            escreval("  @@@@@@@@@@@@@@@@@@         @@                                 @@                              ")
            escreval("     @@    @        @@      @@                                                                  ")
            escreval("      @    @         @@    @@                                                                   ")
            escreval("      @   @          @@    @@                                                                   ")
            escreval("     @    @          @    @@                                                                    ")
            escreval("    @     @@@       @@    @@@@                                                                  ")
            escreval("   @       @ @      @@        @xxx                                                              ")
            escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxx@@xxxxxxxx                                                          ")
            escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx    VIDA DO DRAGÃO: ",hpD," MANA DO DRAGÃO:",manaD,"   ")
            escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                      ")
            escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                       ")
            escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                           ")
            escreval(" xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                               ")

         aleatorio 1,20
         escreval("TREVAS ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se escudoD = 1 entao
            escudoD <- 0
            ataqueBoss <- ataqueBossT - escama
         senao
            se x >= 16 entao
               hpD <- hpD - ataqueBossT
               escreval("TREVAS ACERTOU O ATAQUE")
            senao
               escreval("TREVAS ERROU O ATAQUE")
            fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------|")
         escreval()
         escreval("                |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               ||")
         escreval("  O             ||                               ||                                  ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            ||")
         escreval("                ||                               ||                                  ||")
         escreval("                ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------|")
         leia(ataqueD)
              y <- 0
         escolha ataqueD

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off

            se y >= 11 entao
               escreval("DRAGÃO ACERTOU MORDIDA NAS TREVAS")
               vida_trevas <- vida_trevas - ataqueDB
            senao
               escreval("DRAGÃO ERROU A MORDIDA NAS TREVAS")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaD < 15 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               se y >= 11 entao
                  escreval("DRAGÃO ACERTOU BAFO DE FOGO NAS TREVAS")
                  manaD <- manaD - 15
                  vida_trevas <- vida_trevas - ataqueDF
               senao
                  escreval("DRAGÃO ERROU BAFO DE FOGO NAS TREVAS")
                  manaD <- manaD - 15
               fimse
            fimse
         caso 3
            se manaD < 25 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO AUMENTOU A DEFESA")
               escudoD <- 1
               manaD <- manaD - 25
            fimse
         caso 4
            se manaD < 40 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO USOU FURIA DRAGONICA")
               vida_trevas <- vida_trevas - ataqueDFD
               manaD <- manaD - 40
            fimse
         fimescolha



               senao
                interrompa()
                fimse
            fimse

      se hpS > 0 entao
           se vida_trevas > 0 entao
         timer 3500
         limpatela()
         timer 0
            escreval("ART")
            escreval("VIDA DAS TREVAS ", vida_trevas)
            escreval("VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS)

            aleatorio 1,20
            escreval("TREVAS ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

             se x <= 16 entao
               escreval("TREVAS ERROU O ATAQUE")
            senao
               se elemento_escolhido = 2 entao
                 elemento_escolhido <- 0
                 escreval("O ATAQUE DAS TREVAS FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
                senao
                 hpS <- hpS - ataqueBossT
               escreval("TERVAS ACERTOU O ATAQUE")
            fimse
           fimse

            escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)
               y <- 0
            escolha ataqueS

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_trevas <- vida_trevas - ataqueSB
                  escreval("SAGRADO ACERTOU O ATAQUE")
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaS < 25 entao
                  escreval("SAGRADO NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("SAGRADO ACERTOU O ATAQUE")
                     vida_trevas <- vida_trevas - ataqueSF
                     manaS <- manaS - 25
                  senao
                     escreval("SAGRADO ERROU O ATAQUE")
                     manaS <- manaS - 25
                  fimse
               fimse
            caso 3
               se manaS < 20 entao
                  escreval("SAGRADO NÃO TEM MANA SUFICENTE")
               senao
                  se hpS >= 130 entao
                  escreval("VIDA DO SAGRADO NO MÁXIMO")
                  escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                  ataqueSB <- ataqueSB + 6
                  ataqueSF <- ataqueSF + 12
                  ataqueFB <- ataqueDB + 3
                  ataqueFF <- ataqueDF + 6
                  ataqueDFD <- ataqueDFD + 12
                  manaS <- manaS - 30
                senao
                 escreval("SAGRADO SE CUROU COM A HABILIDADE E")
                 escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                 ataqueSB <- ataqueSB + 6
                 ataqueSF <- ataqueSF + 12
                 ataqueFB <- ataqueDB + 3
                 ataqueFF <- ataqueDF + 6
                 ataqueDFD <- ataqueDFD + 12
                 hpS <- hpS + ataqueSV
                 manaS <- manaS - 30
               fimse
             fimse
            caso 4
               se manaS < 25 entao
                  escreval("SAGRADO NÃO TEM MANA SUFICENTE")
               senao
                  escreval("ESCOLHA UM ELEMENTO PARA PROTEGER")
                  escreval ("1 - DRAGÃO || 2 - SAGRADO")
                  leia(elemento_escolhido)
               fimse
            fimescolha

            senao
             interrompa()
         fimse
        fimse

      se (hpS <= 0) e ( hpD <= 0) entao
         escreval("A DUPLA FOI MORTA EM AÇÃO")
         vida_trevas <- 0
         escolha_torre <- 0
         torreTrevas <- 1
         reunir_elementos <- 8
         interrompa()
         escreval("VOCÊ PERDEU")
      fimse
     
     
     fimenquanto
fimprocedimento

procedimento duplaFD_BossTrevas()
   Var
     x , y, escudoD, turno_perdido  : inteiro
     escama : real
    Inicio

      escama <- ataqueBossT / 2
    
      enquanto vida_trevas > 0 faca
      
       timer 3500
         limpatela()
         timer 0
      
        se hpF > 1 entao
         se vida_trevas > 0 entao
         //luta
             escreval("ART")

         escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)
         escreval()
         escreval()
         escreval("VIDA DO TREVAS ", vida_trevas)

         aleatorio 1,20
         escreval("TREVAS ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se turno_perdido = 2 entao
            turno_perdido <- turno_perdido - 1
            escreval("TREVAS DORMINDO"))

         senao
            se x >= 16 entao
               hpF <- hpF - ataqueBossT
               escreval("TREVAS ACERTOU O ATAQUE")
            senao
               escreval("TREVAS ERROU O ATAQUE")
            fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - FAZ O BOSS DORMIR           ||")
         escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 35           ||")
         escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueF)
            y <- 0
         escolha ataqueF

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y > 6 entao
               vida_trevas <- vida_trevas - 15
               escreval("FADA ACERTOU O ATAQUE")
            senao
               escreval("FADA ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 30 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  escreval("FADA ACERTOU O ATAQUE")
                  turno_perdido <- 3
                  manaF <- manaF - 30
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 30
               fimse
            fimse
         caso 3
            se hpF >= 100 entao
               escreval("SUA VIDA ESTA NO MÁXIMO")
            senao
               se manaF < 20 entao
                  escreval("FADA NÃO TEM MANA SUFICENTE")
               senao
                  escreval("FADA ACERTOU O ATAQUE")
                  hpF <- hpF + 20
                  manaF <- manaF - 20
               fimse
            fimse
         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 10 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  vida_trevas <- vida_trevas - 30
                  manaF <- manaF - 10
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 10
               fimse
            fimse
         fimescolha
       senao
         interrompa()
        fimse
       fimse

         se hpD > 0 entao
          se vida_trevas > 0 entao
           //luta
           timer 3500
           limpatela()
           timer 0

      escreval("             VIDA DAS TREVAS:",vida_trevas,"                                     @@@@@@@@@@@@@@            ")
      escreval("                                                                   @@@@            @@@@         ")
      escreval("                                                                 @@@        @@@@      @@@       ")
      escreval("                                                                @@         @  @ @       @@      ")
      escreval("                                                               @@  @@@@     @@@@   @@@@  @@     ")
      escreval("                                                               @@ @    @@@@      @@@   @ @@     ")
      escreval("                                                               @@ @       @     @      @ @@     ")
      escreval("           @@     @@                                           @@  @ @              @ @  @@     ")
      escreval("           @ @@   @ @@                                         @@  @ @@@@@      @@@@@ @  @@     ")
      escreval("     @     @@ @@   @ @@                                        @@  @ @@  @      @  @@ @  @@     ")
      escreval("    @ @     @@ @@@@@ @@                                        @@ @@ @@@@@      @@@@@ @@ @@     ")
      escreval(" @@@@@@      @        @                  @                     @@@@         @@         @@@@     ")
      escreval("@@@@  @      @         @                @ @                    @@@@        @@@@        @@ @     ")
      escreval("@@ @  @     @           @              @@@@@                   @ @@     @       @      @@ @     ")
      escreval(" @  @ @@    @           @            @@@ @@@@@                 @ @@    @         @     @@ @     ")
      escreval("  @  @ @@    @         @           @@@   @@  @@@               @@  @@@@           @@@@@  @@     ")
      escreval("   @  @ @@    @       @        @@@     @@  @      @@@@@          @@ @@@@@@@@@@@@@@@@@  @@       ")
      escreval("  @   @   @@@ @       @     @@@@      @@   @@         @@@@@       @@ @@@@@@@@@@@@@@@  @@        ")
      escreval(" @   @      @@@       @          @@@    @@@@   @@@@             @@ @@@@ I I I I I @@@@  @@      ")
      escreval("   @  @  @@   @       @  @@@@       @@@     @             @@@      @@@ I I I I I I  @@@         ")
      escreval("@   @        @       @@@@@         @@       @               @@       @@@           @@@          ")
      escreval("    @       @                     @@        @@               @@       @@@        @@@            ")
      escreval("    @@@@@@@@@                    @@          @                 @@  xxxxx@@@@@@@@@@xxxx          ")
      escreval("    @ @   @          @@@@@       @           @@                 @ xxxxxxxxxxxxxxxxxxxxx         ")
      escreval("    @    @              @@@@    @@            @                  @ xxxxxxxxxxxxxxxxxxx          ")
      escreval("    @   @               @  @@@@ @  @@@@@@     @@                  @   xxxxxxxxxxxxx             ")
      escreval("    @  @                @@   @@ @@@@     @@@   @   @@@@@@@        @                             ")
      escreval("    @@@                  @@@   @@@         @@  @  @@     @@@      @                             ")
      escreval("                          @@@   @           @@ @@@          @@@   @                             ")
      escreval("                             @@              @@@@             @@  @                             ")
      escreval("                              @@              @@@              @ @@                             ")
      escreval("@                     @       @@              @@               @@@                              ")
      escreval(" @                   @        @@                                @@                              ")
      escreval("  @@@@@@@@@@@@@@@@@@         @@                                 @@                              ")
      escreval("     @@    @        @@      @@                                                                  ")
      escreval("      @    @         @@    @@                                                                   ")
      escreval("      @   @          @@    @@                                                                   ")
      escreval("     @    @          @    @@                                                                    ")
      escreval("    @     @@@       @@    @@@@                                                                  ")
      escreval("   @       @ @      @@        @xxx                                                              ")
      escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxx@@xxxxxxxx                                                          ")
      escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx    VIDA DO DRAGÃO: ",hpD,"                            ")
      escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx    VIDA DO DRAGÃO: ", hpD, "                          ")
      escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                       ")
      escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                           ")
      escreval(" xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                               ")

               aleatorio 1,20
               escreval("TREVAS ATACANDO ROLANDO D20")
               leia(x)
               aleatorio off

             se turno_perdido = 3 entao
                 turno_perdido <- turno_perdido - 1
                  escreval("TREVAS DORMINDO")
              senao
               se escudoD = 1 entao
               escudoD <- 0
                  ataqueBossT <- ataqueBossT - escama
               senao
                  se x >= 16 entao
                     hpD <- hpD - ataqueBossT
                     escreval("TREVAS ACERTOU O ATAQUE")
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                  fimse
               fimse
              fimse
               escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 30       ||  2 - DANO NO BOSS - 50           ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 15 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - REDUZ O DANO DO BOSS    ||  4 - DANO NO BOSS - 65           ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            || ||       EM 50%                  ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 25 DE MANA        ||      GASTA 40 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueD)
                  y <- 0
               escolha ataqueD

               caso 1
                  aleatorio 1,20
                  leia(y)
                  aleatorio off

                  se y >= 11 entao
                     escreval("DRAGÃO ACERTOU MORDIDA NO TREVAS")
                     vida_trevas <- vida_trevas - ataqueDB
                  senao
                     escreval("DRAGÃO ERROU A MORDIDA NO TREVAS")
                  fimse
               caso 2
                  aleatorio 1,20
                  leia(y)
                  aleatorio off

                  se manaD < 15 entao
                     escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
                  senao
                     se y >= 11 entao
                        escreval("DRAGÃO ACERTOU BAFO DE FOGO NAS TREVAS")
                        manaD <- manaD - 15
                        vida_trevas <- vida_trevas - ataqueDF
                     senao
                        escreval("DRAGÃO ERROU BAFO DE FOGO NAS TREVAS")
                        manaD <- manaD - 15
                     fimse
                  fimse
               caso 3
                  se manaD < 25 entao
                     escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
                  senao
                     escreval("DRAGÃO AUMENTOU A DEFESA")
                     escudoD <- 1
                     manaD <- manaD - 25
                  fimse
               caso 4
                  se manaD < 40 entao
                     escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
                  senao
                     escreval("DRAGÃO USOU FURIA DRAGONICA")
                     vida_trevas <- vida_trevas - ataqueDFD
                     manaD <- manaD - 40
                  fimse
               fimescolha

          senao
            interrompa()
           fimse
          fimse

     se (hpD <= 0) e ( hpF <= 0) entao
         escreval("A DUPLA FOI MORTA EM AÇÃO")
         vida_trevas <- 0
         escolha_torre <- 0
         torreTrevas <- 1
         reunir_elementos <- 8
         interrompa()
         escreval("VOCÊ PERDEU")
         // PROCEDIMENTO DE ART PERDEU
      fimse


      fimenquanto
fimprocedimento

procedimento luta_trio_trevas
    Var
     x, y, n : inteiro
     turno_perdido, escudoD,elemento_escolhido : inteiro
     escama : real
     
     Inicio
     
        escama <- ataqueBossT / 2
     
        enquanto vida_trevas > 0 faca
        se hpF > 0 entao
         se vida_trevas > 0 entao
         timer 3500
         limpatela()
         timer 0
             escreval("ART")

         escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)
         escreval()
         escreval()
         escreval("VIDA DO TREVAS ", vida_trevas)

         aleatorio 1,20
         escreval("TREVAS ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off
      se elemento_escolhido = 1 entao
         elemento_escolhido <- 0
                escreval("ATAQUE BLOQUEADO PELA HABILIDADE DO SAGRADO")
        senao
         se turno_perdido = 2 entao
            turno_perdido <- turno_perdido - 1
            escreval("TREVAS DORMINDO")
         senao
            se x >= 16 entao
               hpF <- hpF - ataqueBossT
               escreval("TREVAS ACERTOU O ATAQUE")
            senao
               escreval("TREVAS ERROU O ATAQUE")
            fimse
         fimse
        fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - FAZ O BOSS DORMIR           ||")
         escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 35           ||")
         escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueF)
            y <- 0
         escolha ataqueF

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y > 6 entao
               vida_trevas <- vida_trevas - ataqueFB
               escreval("FADA ACERTOU O ATAQUE")
            senao
               escreval("FADA ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 30 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  escreval("FADA ACERTOU O ATAQUE")
                  turno_perdido <- 4
                  manaF <- manaF - 30
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 30
               fimse
            fimse
         caso 3
            se hpF >= 100 entao
               escreval("A VIDA DA FADA ESTA NO MÁXIMO")
            senao
               se manaF < 20 entao
                  escreval("VOCÊ NÃO TEM MANA SUFICENTE")
               senao
                  escreval("FADA CUROU A EQUIPE")
                  hpF <- hpF + ataqueFV
                  manaF <- manaF - 20
               fimse
            fimse
         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 10 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  vida_trevas <- vida_trevas - ataqueFF
                  manaF <- manaF - 10
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 10
               fimse
            fimse
         fimescolha
       senao
         interrompa()
        fimse
       fimse

         se hpD > 0 entao
          se vida_trevas > 0 entao
           //luta
           timer 3500
           limpatela()
           timer 0

      escreval("             VIDA DAS TREVAS:",vida_trevas,"                                     @@@@@@@@@@@@@@            ")
      escreval("                                                                   @@@@            @@@@         ")
      escreval("                                                                 @@@        @@@@      @@@       ")
      escreval("                                                                @@         @  @ @       @@      ")
      escreval("                                                               @@  @@@@     @@@@   @@@@  @@     ")
      escreval("                                                               @@ @    @@@@      @@@   @ @@     ")
      escreval("                                                               @@ @       @     @      @ @@     ")
      escreval("           @@     @@                                           @@  @ @              @ @  @@     ")
      escreval("           @ @@   @ @@                                         @@  @ @@@@@      @@@@@ @  @@     ")
      escreval("     @     @@ @@   @ @@                                        @@  @ @@  @      @  @@ @  @@     ")
      escreval("    @ @     @@ @@@@@ @@                                        @@ @@ @@@@@      @@@@@ @@ @@     ")
      escreval(" @@@@@@      @        @                  @                     @@@@         @@         @@@@     ")
      escreval("@@@@  @      @         @                @ @                    @@@@        @@@@        @@ @     ")
      escreval("@@ @  @     @           @              @@@@@                   @ @@     @       @      @@ @     ")
      escreval(" @  @ @@    @           @            @@@ @@@@@                 @ @@    @         @     @@ @     ")
      escreval("  @  @ @@    @         @           @@@   @@  @@@               @@  @@@@           @@@@@  @@     ")
      escreval("   @  @ @@    @       @        @@@     @@  @      @@@@@          @@ @@@@@@@@@@@@@@@@@  @@       ")
      escreval("  @   @   @@@ @       @     @@@@      @@   @@         @@@@@       @@ @@@@@@@@@@@@@@@  @@        ")
      escreval(" @   @      @@@       @          @@@    @@@@   @@@@             @@ @@@@ I I I I I @@@@  @@      ")
      escreval("   @  @  @@   @       @  @@@@       @@@     @             @@@      @@@ I I I I I I  @@@         ")
      escreval("@   @        @       @@@@@         @@       @               @@       @@@           @@@          ")
      escreval("    @       @                     @@        @@               @@       @@@        @@@            ")
      escreval("    @@@@@@@@@                    @@          @                 @@  xxxxx@@@@@@@@@@xxxx          ")
      escreval("    @ @   @          @@@@@       @           @@                 @ xxxxxxxxxxxxxxxxxxxxx         ")
      escreval("    @    @              @@@@    @@            @                  @ xxxxxxxxxxxxxxxxxxx          ")
      escreval("    @   @               @  @@@@ @  @@@@@@     @@                  @   xxxxxxxxxxxxx             ")
      escreval("    @  @                @@   @@ @@@@     @@@   @   @@@@@@@        @                             ")
      escreval("    @@@                  @@@   @@@         @@  @  @@     @@@      @                             ")
      escreval("                          @@@   @           @@ @@@          @@@   @                             ")
      escreval("                             @@              @@@@             @@  @                             ")
      escreval("                              @@              @@@              @ @@                             ")
      escreval("@                     @       @@              @@               @@@                              ")
      escreval(" @                   @        @@                                @@                              ")
      escreval("  @@@@@@@@@@@@@@@@@@         @@                                 @@                              ")
      escreval("     @@    @        @@      @@                                                                  ")
      escreval("      @    @         @@    @@                                                                   ")
      escreval("      @   @          @@    @@                                                                   ")
      escreval("     @    @          @    @@                                                                    ")
      escreval("    @     @@@       @@    @@@@                                                                  ")
      escreval("   @       @ @      @@        @xxx                                                              ")
      escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxx@@xxxxxxxx                                                          ")
      escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx    VIDA DO DRAGÃO: ",hpD,"                            ")
      escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx   MANA DO DRAGÃO:" ,manaD,"                          ")
      escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                       ")
      escreval("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                           ")
      escreval(" xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx                                                               ")

               aleatorio 1,20
               escreval("TREVAS ATACANDO ROLANDO D20")
               leia(x)
               aleatorio off
          se turno_perdido = 4 entao
             turno_perdido <- turno_perdido - 1
             escreval("TREVAS DORMINDO")

            senao
             se elemento_escolhido = 3 entao
                elemento_escolhido <- 0
                escreval("ATAQUE BLOQUEADO PELA HABILIDADE DO SAGRADO")
              senao
               se escudoD = 1 entao
               escudoD <- 0
                  ataqueBossT <- ataqueBossT - escama
               senao
                  se x >= 16 entao
                     hpD <- hpD - ataqueBossT
                     escreval("TREVAS ACERTOU O ATAQUE")
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                  fimse
               fimse
              fimse
             fimse
               escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 30       ||  2 - DANO NO BOSS - 50           ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 15 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - REDUZ O DANO DO BOSS    ||  4 - DANO NO BOSS - 65           ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            || ||       EM 50%                  ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 25 DE MANA        ||      GASTA 40 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueD)
                  y <- 0
               escolha ataqueD

               caso 1
                  aleatorio 1,20
                  leia(y)
                  aleatorio off

                  se y >= 11 entao
                     escreval("DRAGÃO ACERTOU MORDIDA NO TREVAS")
                     vida_trevas <- vida_trevas - ataqueDB
                  senao
                     escreval("DRAGÃO ERROU A MORDIDA NO TREVAS")
                  fimse
               caso 2
                  aleatorio 1,20
                  leia(y)
                  aleatorio off

                  se manaD < 15 entao
                     escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
                  senao
                     se y >= 11 entao
                        escreval("DRAGÃO ACERTOU BAFO DE FOGO NAS TREVAS")
                        manaD <- manaD - 15
                        vida_trevas <- vida_trevas - ataqueDF
                     senao
                        escreval("DRAGÃO ERROU BAFO DE FOGO NAS TREVAS")
                        manaD <- manaD - 15
                     fimse
                  fimse
               caso 3
                  se manaD < 25 entao
                     escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
                  senao
                     escreval("DRAGÃO AUMENTOU A DEFESA")
                     escudoD <- 1
                     manaD <- manaD - 25
                  fimse
               caso 4
                  se manaD < 40 entao
                     escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
                  senao
                     escreval("DRAGÃO USOU FURIA DRAGONICA")
                     vida_trevas <- vida_trevas - ataqueDFD
                     manaD <- manaD - 40
                  fimse
               fimescolha

          senao
            interrompa()
           fimse
          fimse
          
          
         se hpS > 0 entao
           se vida_trevas > 0 entao
            timer 3500
         limpatela()
         timer 0
            escreval("ART")
            escreval("VIDA DAS TREVAS ", vida_trevas)
            escreval("VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS)

            aleatorio 1,20
            escreval("TREVAS ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off
          se turno_perdido = 3 entao
             turno_perdido <- turno_perdido - 1
             escreval("TREVAS DORMINDO")

            senao
             se x <= 16 entao
               escreval("TREVAS ERROU O ATAQUE")
            senao
               se elemento_escolhido = 2 entao
                 elemento_escolhido <- 0
                 escreval("O ATAQUE DAS TREVAS FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
                senao
                 hpS <- hpS - ataqueBossT
               escreval("TERVAS ACERTOU O ATAQUE")
            fimse
           fimse
          fimse
            escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)
               y <- 0
            escolha ataqueS

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_trevas <- vida_trevas - ataqueSB
                  escreval("SAGRADO ACERTOU O ATAQUE")
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaS < 25 entao
                  escreval("SAGRADO NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("SAGRADO ACERTOU O ATAQUE")
                     vida_trevas <- vida_trevas - ataqueSF
                     manaS <- manaS - 25
                  senao
                     escreval("SAGRADO ERROU O ATAQUE")
                     manaS <- manaS - 25
                  fimse
               fimse
            caso 3
               se manaS < 20 entao
                  escreval("SAGRADO NÃO TEM MANA SUFICENTE")
               senao
                  se hpS >= 130 entao
                  escreval("VIDA DO SAGRADO NO MÁXIMO")
                  escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                  ataqueSB <- ataqueSB + 6
                  ataqueSF <- ataqueSF + 12
                  ataqueFB <- ataqueFB + 3
                  ataqueFF <- ataqueFF + 6
                  ataqueDB <- ataqueDB + 5
                  ataqueDF <- ataqueDF + 9
                  ataqueDFD <- ataqueDFD + 12
                  manaS <- manaS - 30
                senao
                 escreval("SAGRADO SE CUROU COM A HABILIDADE E")
                 escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                 ataqueSB <- ataqueSB + 6
                 ataqueSF <- ataqueSF + 12
                 ataqueFB <- ataqueFB + 3
                 ataqueFF <- ataqueFF + 6
                 ataqueDB <- ataqueDB + 5
                 ataqueDF <- ataqueDF + 9
                 ataqueDFD <- ataqueDFD + 12
                 hpS <- hpS + ataqueSV
                 manaS <- manaS - 30
               fimse
             fimse
            caso 4
               se manaS < 25 entao
                  escreval("SAGRADO NÃO TEM MANA SUFICENTE")
               senao
                  escreval("ESCOLHA UM ELEMENTO PARA PROTEGER")
                  escreval ("1 - FADA || 2 - SAGRADO || 3 - DRAGÃO")
                  leia(elemento_escolhido)
               fimse
            fimescolha

            senao
             interrompa()
         fimse
        fimse

        fimenquanto
        
        
        timer 3500
         limpatela()
         timer 0
         se (hpS > 0) e (hpF > 0) e (hpD > 0) entao
             trevasV <- 3
             quatroElementos <- 1
             reunir_elementos <- reunir_elementos + 2
            senao
             se (hpF <= 0) e (hpS <= 0) e (hpD <= 0) entao
                 reunir_elementos <- 8
                 fadaV <- 0
                 sagradoV <- 0
                 dragaoV <- 0
                 escreval("TODOS PERDERAM")
                 // procedimento perdeu art
               senao
                se (hpS <= 0) e (hpF <= 0) entao
                  escreval("SAGRADO MORREU EM BATALHA")
                  escreval("FADA MORREU EM BATALHA")
                  escreval("DRAGÃO VENCEU CONTRA AS TREVAS")
                  trevasV <- 3
                  reunir_elementos <- reunir_elementos + 2
                  sagradoV <- 0
                  fadaV <- 0
                  senao
                   se (hpS <= 0) e (hpD <= 0) entao
                     escreval("TREVAS MORREU EM BATALHA")
                     escreval("DRAGÃO MORREU EM BATALHA")
                     escreval("FADA VENCEU CONTRA AS TREVAS")
                     trevasV <- 3
                     reunir_elementos <- reunir_elementos + 2
                     sagradoV <- 0
                     dragaoV <- 0
                     senao
                      se (hpF <= 0) e (hpD <= 0) entao
                         escreval("FADA MORREU EM BATALHA")
                         escreval("DRAGÃO MORREU EM BATALHA")
                         escreval("SAGRADO VENCEU CONTRA AS TREVAS")
                         trevasV <- 3
                         reunir_elementos <- reunir_elementos + 2
                         fadaV <- 0
                         dragaoV <- 0
                       senao
                        se hpS <= 0 entao
                           escreval("SAGRADO MORREU EM BATALHA")
                           escreval("DRAGÃO E SAGRADO VENCERAM CONTRA AS TREVAS")
                           trevasV <- 3
                           reunir_elementos <- reunir_elementos + 2
                           sagradoV <- 0
                           
                           senao
                            se hpF <= 0 entao
                              escreval("FADA MORREU EM BATALHA")
                              escreval("DRAGÃO E SAGRADO VENCERAM CONTRA AS TREVAS")
                              trevasV <- 3
                              reunir_elementos <- reunir_elementos + 2
                              fadaV <- 0
                              senao
                               se hpD <= 0 entao
                                 escreval("DRAGÃO MORREU EM BATALHA")
                                 escreval("SAGRADO E A FADA VENCERAM CONTRA AS TREVAS")
                                 sagradoV <- 3
                                 reunir_elementos <- reunir_elementos + 2
                                 dragaoV <- 0
                                 fimse
                               fimse
                            fimse
                        fimse
                      fimse
                   fimse
                fimse
            fimse
        escreval("PREPARADO PARA ENFENTRAR O BOSS FINAL")
        escreval("Pressione ENTER para continuar...")
        leia(n)
        
        
fimprocedimento

//
//
procedimento ir_embora_trevas
   var
      y : inteiro
      x : caractere
   inicio
      limpatela()
      escreval("=== TENTANDO FUGIR ===")
      escreval("Você tenta sair do salão frio sem ser percebido...")
      escreval("Mas você sente que ela ja te analisou completamente.")
      escreval("Role um D20 para tentar fugir (precisa de 11+)!")
      escreval("Pressione ENTER para rolar...")
      leia(x)
      aleatorio 1,20
      leia(y)
      aleatorio off
      escreval("Voce tirou: ", y, " no D20!")
      se y >= 11 entao
         escreval("CONSEGUIU FUGIR!")
         escreval("Ela apenas observa voce sair, sem interferir.")
         escreval("(Torre ignorada - Trevas nao foi recrutada)")
          reunir_elementos <- reunir_elementos + 2
         torreTrevas <- 0
      senao
         escreval("VOCE TROPEÇOU E CHAMOU ATENÇÃO!")
         escreval("A figura esquelética se levanta lentamente...")
         timer 1500
         timer 0
         historia_conversar_trevas()
      fimse
      escreval("Pressione ENTER para continuar...")
      leia(x)
fimprocedimento

procedimento dragao

inicio
escreval ("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
escreval ("@@                     @@@     @@                           @@                             @@     @@  ")
escreval ("@@                    @@@@@    @@                          @@@@                           @@@@    @@  ")
escreval ("@@                    @@ @@    @@                         @@@ @@@                         @@ @@@  @@  ")
escreval ("@@                   @@   @@@  @@                        @@@   @@@                       @@   @@@ @@  ")
escreval ("@@                  @@@    @@  @@                        @@     @@                      @@     @@ @@  ")
escreval ("@@                  @@      @@@@@                       @@       @@                    @@@      @@@@  ")
escreval ("@@                 @@        @@@@                     @@@         @@                  @@@        @@@  ")
escreval ("@@               @@@@          @@                    @@@          @@@                @@          @@@  ")
escreval ("@@               @@@            @@                   @@            @@@              @@            @@  ")
escreval ("@@              @@     @@@@      @@                 @@               @@            @@@     @@@    @@  ")
escreval ("@@             @@     @@  @@      @@               @@     @@@         @@@          @@     @@  @@  @@  ")
escreval ("@@            @@@    @@    @@     @@               @@   @@@ @@@@  @@@@@@@          @@    @@    @@ @@  ")
escreval ("@@            @@     @@    @@     @@               @@   @@   @@@  @@  @@@          @@    @@    @@ @@  ")
escreval ("@@            @@     @@    @@     @@@@@@@@@@@@@@@@@@@   @@   @@@  @@   @@@@@@@@@@@@@@    @@@@@@@@ @@  ")
escreval ("@@            @@     @@@@@@@@                           @@@@@@@@  @@  @@     @@@@                 @@  ")
escreval ("@@            @@                                                 @@@  @@     @@@@@@               @@  ")
escreval ("@@            @@  @@@@@@@@@@@                                  @@@@  @@@  @@@@   @@               @@  ")
escreval ("@@            @@@@@@@@@   @@@@           @@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@     @@               @@  ")
escreval ("@@            @@@@      @   @@@@       @@@@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@       @@@               @@  ")
escreval ("@@            @@@      @@@    @@@@@@   @@@  @@@@@             @@@@@@@@@@      @@@@                @@  ")
escreval ("@@            @@@                  @@@@@@@@@@@                            @@@@@@                @@@@  ")
escreval ("@@            @@@                       @@@    @@@@@@@@@@@@@           @@@@@@@              @@@@@@@@   ")
escreval ("@@            @@@@@@@@@@@@@@@                @@@@ @@@   @@@       @@@@@@@@@             @@@@@@@   @@   ")
escreval ("@@            @@@@@@@@@@@@@@@@@                @@@@@    @@       @@@@@  @@@@@@@     @@@@@@@@@     @@   ")
escreval ("@@            @@         @@@@@@@@@@@            @@@@@@@@@@     @@@           @@@@@@@@@            @@   ")
escreval ("@@            @@      @@@@      @@@@@                          @@                                 @@   ")
escreval ("@@          @@@@@@@@@@@@@@@@@@   @@@@@@@@                    @@@@@@@@@@@@@                        @@   ")
escreval ("@@         @@@           @@@@       @@@@@@@@@                      @@@@@                          @@   ")
escreval ("@@         @@@@      @@@@@@@@    @@@@@@     @@@@@@            @@@@@@@                             @@   ")
escreval ("@@           @@@@  @@@@@         @@@@         @@@            @@@                                  @@   ")
escreval ("@@            @@@@@@@ @@@    @@@@@@@   @@@@@@@@@             @@@@                                 @@   ")
escreval ("@@            @@        @@ @@@@@@@  @ @@@@@@@                   @@@@@@@@@@                        @@   ")
escreval ("@@            @@       @@@@@@@@ @@@@@@@@@@                        @@@@@@@@                        @@   ")
escreval ("@@            @@      @@@@@@@@@@@@@@@@@            @@@@@@@@@@@@@@@@@   @@@                        @@   ")
escreval ("@@            @@     @@@@@@@@@@@@@@@@          @@@@@@@@@                @@@@@                     @@   ")
escreval ("@@            @@     @@                    @@@@@@@@@@@@@@                   @@@@@@@@              @@   ")
escreval ("@@            @@     @@                 @@@@@@         @@@@@@                   @@@@@@@@@@@       @@   ")
escreval ("@@            @@     @@@@@@@@@@@@@@@@@@@@@                  @@@@@@@                       @@@@@@  @@   ")
escreval ("@@            @@      @@@@@@@@@@@@@@@@@@                       @@@@@@@                       @@@@ @@   ")
escreval ("@@            @@                                   @@@               @@@@@@@@                   @@@@   ")
escreval ("@@            @@                              @@@@@@@@@@@@               @@@@@@@@                 @@   ")
escreval ("@@            @@                        @@@@@@@          @@@@@                   @@@@@@@@@@       @@   ")
escreval ("@@            @@                      @@@@@                  @@@@                       @@@@      @@   ")
escreval ("@@            @@                 @@@@@@                         @@@@@                      @@@@@@ @@   ")
escreval ("@@            @@               @@@                                   @@                         @@@@   ")
escreval ("@@            @@          @@@@@                                       @@@@@                      @@@   ")
escreval ("@@            @@       @@@@                                                @@                     @@   ")
escreval ("@@            @@   @@@@@                                                    @@@@@                 @@   ")
escreval ("@@            @@@@@@                                                             @@@              @@   ")
escreval ("@@         @@@@@@                                                                  @@@@           @@   ")
escreval ("@@     @@@@@                                                                          @@@@        @@   ")
escreval ("@@  @@@@@@                                                                               @@@@     @@   ")
escreval ("@@@@@                                                                                       @@@@@@@@   ")
escreval ("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   ")

   escreval()

   escreval("VOCÊ TEM CERTEZA DE ESCOLHER O ELEMENTO DRAGÃO?")
   escreval ("1 - SIM || 2 - NÃO")
   leia(escolhaD)
   limpatela
   se escolhaD = "1" entao

      escreval("VC ESCOLHEU O ELEMENTO DRAGÃO")
      escreval("-------------------------------------------")
      escreval("Agora você irá trilhar o caminho das torres para chegar ao desafio final, boa sorte...")
      escreval("-------------------------------------------")
      dragaoV <- 1
      personagem <- dragaoV

      timer 2500
      limpatela()
      timer 0


      escreval("Você deseja ver o status da sua classe?")
      escreval ("1 - SIM || 2 - NÃO")
      leia(status)

      se status = "1" entao
         elemento <- 0
         mostrar_Status_D()
         torre()
      senao
         torre()

         elemento <- 0
      fimse

   senao
      elemento <- 1
      limpatela()
   fimse

fimprocedimento



procedimento cenario_dragao
Var
   escolha_acao : inteiro
inicio
   limpatela

   escreval ("                                @@@@@@@@@@@@@@@                                                  @@@@ ")                                                                                                                                    @@@@@@@
   escreval ("                               @@@@@@@@@@@@@@@                                              @@@@@@@@  ")
   escreval ("                                      @@@@@                                               @@@@    @@  ")
   escreval ("            @@@                    @@@@@@@@                                              @@@@     @@  ")
   escreval ("          @@@@@                    @@@@@                                               @@@@       @@   ")
   escreval ("          @@@@@                 @@@@@@@                        @@@@@@@@              @@@@         @@   ")
   escreval ("          @@@@@                 @@@@@                              @@               @@@           @@   ")
   escreval ("          @@@@@@             @@@@@@@@@@@@@@@@@@@                @@@@@@@        @@@@@@             @@   ")
   escreval ("         @@@@@@@             @@@@@@@@@@@@@@@@@@@               @@@@@@@@       @@@@@             @@@@   ")
   escreval ("         @@@@@@@@@                                                         @@@@@               @@@@    ")
   escreval ("         @@@@@@@@@@                                                    @@@@@@@@              @@@@@@    ")
   escreval ("         @@@@@@@@@@                                           @@@@@@@@@@@@@                  @@@@     ")
   escreval ("         @@@@@@@ @@@@                                   @@@@@@@@@  @@@@                     @@        ")
   escreval ("          @@@@@@@@@@@@@                         @@@@@@@@@        @@@                      @@@@        ")
   escreval ("          @@@  @@@@ @@@@                      @@@@@@                                      @@@@       ")
   escreval ("          @@@@@@@@@ @@@@@@                 @@@@@@@@                                      @@@@        ")
   escreval ("          @@@@@  @@  @@@@@@               @@@@@                                        @@@@@@@       ")
   escreval ("            @@@  @@@@  @@@@@@           @@@@@@                                         @@@@@@@@@@@   ")
   escreval ("             @@@  @@@     @@@@          @@@                                          @@@        @@@@ ")
   escreval ("             @@@@@  @@@@    @@@@@@  @@@@@                                           @@@@             ")
   escreval ("               @@@   @@@@@@@@@@@@@@@@@@@                                         @@@@@@              ")
   escreval ("               @@@@@@@@@@@@@@@@@@@@@@@     @@@@@@@@      @@@@@@                @@@@@@                ")
   escreval ("               @@@@@@@@@    @@@@@@@        @@@@@@@@      @@@@@@             @@@@@@@                 ")
   escreval ("                 @@@@@@@                     @@@@@@@@@@@@@@@@               @@@@                    ")
   escreval ("                 @@@ @@@                                                    @@@                      ")
   escreval ("                 @@                                                        @@@@         @@@@@@@@@@   ")
   escreval ("                 @@@@                                                     @@@@@  @@@@@@@@@@@@@@@@@@   ")
   escreval ("                 @@@@                                @@@@@@@@@              @@@@@@@@@@@@@@@@@@@@@@    ")
   escreval ("                  @@@@@                       @@@@@@@@@@@@@@@@                @@@@      @@@@@@@@      ")
   escreval ("                  @@@@@@@@@@@@@@@@@@@@    @@@@@@@@@@@@@                              @@@@@@           ")
   escreval ("                     @@@           @@@@@@@@@@                                       @@@               ")
   escreval ("                     @@@@@@                                                      @@@@                 ")
   escreval ("                        @@@@@                                                  @@@@                  ")
   escreval ("                        @@@@@@@@       @@@@@@@@@@@@@@@@@@                   @@@@@@                   ")
   escreval ("                            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@             @@@@@@@                     ")
   escreval ("                             @@@@@@@@@@@@             @@@@@@@@@@@@@@@@@@@@@@@@@                      ")
   escreval ("                                                              @@@@@@@@@@@@                           ")
   escreval ("                                                                                                     ")
   escreval ("-----------------------------------------------------------------------------------------------------")
   escreval ("-----------------------------------------------------------------------------------------------------")
   escreval ("VOCÊ ADENTRA O ANDAR MISTERIOSO E SE SEPARA COM UM ENORME DRAGÃO DORMINDO, O QUE VOCÊ DECIDE FAZER???")
   escreval("1- CONVERSAR COM DRAGÃO || 2- ATACÁ-LO COVARDEMENTE || 3- TENTAR IR EMBORA E FINGIR QUE NUNCA VIU AQUILO")
   leia(escolha_acao)


   escolha escolha_acao
   caso 1
      historia_conversar_dragao()
   caso 2
      se trioTFS <> 0 entao
         luta_trio_dragao()
      senao
         se elementosDuplas <> 0 entao
            luta_dragao_dupla()
         senao
            luta_dragao()
         fimse
      fimse
   caso 3
      ir_embora_dragao()
   fimescolha

   escolha_torre <- 0
fimprocedimento


// hitoria do Dragão //

procedimento historia_conversar_dragao
Var
      dado : inteiro
      x : caractere
   Inicio
      limpatela()
      escreval("=== CONVERSA COM O DRAGÃO ===")
      escreval("Voce se aproxima do Dragão adormecido e chama sua atenção...")
      escreval("Ele abre um olho. Vasto. Antigo. Cansado.")
      escreval("")
      escreval("DRAGÃO: 'Outro que veio tirar o meu sossego... ou me libertar?'")
      escreval("")
      escreval("Voce tenta convencer o Dragão a seguir a causa...")
      escreval("Role o D20! Tire de 11 a 20 para convencer, menos que isso a batalha começa!")
      escreval("Pressione ENTER para rolar o dado...")
      leia(x)

      aleatorio 1,20
      leia(dado)
      aleatorio off
      escreval("Voce tirou: ", dado, " no D20!")
      
     se personagem = fadaV entao
      dado <- dado + 6
     fimse
      
      se dado >= 11 entao
         escreval("Você encara o dragão por alguns instantes antes ")
         escreval("de falar, com a voz cansada, mas sincera.")
         escreval("Eu tô cansado disso tudo… cansado dessas torres,")
         escreval("dessa prisão sem fim")
         escreval("Nós merecemos mais do que existir aqui dentro. ")
         escreval("Merecemos uma vida com algum propósito… algo maior ")
         escreval("do que essas paredes e batalhas eternas.")
         escreval("DRAGÃO: 'Hmm... Há algo diferente em você.'")
         escreval("DRAGÃO: 'Tudo bem. Eu irei... mas não por você.'")
         escreval("DRAGÃO: 'Pelo que virá depois.'")
         escreval("")
         escreval("SUCESSO! Você convenceu o Dragão a se juntar à causa!")
         torreDragao <- 1
         dragaoV <- 1
         reunir_elementos <- reunir_elementos + 2
         verificar_dragao()
      senao
         escreval("")
         escreval("DRAGAO: 'Palavras vazias! Prove seu valor com a força!'")
         escreval("FALHOU! O Dragao ficou furioso e parte para o ataque!")
         timer 2000
         timer 0
            se trioTFS <> 0 entao
             luta_trio_dragao()
             senao
            se elementosDuplas <> 0 entao
               luta_dragao_dupla()
            senao
               luta_dragao()
            fimse
          fimse
      fimse

      escreval("Pressione ENTER para continuar...")
      leia(x)


fimprocedimento

procedimento verificar_dragao
        Inicio
        
       se elementosDuplas = 0 entao
           se personagem = fadaV entao
              duplaFD <- 1
              elementosDuplas <- 1
           fimse

           se personagem = trevasV entao
              duplaDT <- 4
              elementosDuplas <- 1
           fimse

           se personagem = sagradoV entao
              duplaDS <- 5
              elementosDuplas <- 1
           fimse
       fimse

          se elementosDuplas <> 0 entao
              se duplaTS = 6 entao
                 trioDTS <- 1
              fimse

              se duplaFT = 3 entao
                 trioFTD <- 1
              fimse

              se duplaFS = 2 entao
                  trioSDF <- 1
              fimse
          fimse

       se trioTFS <> 0 entao
          quatroElementos <- 1
       fimse
fimprocedimento



// luta do dragao //

procedimento luta_dragao
Var

   z : inteiro
inicio

   enquanto vida_dragao > 0 faca

      // cenario da fada vs dragao

      se personagem = fadaV entao
         fada_BossDragao()
      fimse

   // trevas vs dragão
          se personagem = trevasV entao
             trevas_BossDragao()
          fimse

   // sagrado vs dragão
       se personagem = sagradoV entao
            sagrado_BossDragao()
       fimse

 fimenquanto
         timer 3500
         limpatela()
         timer 0
 
        // fada e dragão dupla
          se personagem = fadaV entao
            se hpF <= 0 entao
               escreval("VOCÊ PERDEU")
               reunir_elementos <- 8
               fadaV <- 0
            senao
               escreval("VOCÊ VENCEU O DRAGÃO COM A FADA")
               escreval("DRAGÃO  SE JUNTOU A CAUSA")
               torreDragao <- 1
               dragaoV <- 1
               elementosDuplas <- fadaV + dragaoV
               duplaFD <- 1
            fimse
          fimse

          // TREVAS E DRAGÃO DUPLA
            se personagem = trevasV entao
             se hpT <= 0 entao
                escreval("VOCÊ PERDEU")
                reunir_elementos <- 8
                trevasV <- 0
            senao
               escreval("VOCÊ VENCEU O DRAGÃO COM AS TREVAS")
               escreval("DRAGÃO SE JUNTOU A CAUSA")
               torreDragao <- 1
               dragaoV <- 1
               elementosDuplas <- trevasV + dragaoV
               duplaDT <- 4
            fimse
          fimse

          // SAGRADO E DRAGÃO DUPLA
            se personagem = sagradoV entao
               se hpS <= 0 entao
                escreval("VOCÊ PERDEU")
                reunir_elementos <- 8
                sagradoV <- 0
            senao
               escreval("VOCÊ VENCEU O DRAGÃO COM O SAGRADO")
               escreval("O DRAGÃO SE JUNTOU A CAUSA")
               torreDragao <- 1
               dragaoV <- 1
               elementosDuplas <- sagradoV + dragaoV
               duplaDS <- 5
            fimse
          fimse
       
       
         escreval("IR PARA OUTRO ANDAR")
         escreval("Pressione ENTER para continuar...")
         leia(z)
         
fimprocedimento

procedimento fada_BossDragao
   var
     x, y, turno_perdido : inteiro

     Inicio

       enquanto vida_dragao > 0 faca
         timer 3500
         limpatela()
         timer 0
       
            escreval("ART")

         escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)
         escreval()
         escreval()
         escreval("VIDA DO DRAGÃO ", vida_dragao)

         aleatorio 1,20
         escreval("DRAGÃO ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off



         se turno_perdido = 1 entao
            turno_perdido <- 0
            escreval("DRAGÃO DORMINDO")
         senao
            se x >= 16 entao
               hpF <- hpF - ataqueBossD
               escreval("DRAGÃO ACERTOU O ATAQUE")
            senao
               escreval("DRAGÃO ERROU O ATAQUE")
            fimse
         fimse

         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - FAZ O BOSS DORMIR           ||")
         escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 35           ||")
         escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueF)
            y <- 0
         escolha ataqueF

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y > 6 entao
               vida_dragao <- vida_dragao - ataqueFB
               escreval("FADA ACERTOU O ATAQUE")
            senao
               escreval("FADA ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 30 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  escreval("FADA ACERTOU O ATAQUE")
                  turno_perdido <- 1
                  manaF <- manaF - 30
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 30
               fimse
            fimse
         caso 3
            se hpF >= 100 entao
               escreval("SUA VIDA ESTA NO MÁXIMO")
            senao
               se manaF < 20 entao
                  escreval("FADA NÃO TEM MANA SUFICENTE")
               senao
                  escreval("FADA ACERTOU O ATAQUE")
                  hpF <- hpF + ataqueFV
                  manaF <- manaF - 20
               fimse
            fimse
         caso 4
         aleatorio 1,20
         leia(y)
         aleatorio off

         se manaF < 10 entao
            escreval("FADA NÃO TEM MANA SUFICENTE")
         senao
            se y > 6 entao
               escreval("FADA ACERTOU O ATAQUE")
               vida_dragao <- vida_dragao - ataqueFF
               manaF <- manaF - 10
            senao
               escreval("FADA ERROU O ATAQUE")
               manaF <- manaF - 10
            fimse
         fimse
      fimescolha

      se hpF <= 0 entao
         vida_dragao <- 0
         escolha_torre <- 0
         torreDragao <- 1
      fimse

       fimenquanto
fimprocedimento

procedimento trevas_BossDragao
   var
     x, y, reduzT : inteiro
     resultado , porcentagem : real
     Inicio

       porcentagem <- 30

 resultado <- ataqueBoss * (porcentagem / 100)


       enquanto vida_dragao > 0 faca
          timer 3500
         limpatela()
         timer 0
       
           escreval("ART")
            escreval("VIDA DAS TREVAS" , hpT, " MANA DAS TREVAS",manaT)
            escreval()
            escreval()
            escreval("VIDA DO DRAGÃO ", vida_dragao)

            aleatorio 1,20
            escreval("DRAGÃO ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

            se reduzT = 1 entao
               reduzT <- 0
               ataqueBossD <- ataqueBossD - resultado
            senao
               se x >= 16 entao
                  hpT <- hpT - ataqueBossD
                  escreval("DRAGÃO ACERTOU O ATAQUE")
               senao
                  escreval("DRAGÃO ERROU O ATAQUE")
               fimse
            fimse

            escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
         escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 10      ||      DO BOSS EM 30%              ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueT)
               y <- 0
            escolha ataqueT

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_dragao <- vida_dragao - ataqueTB
                  escreval("TREVAS ACERTOU O ATAQUE")
               senao
                  escreval("TREVAS ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 25 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     manaT <- manaT - 25
                     vida_dragao <- vida_dragao - ataqueTF
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 25
                  fimse
               fimse
            caso 3
               aleatorio 1,20
               leia(y)
               aleatorio off
               se manaT < 20 entao
                  escreval("TREVAS NÃO TEM MANA SUFICIENTE")
               senao
                  se  y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_dragao <- vida_dragao - ataqueTBV
                     hpT <- hpT + ataqueTRV
                     reduzT <- 1
                     manaT <- manaT - 20
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 20
                  fimse
               fimse

            caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaT < 30 entao
               escreval("TREVAS NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("TREVAS ACERTOU O ATAQUE")
                  vida_dragao <-  vida_dragao - ataqueTRV
                  manaT <- manaT - 30
                  ataqueBossD <- ataqueBossD - resultado
               senao
                  escreval("TREVAS ERROU O ATAQUE")
                  manaT <- manaT - 30
               fimse
            fimse
         fimescolha

           se hpT <= 0 entao
            vida_dragao <- 0
            escolha_torre <- 0
            torreDragao <- 1
         fimse

       fimenquanto

fimprocedimento

procedimento sagrado_BossDragao
   var
     x, y, elemento_escolhido : inteiro

     Inicio
     
       enquanto vida_dragao > 0 faca
          timer 3500
         limpatela()
         timer 0
       
       
       
         escreval("VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS)
         escreval("VIDA DO DRAGÃO", vida_dragao)

         escreval("ART")

         escreval()
         escreval()

         aleatorio 1,20
         escreval("DRAGÃO ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

            se x <= 16 entao
               escreval("DRAGÃO ERROU O ATAQUE")
            senao
               se elemento_escolhido = 2 entao
                 elemento_escolhido <- 0
                 escreval("O ATAQUE DO DRAGÃO FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
                senao
                 hpS <- hpS - ataqueBossD
               escreval("DRAGÃO ACERTOU O ATAQUE")
            fimse
           fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)

             y <- 0
         escolha ataqueS

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 11 entao
               vida_dragao <-  vida_dragao - ataqueSB
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("SAGRADO ACERTOU O ATAQUE")
                  vida_dragao <- vida_dragao - ataqueSF
                  manaS <- manaS - 25
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
                  manaS <- manaS - 25
               fimse
            fimse
         caso 3
            se manaS < 20 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
              se hpS >= 130 entao
                  escreval("VIDA DO SAGRADO NO MÁXIMO")
                  escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                  ataqueSB <- ataqueSB + 6
                  ataqueSF <- ataqueSF + 12
                  manaF <- manaF - 30
                senao
                 escreval("SAGRADO SE CUROU COM A HABILIDADE E")
                 escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                 ataqueSB <- ataqueSB + 6
                 ataqueSF <- ataqueSF + 12
                 hpS <- hpS + ataqueSV
                 manaS <- manaS - 30
              fimse
           fimse
         caso 4
            se manaT < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               escreval("SAGRADO USOU BLOQUEIO CONTRA O ATAQUE DO DRAGÃO")
               elemento_escolhido <- 1
            fimse

         fimescolha

         se hpS <= 0 entao
            vida_dragao <- 0
            escolha_torre <- 0
            torreDragao <- 1
         fimse
       
       fimenquanto
     
fimprocedimento



// duplas possiveis vs dragão
procedimento luta_dragao_dupla
Var
    n: inteiro
Inicio

   
   enquanto vida_dragao > 0 faca

// trevas e fada
    se duplaFT = 3 entao
       duplaFT_BossDragao()
   fimse

// trevas e sagrado vs dragao
        se duplaTS = 6 entao
           duplaTS_BossDragao()
        fimse

// sagrado e fada vs dragao
       se duplaFS = 2 entao
          duplaFS_BossDragao
       fimse

fimenquanto

         // formação de trios

        //  FADA E TREVAS DRAGÃO
       se duplaFT = 3 entao
        se (hpT > 0) e (hpF > 0) entao
            escreval("A DUPLA TREVAS E FADA VENCENRAM O DRAGÃO")
            trioFTD <- 1
            escolha_torre <- escolha_torre + 2
            torreDragao <- 1
            dragaoV <- 1
            elementosDuplas <- 0
           senao
           se (hpF <= 0) e (hpT <= 0) entao
            reunir_elementos <- 8
             fadaV <- 0
             trevasV <- 0
             duplaFT <- 0
             escreval("art- todos morreram")
            // colocar um procedimento de imagem perdedor aqui
            senao
             se hpF <= 0 entao
              escreval("FADA MORREU NA LUTA")
              escreval("TREVAS VENCEU O DRAGÃO")
              escolha_torre <- escolha_torre + 2
              torreDragao <- 1
              dragaoV <- 1
              fadaV <- 0
              duplaFT <- 0
              duplaDT <- 4
              dragaoV <- 1
              // caso morra a fada vira dupla
              senao
               se hpt <= 0 entao
                escreval("TREVAS MORREU NA LUTA")
                escreval("FADA VENCEU O DRAGÃO")
                escolha_torre <- escolha_torre + 2
                torreDragao <- 1
                trevasV <- 0
                duplaFT <-0
                duplaFD <- 1
                dragaoV <- 1
               fimse
              fimse
             fimse
            fimse
            fimse
         // SAGRADO, TREVAS E DRAGÃO
        se duplaTS = 6 entao
         se (hpD > 0) e (hpS > 0) entao
            escreval("A DUPLA  VENCENRAM O DRAGÃO")
            trioDTS <- 1
            escolha_torre <- escolha_torre + 2
            torreDragao <- 1
            dragaoV <- 1
            elementosDuplas <- 0
           senao
           se (hpS <= 0) e (hpT <= 0) entao
            reunir_elementos <- 8
            trevas <- 0
            sagradoV <- 0
             escreval("art- todos morreram")
            // colocar um procedimento de imagem perdedor aqui
            senao
             se hpT <= 0 entao
              escreval("TREVAS MORREU NA LUTA")
              escreval("SAGRADO VENCEU O DRAGÃO")
              escolha_torre <- escolha_torre + 2
              torreDragao <- 1
              trevasV <- 0
              dragaoV <- 1
              duplaTS <- 0
              duplaDS <- 5
              // caso morra a fada vira dupla
              senao
               se hpS <= 0 entao
                escreval("SAGRADO MORREU NA LUTA")
                escreval("TREVAS VENCEU O DRAGÃO")
                escolha_torre <- escolha_torre + 2
                torreDragao <- 1
                dragaoV <- 1
                sagradoV <- 0
                duplaTS <- 0
                duplaDT <- 4
               fimse
              fimse
             fimse
            fimse
           fimse
         // FADA, SAGRADO E DRAGAO
        se duplaFS = 2 entao
         se (hpF > 0) e (hpS > 0) entao
            escreval("A DUPLA FADA E SAGRADO VENCENRAM O DRAGÃO")
            trioSDF <- 1
            escolha_torre <- escolha_torre + 2
            torreDragao <- 1
            dragaoV <- 1
            elementosDuplas <- 0
           senao
           se (hpS <= 0) e (hpF <= 0) entao
            reunir_elementos <- 8
             escreval("art- todos morreram")
             fadaV <- 0
             sagradoV <- 0
            // colocar um procedimento de imagem perdedor aqui
            senao
             se hpF <= 0 entao
              escreval("FADA MORREU NA LUTA")
              escreval("SAGRADO VENCEU O DRAGÃO")
              escolha_torre <- escolha_torre + 2
              torreDragao <- 1
              dragaoV <- 1
              // caso morra a fada vira dupla fazer uma variavel pra isso
              // colocar um se para verificar se não morreu
              senao
               se hpS <= 0 entao
                escreval("SAGRADO MORREU NA LUTA")
                escreval("FADA VENCEU O DRAGÃO")
                escolha_torre <- escolha_torre + 2
                torreDragao <- 1
                dragaoV <- 1
                sagradoV <- 0
                duplaFS <- 0
                duplaFD <- 1
               fimse
              fimse
             fimse
            fimse
           fimse
        escreval("ESTA PRONTO PARA IR NA OUTRA TORRE")
        escreval("Pressione ENTER para continuar...")
        leia(n)
        

fimprocedimento



procedimento duplaFT_BossDragao
    Var
     x , y, turno_perdido : inteiro
      resultado, porcentagem : real
      Inicio

        porcentagem <- 30
        resultado <- ataqueBoss * (porcentagem / 100)

      
       enquanto vida_dragao > 0 faca
         se hpF > 0 entao
          se vida_dragao > 0 entao
          timer 3500
         limpatela()
         timer 0
           //
         escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)
         escreval()
         escreval()
         escreval("VIDA DO DRAGÃO ", vida_dragao)

         aleatorio 1,20
         escreval("DRAGÃO ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se turno_perdido = 2 entao
            turno_perdido <- 0
            escreval("DRAGÃO DORMINDO")

         senao
            se x >= 16 entao
               hpF <- hpF - ataqueBossD
               escreval("DRAGÃO ACERTOU O ATAQUE")
            senao
               escreval("DRAGÃO ERROU O ATAQUE")
            fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - FAZ O BOSS DORMIR           ||")
         escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 35           ||")
         escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueF)
            y <- 0
         escolha ataqueF

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y > 6 entao
               vida_dragao <- vida_dragao - ataqueFB
               escreval("FADA ACERTOU O ATAQUE")
            senao
               escreval("FADA ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 30 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y > 6 entao
                  escreval("FADA ACERTOU O ATAQUE")
                  turno_perdido <- 1
                  manaF <- manaF - 30
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 30
               fimse
            fimse
         caso 3
            se hpF >= 100 entao
               escreval("SUA VIDA ESTA NO MÁXIMO")
            senao
               se manaF < 20 entao
                  escreval("FADA NÃO TEM MANA SUFICENTE")
               senao
                  escreval("FADA ACERTOU O ATAQUE")
                  hpF <- hpF + ataqueFV
                  hpT <- hpT + ataqueFV
                  manaF <- manaF - 20
               fimse
            fimse
      caso 4
         aleatorio 1,20
         leia(y)
         aleatorio off

         se manaF < 10 entao
            escreval("FADA NÃO TEM MANA SUFICENTE")
         senao
            se y > 6 entao
               vida_dragao <- vida_dragao - ataqueFF
               manaF <- manaF - 10
            senao
               escreval("FADA ERROU O ATAQUE")
               manaF <- manaF - 10
            fimse
         fimse
      fimescolha

            senao
             interrompa()
             fimse
         fimse
         
            se hpT > 0 entao
               se vida_dragao > 0 entao

               timer 3500
               limpatela()
               timer 0

            escreval("ART")
            escreval("VIDA DAS TREVAS" , hpT, " MANA DAS TREVAS",manaT)
            escreval()
            escreval()
            escreval("VIDA DO DRAGÃO ", vida_dragao)

            aleatorio 1,20
            escreval("DRAGÃO ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

          se urno_perdido = 3 entao
             turno_perdido <- turno_perdido - 1
             escreval("DRAGÃO DORMINDO")
           senao
            se reduzT > 0 entao
               ataqueBossD <- ataqueBossD - resultado
            senao
               se x >= 16 entao
                  hpT <- hpT - ataqueBossD
                  escreval("DRAGÃO ACERTOU O ATAQUE")
               senao
                  escreval("DRAGÃO ERROU O ATAQUE")
               fimse
            fimse

            escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
         escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 10      ||      DO BOSS EM 30%              ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueT)
              y <- 0
            escolha ataqueT

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_dragao <-  vida_dragao - ataqueTB
                  escreval("VOCÊ ACERTOU O ATAQUE")
               senao
                  escreval("VOCÊ ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 25 entao
                  escreval("VOCÊ NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("VOCÊ ACERTOU O ATAQUE")
                     manaT <- manaT - 25
                     vida_dragao <- vida_dragao - ataqueTF
                  senao
                     escreval("VOCÊ ERROU O ATAQUE")
                     manaT <- manaT - 25
                  fimse
               fimse
            caso 3
               aleatorio 1,20
               leia(y)
               aleatorio off
               se manaT < 20 entao
                  escreval("VOCÊ NÃO TEM MANA SUFICIENTE")
               senao
                  se y >= 11 entao
                     escreval("VOCÊ ACERTOU O ATAQUE")
                     vida_dragao <- vida_dragao - ataqueTBV
                     hpT <- hpT + ataqueTRV
                     reduzT <- reduzT + 1
                     manaT <- manaT - 20
                  senao
                     escreval("VOCÊ ERROU O ATAQUE")
                     manaT <- manaT - 20
                  fimse
               fimse

            caso 4
               aleatorio 1,20
               leia(y)
               aleatorio off

            se manaT < 30 entao
               escreval("VOCÊ NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("VOCÊ ACERTOU O ATAQUE")
                  vida_dragao <-  vida_dragao - ataqueTRV
                  manaT <- manaT - 30
                  ataqueBossD <- ataqueBossD - resultado
               senao
                  escreval("VOCÊ ERROU O ATAQUE")
                  manaT <- manaT - 30
               fimse
            fimse
         fimescolha

          senao
           interrompa()
          fimse
      fimse
       
       fimenquanto
fimprocedimento

procedimento duplaTS_BossDragao
     var
      x , y, elemento_escolhido : inteiro
      resultado , porcentagem : real
       Inicio
         porcentagem <- 30

         resultado <- ataqueBoss * (porcentagem / 100)

       
       enquanto vida_dragao > 0 faca
          se hpT > 0 entao
             // VERIFICAR SE A FADA ESTA VIVA
              se vida_dragao > 0 entao

             timer 3500
         limpatela()
         timer 0

            escreval("ART")
            escreval("VIDA DAS TREVAS" , hpT, " MANA DAS TREVAS",manaT)
            escreval()
            escreval()
            escreval("VIDA DA FADA ", vida_dragao)

            aleatorio 1,20
            escreval("FADA ATACANDO ROLANDO D20")
            leia(x)
            aleatorio off

           se elemento_escolhido = 1 entao
             elemento_escolhido <- 0
             escreval("O ATAQUE DA DRAGÃO FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
            senao
            se reduzT > 0 entao
               ataqueBossD <- ataqueBossD - resultado
            senao
               se x >= 16 entao
                  hpT <- hpT - ataqueBossD
                  escreval("DRAGÃO ACERTOU O ATAQUE")
               senao
                  escreval("DRAGÃO ERROU O ATAQUE")
               fimse
            fimse
           fimse

            escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
         escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 10      ||      DO BOSS EM 30%              ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueT)
                y <- 0
            escolha ataqueT

            caso 1
               aleatorio 1,20
               leia(y)
               aleatorio off
               se y >= 11 entao
                  vida_dragao <-  vida_dragao - ataqueTB
                  escreval("TREVAS ACERTOU O ATAQUE")
               senao
                  escreval("TREVAS ERROU O ATAQUE")
               fimse
            caso 2
               aleatorio 1,20
               leia(y)
               aleatorio off

               se manaT < 25 entao
                  escreval("TREVAS NÃO TEM MANA SUFICENTE")
               senao
                  se y >= 11 entao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     manaT <- manaT - 25
                     vida_dragao <- vida_dragao - ataqueTF
                  senao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 25
                  fimse
               fimse
            caso 3
               aleatorio 1,20
               leia(y)
               aleatorio off
               se manaT < 20 entao
                  escreval("TREVAS NÃO TEM MANA SUFICIENTE")
               senao
                  se y <= 11 entao
                     escreval("TREVAS ERROU O ATAQUE")
                     manaT <- manaT - 20
                   senao
                    se hpT >= 120 entao
                     escreval("VIDA NO MÁXIMO")
                     vida_dragao <- vida_dragao - ataqueTBV
                     reduzT <- 1
                     manaT <- manaT - 20
                    senao
                     escreval("TREVAS ACERTOU O ATAQUE")
                     vida_dragao <- vida_dragao - ataqueTBV
                     hpT <- hpT + ataqueTRV
                     reduzT <- reduzT + 1
                     manaT <- manaT - 20

                  fimse
               fimse
              fimse
         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaT < 30 entao
               escreval("TREVAS NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("TREVAS ACERTOU O ATAQUE")
                  vida_dragao <-  vida_dragao - ataqueTRV
                  manaT <- manaT - 30
                  ataqueBoss <- ataqueBoss - resultado
               senao
                  escreval("TREVAS ERROU O ATAQUE")
                  manaT <- manaT - 30
               fimse
            fimse
         fimescolha

                 senao
                  interrompa()
              fimse
            fimse

            se hpS > 0 entao
             // VERIFICAR SE A FADA ESTA VIVA
              se vida_dragao > 0 entao

              timer 3500
         limpatela()
         timer 0

         escreval("VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS)
         escreval("VIDA DO DRAGÃO", vida_dragao)

         escreval("ART")

         escreval()
         escreval()

         aleatorio 1,20
         escreval("DRAGÃO ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

            se x <= 16 entao
               escreval("DRAGÃO ERROU O ATAQUE")
            senao
               se elemento_escolhido = 2  entao
                 elemento_escolhido <- 0
                 escreval("O ATAQUE DA FADA FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
                senao
                 hpS <- hpS - ataqueBossD
               escreval("DRAGÃO ACERTOU O ATAQUE")
            fimse
           fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)
             y <- 0
         escolha ataqueS

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 11 entao
               vida_dragao <-  vida_dragao - ataqueSB
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("SAGRADO ACERTOU O ATAQUE")
                  vida_dragao <- vida_dragao - ataqueSF
                  manaS <- manaS - 25
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
                  manaS <- manaS - 25
               fimse
            fimse
         caso 3
            se manaS < 20 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
              se hpS >= 130 entao
                  escreval("VIDA DO SAGRADO NO MÁXIMO")
                  escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                  ataqueSB <- ataqueSB + 6
                  ataqueSF <- ataqueSF + 12
                  ataqueTB <- ataqueTB + 4
                  ataqueTF <- ataqueTF + 9
                  ataqueTBV <- ataqueTBV + 4
                  ataqueTRV <- ataqueTRV + 2
                  manaS <- manaS - 30
                senao
                 escreval("SAGRADO SE CUROU COM A HABILIDADE E")
                 escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                 ataqueSB <- ataqueSB + 6
                 ataqueSF <- ataqueSF + 12
                 ataqueTB <- ataqueTB + 4
                 ataqueTF <- ataqueTF + 9
                 ataqueTBV <- ataqueTBV + 4
                 ataqueTRV <- ataqueTRV + 2

                 hpS <- hpS + ataqueSV
                 manaS <- manaS - 30
              fimse
           fimse
         caso 4
            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               escreval("SAGRADO USOU BLOQUEIO CONTRA O ATAQUE DAS TREVAS")
               escreval("           1 - TREVAS || 2 - SAGRADO         ")
               leia(n)
            fimse

         fimescolha

                 senao
                  interrompa()
              fimse
            fimse

       fimenquanto
fimprocedimento

procedimento duplaFS_BossDragao
     var
      x, y,turno_perdido, elemento_escolhido : inteiro
      
      Inicio
      
      
     enquanto vida_dragao > 0 faca
     se hpF > 0 entao
      se vida_dragao > 0 entao
         timer 3500
         limpatela()
         timer 0
         escreval("ART")
         escreval("VIDA DAS DRAGÃO ", vida_dragao)
         escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)

         aleatorio 1,20
         escreval("TREVAS ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off

         se turno_perdido = 2 entao
            turno_perdido <- turno_perdido - 1
            escreval("TREVAS DORMINDO")
         senao
            se elemento_escolhido = 1 entao
               elemento_escolhido <- 0
               escreval("FADA PROTEGIDA ATAQUE BLOQUEADO PELA HABILIDADE DO SAGRADO")
            senao
               se x >= 16 entao
                  hpF <- hpF - ataqueBossD
                  escreval("TREVAS ACERTOU O ATAQUE")
               senao
                  escreval("TREVAS ERROU O ATAQUE")
               fimse
            fimse
         fimse

         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - FAZ O BOSS DORMIR           ||")
         escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 35           ||")
         escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueF)
         y <- 0
         escolha ataqueF

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 6 entao
               vida_dragao <-  vida_dragao - ataqueFB
               escreval("FADA ACERTOU O ATAQUE")
            senao
               escreval("FADA ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 30 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y >= 6 entao
                  escreval("FADA ACERTOU O ATAQUE")
                  vida_dragao <-  vida_dragao - ataqueFF
                  turno_perdido <- 1
                  manaF <- manaF - 30
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 30
               fimse
            fimse
         caso 3
            // CURAR TODOS COLOCAR
            se hpF >= 100 entao
               escreval("SUA VIDA ESTA NO MÁXIMO")
            senao
               se manaF < 20 entao
                  escreval("FADA NÃO TEM MANA SUFICENTE")
               senao
                  escreval("FADA ACERTOU O ATAQUE")
                  hpF <- hpF + ataqueFV
                  hpS <- hpS + ataqueFV
                  manaF <- manaF - 20
               fimse
            fimse
         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 10 entao
               escreval("FADA NÃO TEM MANA SUFICENTE")
            senao
               se y >= 6 entao
                  escreval("FADA ACERTOU O ATAQUE")
                  vida_dragao <-  vida_dragao - ataqueFF
                  manaF <- manaF - 10
               senao
                  escreval("FADA ERROU O ATAQUE")
                  manaF <- manaF - 10
               fimse
            fimse
         fimescolha

      senao
         interrompa()
      fimse
   fimse

   se hpS > 0 entao
      se vida_dragao > 0 entao
         timer 3500
         limpatela()
         timer 0
         escreval("ART")
         escreval("VIDA DAS TREVAS ", vida_dragao)
         escreval("VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS)

         aleatorio 1,20
         escreval("TREVAS ATACANDO ROLANDO D20")
         leia(x)
         aleatorio off
       se turno_perdido = 3 entao
         turno_perdido <- turno_perdido - 1
         escreval("DRAGÃO DORMINDO")
        senao
         se x <= 16 entao
            escreval("TREVAS ERROU O ATAQUE")
         senao
            se elemento_escolhido = 2 entao
               elemento_escolhido <- 0
               escreval("O ATAQUE DAS TREVAS FOI BLOQUEADO PELA HABILIDADE DO SAGRADO")
            senao
               hpS <- hpS - ataqueBossD
               escreval("TREVAS ACERTOU O ATAQUE")
            fimse
         fimse
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)
         y <- 0
         escolha ataqueS

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 11 entao
               vida_dragao <-  vida_dragao - ataqueSB
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("SAGRADO ACERTOU O ATAQUE")
                  vida_dragao <- vida_dragao - ataqueSF
                  manaS <- manaS - 25
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
                  manaS <- manaS - 25
               fimse
            fimse
         caso 3
            // AJUSTADO: Mudado de 20 para 30 no teste inicial para condizer com o gasto real da habilidade
            se manaS < 30 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               se hpS >= 130 entao
                  escreval("VIDA DO SAGRADO NO MÁXIMO")
                  escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                  ataqueSB <- ataqueSB + 6
                  ataqueSF <- ataqueSF + 12
                  ataqueFB <- ataqueFB + 3
                  ataqueFF <- ataqueFF + 6
                  manaS <- manaS - 30
               senao
                  escreval("SAGRADO SE CUROU COM A HABILIDADE E")
                  escreval("SAGRADO AUMENTOU OS STATUS DO SEU ELEMENTO")
                  ataqueSB <- ataqueSB + 6
                  ataqueSF <- ataqueSF + 12
                  ataqueFB <- ataqueFB + 3
                  ataqueFF <- ataqueFF + 6
                  hpS <- hpS + ataqueSV
                  manaS <- manaS - 30
               fimse
            fimse
         caso 4

            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               escreval("ESCOLHA UM ELEMENTO PARA PROTEGER")
               escreval ("1 - FADA || 2 - SAGRADO")
               leia(elemento_escolhido)
               manaS <- manaS - 25
            fimse
         fimescolha

      senao
         interrompa()
      fimse
   fimse

       fimenquanto
fimprocedimento





// trios vs dragao

procedimento luta_trio_dragao
Var
   turno_perdido, x,y, n : inteiro
   elemento_escolhido : inteiro
   porcentagem, resultado  : real
   b : caractere
Inicio

      porcentagem <- 30
      resultado <- ataqueBossD * (porcentagem / 100)


   enquanto vida_dragao > 0 faca
         timer 3500
         limpatela()
         timer 0
      escreval("ART")


      escreval("VIDA DO DRAGÃO ", vida_dragao)

      aleatorio 1,20
      escreval("DRAGÃO ATACANDO ROLANDO D20")
      leia(x)
      aleatorio off

      se turno_perdido = 1 entao
         turno_perdido <- 0
         escreval("DRAGÃO DORMINDO")
      senao
         se x <= 16 entao
            escreval("DRAGÃO ERROU O ATAQUE")
         senao
            se elemento_escolhido = 1 entao
               elemento_escolhido <- 0
               escreval("FADA PROTEGIDA ATAQUE BLOQUEADO PELA HABILIDADE DO SAGRADO")
               hpS <- hpS - ataqueBossD
               hpT <- hpT - ataqueBossD
            senao
               se elemento_escolhido = 2 entao
                  escreval("O SAGRADO SE DEFENDE PELA HABILDADE")
                  elemento_escolhido <- 0
                  hpF <- hpF - ataqueBossD
                  hpT <- hpT - ataqueBossD
               senao
                  se elemento_escolhido = 3 entao
                     elemento_escolhido <- 0
                     escreval("TREVAS PROTEGIDO ATAQUE BLOQUEADO PELA HABILIDADE DO SAGRADO")
                     hpF <- hpF - ataqueBossD
                     hpS <- hpS - ataqueBossD
                  senao
                     hpF <- hpF - ataqueBossD
                     hpS <- hpS - ataqueBossD
                     hpT <- hpT - ataqueBossD
                     escreval("DRAGÃO ACERTOU O ATAQUE")
                  fimse
               fimse
            fimse
         fimse
      fimse


      se hpF > 0 entao
         timer 3500
         limpatela()
         timer 0
         escreval("ART")
         escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)
         escreval("VIDA DO DRAGÃO ", vida_dragao)
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - FAZ O BOSS DORMIR           ||")
         escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 35           ||")
         escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueF)
           y <- 0
         escolha ataqueF

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 6 entao
               vida_dragao <- vida_dragao - ataqueFB
               escreval("A FADA ACERTOU O ATAQUE")
            senao
               escreval("A FADA ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 30 entao
               escreval("A FADA NÃO TEM MANA SUFICENTE")
            senao
               se y >= 6 entao
                  escreval("A FADA ACERTOU O ATAQUE")
                  turno_perdido <- 1
                  manaF <- manaF - 30
               senao
                  escreval("A FADA ERROU O ATAQUE")
                  manaF <- manaF - 30
               fimse
            fimse
         caso 3
            // CURAR TODOS COLOCAR
            se hpF >= 100 entao
               escreval("A FADA VIDA ESTA NO MÁXIMO")
            senao
               se manaF < 20 entao
                  escreval("A FADA NÃO TEM MANA SUFICENTE")
               senao
                  escreval("VOCÊ ACERTOU O ATAQUE")
                  hpF <- hpF + ataqueFV
                  hpS <- hpS + ataqueFV
                  hpT <- hpT + ataqueFV
                  manaF <- manaF - 20
               fimse
            fimse

         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 10 entao
               escreval("A FADA NÃO TEM MANA SUFICENTE")
            senao
               se y >= 6 entao
                  escreval("A FADA ACERTOU O ATAQUE")
                  vida_dragao <- vida_dragao - ataqueFF
                  manaF <- manaF - 10
               senao
                  escreval("A FADA ERROU O ATAQUE")
                  manaF <- manaF - 10
               fimse
            fimse
         fimescolha
      fimse

      se hpS > 0 entao
         timer 3500
         limpatela()
         timer 0
         escreval("ART")
         escreval("VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS )
         escreval("VIDA DO DRAGÃO ", vida_dragao)
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)
            y <- 0
         escolha ataqueS

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 11 entao
               vida_dragao <- vida_dragao - ataqueSB
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("SAGRADO ACERTOU O ATAQUE")
                  vida_dragao <- vida_dragao - ataqueSF
                  manaS <- manaS - 25
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
                  manaS <- manaS - 25
               fimse
            fimse
         caso 3
            se manaS < 20 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               escreval("SAGRADO AUMENTOU OS STATUS DOS ELEMENTOS")
               ataqueFB <- ataqueFB + 3
               ataqueFF <- ataqueFF + 6
               ataqueTB <- ataqueTB + 6
               ataqueTF <- ataqueTF + 14
               ataqueSB <- ataqueSB + 6
               ataqueSF <- ataqueSF + 12

               hpS <- hpS + ataqueSV
               manaS <- manaS - 30
            fimse
         caso 4
            se manaT < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               escreval("ESCOLHA UM ELEMENTO PARA PROTEGER")
               escreval ("1 - FADA || 2 - SAGRADO || 3 - TREVAS")
               leia(elemento_escolhido)
            fimse

         fimescolha
      fimse

      se hpT > 0 entao
         timer 3500
         limpatela()
         timer 0
         escreval("ART")
         escreval("VIDA DA TREVA", hpT, " MANA DAS TREVAS" , manaT )
         escreval("VIDA DO DRAGÃO ", vida_dragao)
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
         escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 10      ||      DO BOSS EM 30%              ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueT)

            y <- 0
         escolha ataqueT

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 11 entao
               vida_dragao <- vida_dragao - ataqueTB
               escreval("TREVAS ACERTOU O ATAQUE")
            senao
               escreval("TREVAS ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaT < 25 entao
               escreval("TREVAS NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("TREVAS ACERTOU O ATAQUE")
                  manaT <- manaT - 25
                  vida_dragao <- vida_dragao - ataqueTF
               senao
                  escreval("TREVAS ERROU O ATAQUE")
                  manaT <- manaT - 25
               fimse
            fimse
         caso 3
            aleatorio 1,20
            leia(y)
            aleatorio off
            se manaT < 20 entao
               escreval("TREVAS NÃO TEM MANA SUFICIENTE")
            senao
               se  y >= 11 entao
                  escreval("TREVAS ACERTOU O ATAQUE")
                  vida_dragao <- vida_dragao - ataqueTBV
                  hpT <- hpT + ataqueTRV
                  manaT <- manaT - 20
               senao
                  escreval("TREVAS ERROU O ATAQUE")
                  manaT <- manaT - 20
               fimse
            fimse

         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaT < 30 entao
               escreval("TREVAS NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("TREVAS ACERTOU O ATAQUE")
                  vida_dragao <- vida_dragao - ataqueTRV
                  manaT <- manaT - 30
                  ataqueBossD <- ataqueBossD - resultado
               senao
                  escreval("TREVAS ERROU O ATAQUE")
                  manaT <- manaT - 30
               fimse
            fimse
         fimescolha
      fimse

   // verificar se o trio está vivo
   se (hpF <= 0) e ( hpS <= 0) e (hpT <= 0) entao
      escreval("O TRIO FOI MORTO EM AÇÃO")
      vida_dragao <- 0
      escolha_torre <- 8
      torreDragao <- 1
      interrompa()
   fimse

fimenquanto

            se (hpS > 0) e (hpF > 0) e (hpT > 0) entao
             dragaoV <- 1
             quatroElementos <- 1
             reunir_elementos <- reunir_elementos + 2
            senao
             se (hpF <= 0) e (hpS <= 0) e (hpT <= 0) entao
                 reunir_elementos <- 8
                 fadaV <- 0
                 sagradoV <- 0
                 trevasV <- 0
                 escreval("TODOS PERDERAM")
                 // procedimento perdeu art
               senao
                se (hpS <= 0) e (hpF <= 0) entao
                  escreval("SAGRADO MORREU EM BATALHA")
                  escreval("FADA MORREU EM BATALHA")
                  escreval("TREVAS VENCEU CONTRA O DRAGÃO")
                  dragaoV <- 1
                  reunir_elementos <- reunir_elementos + 2
                  sagradoV <- 0
                  fadaV <- 0
                  senao
                   se (hpS <= 0) e (hpT <= 0) entao
                     escreval("TREVAS MORREU EM BATALHA")
                     escreval("SAGRADO MORREU EM BATALHA")
                     escreval("FADA VENCEU CONTRA O DRAGÃO")
                     dragaoV <- 1
                     reunir_elementos <- reunir_elementos + 2
                     sagradoV <- 0
                     trevasV <- 0
                     senao
                      se (hpF <= 0) e (hpT <= 0) entao
                         escreval("FADA MORREU EM BATALHA")
                         escreval("TREVAS MORREU EM BATALHA")
                         escreval("SAGRADO VENCEU CONTRA O DRAGÃO")
                         dragaoV <- 1
                         reunir_elementos <- reunir_elementos + 2
                         fadaV <- 0
                         trevasV <- 0
                       senao
                        se hpS <= 0 entao
                           escreval("SAGRADO MORREU EM BATALHA")
                           escreval("DRAGÃO E SAGRADO VENCERAM CONTRA O DRAGÃO")
                           dragaoV <- 1
                           reunir_elementos <- reunir_elementos + 2
                           sagradoV <- 0

                           senao
                            se hpF <= 0 entao
                              escreval("FADA MORREU EM BATALHA")
                              escreval("DRAGÃO E SAGRADO VENCERAM CONTRA O DRAGÃO")
                              dragaoV <- 1
                              reunir_elementos <- reunir_elementos + 2
                              fadaV <- 0
                              senao
                               se hpT <= 0 entao
                                 escreval("TREVAS MORREU EM BATALHA")
                                 escreval("SAGRADO E A FADA VENCERAM CONTRA O DRAGÃO")
                                 dragaoV <- 1
                                 reunir_elementos <- reunir_elementos + 2
                                 trevasV <- 0
                                 fimse
                               fimse
                            fimse
                        fimse
                      fimse
                   fimse
                fimse
            fimse
        escreval("PREPARADO PARA ENFENTRAR O BOSS FINAL")
        escreval("Pressione ENTER para continuar...")
        leia(n)
fimprocedimento

procedimento ir_embora_dragao
  var
      y : inteiro
      x : caractere
   inicio
      limpatela()
      escreval("=== TENTANDO FUGIR ===")
      escreval("Voce tenta sair sem fazer barulho...")
      escreval("Role um D20 para tentar fugir (precisa de 11+)!")
      escreval("Pressione ENTER para rolar...")
      leia(x)
      aleatorio 1,20
      leia(y)
      aleatorio off
      escreval("Voce tirou: ", y, " no D20!")
      se y >= 11 entao
         escreval("CONSEGUIU FUGIR!")
         escreval("O Dragao ronca enquanto voce escapa pelas sombras...")
         escreval("(Você fugiu da torre - o Dragão não foi recrutado)")
         torreDragao <- 0
         escolha_torre <- escolha_torre + 2
      senao
         escreval("VOCE ACORDOU O DRAGÃO!")
         escreval("O Dragao abre um olho e sorri... 'Interessante.'")
         timer 1500
         timer 0
         historia_conversar_dragao()
      fimse
      escreval("Pressione ENTER para continuar...")
      leia(x)

fimprocedimento






// batalha do max
procedimento batalha_final
 var
      resposta_enigma : inteiro
   inicio
      escreval("  ##################################################")
      escreval("  ##   *** TOWER FINAL - O DESAFIO DE MAXWELL ***  ##")
      escreval("  ##################################################")
      timer 2000
      timer 0
escreval ("                     @@@@@@@@                       @@")
escreval ("            @@@@@@@@@@@@ @@ @@@@@@@@@             @@ @@")
escreval ("         @@@@      @@ @@ @@  @@    @@@@         @@@  @@")
escreval ("       @@@@       @@ @@   @@  @@     @@@@     @@@ @ @@")
escreval ("      @@         @@ @@  @  @@  @@       @@  @@@  @ @@")
escreval ("     @@         @@ @@  @ @  @@  @@        @@@  @  @@")
escreval ("    @@    @@@@@@@@@@   @ @   @@ @@@@@@@@@@@  @   @@")
escreval ("   @@    @@     @@ @  @   @  @@@@        @@@@   @@")
escreval ("   @@   @@       @@@  @   @  @@@         @@    @@")
escreval ("   @@   @@         @@@@    @@@ @@@@@@@@   @@  @@")
escreval ("   @@   @@           @@@@@@@ @@@      @@@  @@@@")
escreval ("  @@    @@            @@@  @@          @@   @@")
escreval ("   @@    @@ @@@@@@     @@@ @@            @@  @@")
escreval ("   @@    @@      @@    @@                @@  @@")
escreval ("   @@@@  @@            @@   @@@@@@@      @@  @@")
escreval ("  @@  @  @@ @@@@@@@    @@  @@     @@    @@@  @@")
escreval (" @@ @  @@@ @@  @@@ @   @@  @@  0  @@   @@@@  @@")
escreval ("@@  @@  @@ @@  @@@     @@  @@     @@    @@@ @@")
escreval ("@@ @  @@@@   @@@@@     @@@  @@@@@@@       @@@@")
escreval ("@@ @   @@            @ @@@@                @@")
escreval (" @@ @ @@@            @ @@@@@@  @@          @@")
escreval ("  @@   @@            @ @@ @@@   @@         @@")
escreval ("   @@@@@@           @  @@        @@       @@")
escreval ("      @@           @   @@         @@@@@@@@@@")
escreval ("      @@            @@ @@  @  @  @@       @@")
escreval ("      @@       @@      @@  @  @  @@       @@")
escreval ("     @@       @@@@@@@@@@@@@@@@@@@@       @@")
escreval ("       @@      @@      @@  @  @  @       @@")
escreval ("        @@      @@     @@  @  @         @@")
escreval ("         @@      @@    @@              @@")
escreval ("         @@       @@@@@@            @@@")
escreval ("           @@@         @@          @@@")
escreval ("             @@@       @@        @@@")
escreval ("               @@@     @@      @@@")
escreval ("                 @@@@@@@@@@@@@@@")
      escreval("")
      escreval("  >>> MAXWELL, O CRIADOR DAS TORRES, SURGE DAS SOMBRAS <<<")
      timer 3000
      timer 0

      se (dragaoV = 1) e (fadaV = 2) e (sagradoV = 3) e (trevasV = 4) entao

         escreval("========================================================")
         escreval(" MAXWELL: Ah... você chegou até mim com todos os quatro")
         escreval("  elementos. Impressionante. Mas antes de me derrotar,")
         escreval("  você deverá provar que realmente merece passar!")
         escreval("========================================================")
         escreval("")
         escreval(" MAXWELL: Diga-me, aventureiro...")
         escreval("")
         escreval(" MAXWELL: O QUE É UM ALGORITMO?")
         escreval("")
         escreval("  1 - É um programa de computador escrito em C ou Python.")
         escreval("")
         escreval("  2 - É uma sequência finita de instruções bem definidas")
         escreval("      e ordenadas para resolver um problema ou executar")
         escreval("      uma tarefa.")
         escreval("")
         escreval("  3 - É um tipo de hardware usado para processar dados")
         escreval("      mais rapidamente em servidores.")
         escreval("")
         escreval("  4 - É o nome dado ao conjunto de bugs encontrados")
         escreval("      em um software durante os testes.")
         escreval("")
         escreval("========================================================")
         escreval(" QUAL É A SUA RESPOSTA? (1, 2, 3 ou 4)")
         escreval("========================================================")
         leia(resposta_enigma)

         se resposta_enigma = 2 entao
            escreval("========================================================")
            escreval(" MAXWELL: ...")
            timer 2000
            timer 0
            escreval(" MAXWELL: Você... acertou.")
            timer 1500
            timer 0
            escreval(" MAXWELL: Interessante. Voce entendeu o que eu realmente")
            escreval("  queria testar.")
            escreval(" MAXWELL: Você percorreu por todo o caminho e entendeu a")
            escreval(" a mensagem.")
            escreval(" MAXWELL: Vocês estão livres")
            escreval("Os elementos descem as escadas da torre e partem á um novo")
             escreval("propósito.")
            escreval("========================================================")
            timer 2000
            timer 0
            escreval("  ****************************************************")
            escreval("  *                                                  *")
            escreval("  *   DRAGAO + FADA + TREVAS + SAGRADO = VITORIA!   *")
            escreval("  *                                                  *")
            escreval("  ****************************************************")
            timer 2000
            timer 0
            escreval("  ****************************************************")
            escreval("  *                                                  *")
            escreval("  *    VOCE NÃO TRANCOU O CURSO.                    *")
            escreval("  *    VOCÊ ENTENDEU O SISTEMA.                     *")
            escreval("  *                                                  *")
            escreval("  *  Voêe provou que aprendeu lógica e algoritmos!  *")
            escreval("  *  Parabéns por salvar todos os elementos!!!      *")
            escreval("  *                                                  *")
            escreval("  ****************************************************")
         senao
            escreval("========================================================")
            escreval(" MAXWELL: ERRADO!")
            timer 1500
            timer 0
            escreval(" MAXWELL: Você chegou ate aqui... e ainda não entendeu.")
            escreval(" MAXWELL: Sem conhecimento, nao irá a lugar algum!")
            escreval("========================================================")
            timer 2000
            timer 0
            escreval("  ****************************************************")
            escreval("  *                                                  *")
            escreval("  *         VOCE TRANCOU O CURSO!!!                 *")
            escreval("  *                                                  *")
            escreval("  *  Os elementos se dispersaram... MAXWELL venceu. *")
            escreval("  *  Volte a estudar e tente novamente!             *")
            escreval("  *                                                  *")
            escreval("  ****************************************************")
            batalha_finalBoss()
         fimse

      senao
         escreval("========================================================")
         escreval(" MAXWELL: Voce ousou me desafiar sem reunir todos?")
         escreval("")
         escreval(" MAXWELL: Voce FALHOU em trilhar o caminho e nao pode")
         escreval("  salvar todos os elementos. Sem eles, voce nada e.")
         escreval("========================================================")
         timer 2000
         timer 0
         escreval("  ****************************************************")
         escreval("  *                                                  *")
         escreval("  *         VOCE TRANCOU O CURSO!!!                 *")
         escreval("  *                                                  *")
         escreval("  *  Voce nao reuniu todos os elementos a tempo.    *")
         escreval("  *  MAXWELL venceu sem nem precisar do enigma!     *")
         escreval("  *                                                  *")
         escreval("  ****************************************************")
      fimse
fimprocedimento

procedimento veri
   inicio
      // Condicao de acesso ao enigma do Maxwell:
      // TODOS os 4 elementos precisam estar recrutados.
      // fadaV usa valor 2 porque e o codigo especial da Fada.
      se (dragaoV = 1) e (fadaV = 2) e (sagradoV = 3) e (trevasV = 4) entao
         escreval("========================================")
         escreval("  TODOS OS ELEMENTOS FORAM RECRUTADOS! ")
         escreval("========================================")
         escreval(" DRAGAO....  RECRUTADO!")
         escreval(" FADA......  RECRUTADA!")
         escreval(" TREVAS....  RECRUTADO!")
         escreval(" SAGRADO...  RECRUTADO!")
         escreval("========================================")
         escreval("  O CAMINHO PARA O DESAFIO FINAL")
         escreval("       ESTA ABERTO!")
         escreval("========================================")
         timer 3000
         limpatela()
         timer 0

         batalha_final()
      senao
         escreval("========================================")
         escreval("  VOCE AINDA NAO RECRUTOU TODOS OS")
         escreval("    ELEMENTOS. VOLTE AS TORRES!")
         escreval("========================================")
         // Exibe [X] para recrutados e [ ] para faltantes.
         se dragaoV = 1 entao
            escreval("  [X] DRAGAO")
         senao
            escreval("  [ ] DRAGAO")
         fimse
         se fadaV = 2 entao
            escreval("  [X] FADA")
         senao
            escreval("  [ ] FADA")
         fimse
         se trevasV = 4 entao
            escreval("  [X] TREVAS")
         senao
            escreval("  [ ] TREVAS")
         fimse
         se sagradoV = 3 entao
            escreval("  [X] SAGRADO")
         senao
            escreval("  [ ] SAGRADO")
         fimse
         escreval("========================================")
         timer 3000
         timer 0
      fimse
   fimprocedimento


procedimento batalha_finalBoss
     Var
   turno_perdido, x,y, n : inteiro
   elemento_escolhido, escudoD : inteiro
   porcentagem, resultado, escama  : real

Inicio

      porcentagem <- 30
      resultado <- ataqueBossM * (porcentagem / 100)
      escama <- ataqueBossM / 2

   enquanto vida_BossM > 0 faca
         timer 3500
         limpatela()
         timer 0
      escreval("ART")


      escreval("VIDA DO MAX ROBÔ", vida_BossM)

      aleatorio 1,20
      escreval("MAX ATACANDO ROLANDO D20")
      leia(x)
      aleatorio off

      se turno_perdido = 1 entao
         turno_perdido <- 0
         escreval("MAX ROBÔ DORMINDO")
      senao
         se x <= 16 entao
            escreval("MAX ROBÔ ERROU O ATAQUE")
         senao
            se elemento_escolhido = 1 entao
               elemento_escolhido <- 0
               escreval("FADA PROTEGIDA, ATAQUE BLOQUEADO PELA HABILIDADE DO SAGRADO")
               hpS <- hpS - ataqueBossM
               hpT <- hpT - ataqueBossM
               hpD <- hpD - ataqueBossM
            senao
               se elemento_escolhido = 2 entao
                  escreval("O SAGRADO SE DEFENDE PELA HABILDADE")
                  elemento_escolhido <- 0
                  hpF <- hpF - ataqueBossM
                  hpT <- hpT - ataqueBossM
                  hpD <- hpD - ataqueBossM
               senao
                  se elemento_escolhido = 3 entao
                     elemento_escolhido <- 0
                     escreval("TREVAS PROTEGIDO, ATAQUE BLOQUEADO PELA HABILIDADE DO SAGRADO")
                     hpF <- hpF - ataqueBossM
                     hpS <- hpS - ataqueBossM
                     hpD <- hpD - ataqueBossM
                  senao
                    se elemento_escolhido = 4 entao
                      hpF <- hpF - ataqueBossM
                      hpT <- hpT - ataqueBossM
                      hpS <- hpS - ataqueBossM
                    escreval("DRAGÃO PROTEGIDO, ATAQUE BLOQUADO PELA HABLIDADE DO SAGRADO")
                     senao
                     hpF <- hpF - ataqueBossM
                     hpS <- hpS - ataqueBossM
                     hpT <- hpT - ataqueBossM
                     hpD <- hpD - ataqueBossM
                     escreval("MAX ROBÔ ACERTOU O ATAQUE EM TODOS DO GRUPO")
                  fimse
               fimse
            fimse
         fimse
      fimse
    fimse

      se hpF > 0 entao
         timer 3500
         limpatela()
         timer 0
         escreval("ART")
         escreval("VIDA DA FADA" , hpF, " Mana da fada",manaF)
         escreval("VIDA DO DRAGÃO ", vida_BossM)
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - FAZ O BOSS DORMIR           ||")
         escreval("  ESCOLHA       ||     1 - FEITIÇO BÁSICO        ||   2 - CANÇÃO DE NINAR            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 30 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - CURA A EQUIPE - 30      ||  4 - DANO NO BOSS - 35           ||")
         escreval("  FADA          ||     3 - BENÇÃO DIVINA         ||   4 - CANHÃO FLOWER              || ||                               ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 10 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueF)
           y <- 0
         escolha ataqueF

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 6 entao
               vida_BossM <- vida_BossM - ataqueFB
               escreval("A FADA ACERTOU O ATAQUE")
            senao
               escreval("A FADA ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 30 entao
               escreval("A FADA NÃO TEM MANA SUFICENTE")
            senao
               se y >= 6 entao
                  escreval("A FADA ACERTOU O ATAQUE")
                  turno_perdido <- 1
                  manaF <- manaF - 30
               senao
                  escreval("A FADA ERROU O ATAQUE")
                  manaF <- manaF - 30
               fimse
            fimse
         caso 3
            // CURAR TODOS COLOCAR
            se hpF >= 100 entao
               escreval("A FADA VIDA ESTA NO MÁXIMO")
            senao
               se manaF < 20 entao
                  escreval("A FADA NÃO TEM MANA SUFICENTE")
               senao
                  escreval("VOCÊ ACERTOU O ATAQUE")
                  hpF <- hpF + ataqueFV
                  hpS <- hpS + ataqueFV
                  hpT <- hpT + ataqueFV
                  hpD <- hpD + ataqueFV
                  manaF <- manaF - 20
               fimse
            fimse

         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaF < 10 entao
               escreval("A FADA NÃO TEM MANA SUFICENTE")
            senao
               se y >= 6 entao
                  escreval("A FADA ACERTOU O ATAQUE")
                  vida_BossM <- vida_BossM - ataqueFF
                  manaF <- manaF - 10
               senao
                  escreval("A FADA ERROU O ATAQUE")
                  manaF <- manaF - 10
               fimse
            fimse
         fimescolha
      fimse

      se hpS > 0 entao
         timer 3500
         limpatela()
         timer 0
         escreval("ART")
         escreval("VIDA DO SAGRADO", hpS, " MANA DO SAGRADO" , manaS )
         escreval("VIDA DO MAX ROBÔ ", vida_BossM)
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 25       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - LUZ PURIFICADORA      ||   2 - JULGAMENTO DIVINO          || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - AUMENTA OS ATAQUES DA   ||  4 - BLOQUEIA O ATAQUE           ||")
         escreval("  SAGRADO       ||     3 - BENÇÃO CELESTIAL      ||   4 - MARCA BLOQUEIA             || ||       EQUIPE EM 30%           ||      DO BOSS EM UM TURNO         ||")
         escreval("                ||                               ||                                  || || CURA - 20 | GASTA 20 DE MANA  ||      GASTA 25 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueS)
            y <- 0
         escolha ataqueS

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 11 entao
               vida_BossM <- vida_BossM - ataqueSB
               escreval("SAGRADO ACERTOU O ATAQUE")
            senao
               escreval("SAGRADO ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("SAGRADO ACERTOU O ATAQUE")
                  vida_BossM <- vida_BossM - ataqueSF
                  manaS <- manaS - 25
               senao
                  escreval("SAGRADO ERROU O ATAQUE")
                  manaS <- manaS - 25
               fimse
            fimse
         caso 3
            se manaS < 20 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               escreval("SAGRADO AUMENTOU OS STATUS DOS ELEMENTOS")
               ataqueFB <- ataqueFB + 3
               ataqueFF <- ataqueFF + 6
               ataqueTB <- ataqueTB + 6
               ataqueTF <- ataqueTF + 14
               ataqueSB <- ataqueSB + 6
               ataqueSF <- ataqueSF + 12
               ataqueDB <- ataqueDB + 9
               ataqueDF <- ataqueDF + 12
               ataqueDFD <- ataqueDFD + 18
               ataqueTRV <- ataqueTRV + 3
               ataqueTBV <- ataqueTBV + 6
               ataqueSV <- ataqueSV + 6
               ataqueFV <- ataqueFV + 6
               hpS <- hpS + ataqueSV
               manaS <- manaS - 20
            fimse
         caso 4
            se manaS < 25 entao
               escreval("SAGRADO NÃO TEM MANA SUFICENTE")
            senao
               escreval("ESCOLHA UM ELEMENTO PARA PROTEGER")
               escreval ("1 - FADA || 2 - SAGRADO || 3 - TREVAS || 4 - DRAGÃO")
               leia(elemento_escolhido)
            fimse

         fimescolha
      fimse

      se hpT > 0 entao
         timer 3500
         limpatela()
         timer 0
         escreval("ART")
         escreval("VIDA DA TREVA", hpT, " MANA DAS TREVAS" , manaT )
         escreval("VIDA DO MAX ROBÔ ", vida_BossM)
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 20       ||  2 - DANO NO BOSS - 45           ||")
         escreval("  ESCOLHA       ||     1 - ATAQUE BÁSICO         ||   2 - SOMBRA CORRUPTA            || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 25 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - DANO NO BOSS - 20       ||  4 - DIMINUI O ATAQUE            ||")
         escreval("  TREVAS        ||     3 - ROUBO DE VIDA         ||   4 - MARCA SOMBRIA              || ||       ROUBO DE VIDA - 10      ||      DO BOSS EM 30%              ||")
         escreval("                ||                               ||                                  || ||       GASTA 20 DE MANA        ||      GASTA 30 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueT)

            y <- 0
         escolha ataqueT

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off
            se y >= 11 entao
               vida_BossM <- vida_BossM - ataqueTB
               escreval("TREVAS ACERTOU O ATAQUE")
            senao
               escreval("TREVAS ERROU O ATAQUE")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaT < 25 entao
               escreval("TREVAS NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("TREVAS ACERTOU O ATAQUE")
                  manaT <- manaT - 25
                  vida_BossM <- vida_BossM - ataqueTF
               senao
                  escreval("TREVAS ERROU O ATAQUE")
                  manaT <- manaT - 25
               fimse
            fimse
         caso 3
            aleatorio 1,20
            leia(y)
            aleatorio off
            se manaT < 20 entao
               escreval("TREVAS NÃO TEM MANA SUFICIENTE")
            senao
               se  y >= 11 entao
                  escreval("TREVAS ACERTOU O ATAQUE")
                  vida_BossM <- vida_BossM - ataqueTBV
                  hpT <- hpT + ataqueTRV
                  manaT <- manaT - 20
               senao
                  escreval("TREVAS ERROU O ATAQUE")
                  manaT <- manaT - 20
               fimse
            fimse
         caso 4
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaT < 30 entao
               escreval("TREVAS NÃO TEM MANA SUFICENTE")
            senao
               se y >= 11 entao
                  escreval("TREVAS ACERTOU O ATAQUE")
                  vida_BossM <- vida_BossM - ataqueTRV
                  manaT <- manaT - 30
                  ataqueBossM <- ataqueBossM - resultado
               senao
                  escreval("TREVAS ERROU O ATAQUE")
                  manaT <- manaT - 30
               fimse
            fimse
         fimescolha
      fimse
      
      se hpD > 0 entao
         timer 3500
         limpatela()
         timer 0

         escreval("VIDA DO DRAGÃO" , hpD, " MANA DO DRAGÃO",manaD)
         escreval()
         escreval()
         escreval("VIDA DO MAX ROBÔ ", vida_BossM)


         se escudoD = 1 entao
            escudoD <- 0
            ataqueBossM <- ataqueBossM - escama
         fimse
         escreval()
         escreval("|------------------------|------------------------||------------------------||------------------------||------------------------||---------------------------||")
         escreval()
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                ||                               ||                                  || ||   1 - DANO NO BOSS - 30       ||  2 - DANO NO BOSS - 50           ||")
         escreval("  ESCOLHA       ||     1 - MORDIDA               ||   2 - BAFO DE FOGO               || ||                               ||                                  ||")
         escreval("  O             ||                               ||                                  || ||       NÃO GASTA MANA          ||      GASTA 15 DE MANA            ||")
         escreval("  ATAQUE        ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  DO            ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("  ELEMENTO      ||                               ||                                  || ||   3 - REDUZ O DANO DO BOSS    ||  4 - DANO NO BOSS - 65           ||")
         escreval("  DRAGÃO        ||     3 -  ESCAMAS ANCESTRAIS   ||   4 - FURIA DRAGONICA            || ||       EM 50%                  ||                                  ||")
         escreval("                ||                               ||                                  || ||       GASTA 25 DE MANA        ||      GASTA 40 DE MANA            ||")
         escreval("                ||-------------------------------------------------------------------|| ||-------------------------------------------------------------------||")
         escreval("                |---------------------------------------------------------------------| |---------------------------------------------------------------------|")
         leia(ataqueD)

           y <- 0
         escolha ataqueD

         caso 1
            aleatorio 1,20
            leia(y)
            aleatorio off

            se y >= 11 entao
               escreval("DRAGÃO ACERTOU MORDIDA NO MAX ROBÔ")
               vida_BossM <- vida_BossM - ataqueDB
            senao
               escreval("DRAGÃO ERROU A MORDIDA NO MAX ROBÔ")
            fimse
         caso 2
            aleatorio 1,20
            leia(y)
            aleatorio off

            se manaD < 15 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               se y >= 11 entao
                  escreval("DRAGÃO ACERTOU BAFO DE FOGO NO MAX ROBÔ")
                  manaD <- manaD - 15
                  vida_BossM <- vida_BossM - ataqueDF
               senao
                  escreval("DRAGÃO ERROU BAFO DE FOGO NO MAX ROBÔ")
                  manaD <- manaD - 15
               fimse
            fimse
         caso 3
            se manaD < 25 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO AUMENTOU A DEFESA")
               escudoD <- 1
               manaD <- manaD - 25
            fimse
         caso 4
            se manaD < 40 entao
               escreval("DRAGÃO NÃO TEM MANA SUFICIENTE")
            senao
               escreval("DRAGÃO USOU FURIA DRAGONICA")
               vida_BossM <- vida_BossM - ataqueDFD
               manaD <- manaD - 40
            fimse
         fimescolha
       fimse
      
      

   // verificar se o trio está vivo
   se (hpF <= 0) e ( hpS <= 0) e (hpT <= 0) e (hpD <= 0) entao
      escreval("O TRIO FOI MORTO EM AÇÃO")
      fadaV <- 0
      sagradoV <- 0
      dragaoV <- 0
      trevasV <- 0
      vida_dragao <- 0
      escolha_torre <- 8
      interrompa()
   fimse

fimenquanto

      escreval("VOCÊ PERDEU")
       // art tela de morte
fimprocedimento




Inicio


   todosV <- 8
   
   escreval("ESCOLHA A DIFICULTADE DO JOGO")
   escreval("1 - NÍVEL FÁCIL")
   escreval("2 - NÍVEL NORMAL")
   escreval("3 - NÍVEL DIFÍCIL")
   leia(Dificuldade)
  
   repita
    limpatela()
      escreval("O mundo foi dividido em quatro torres, cada uma representando um elemento:")
      escreval("                    DRAGÃO | TREVAS | FADA | SAGRADO                      ")
      escreval("Esses elementos foram aprisionados por Maxwell, o criador das torres, ")
      escreval("que acreditava que o caos do mundo só poderia ser controlado se esses")
      escreval("poderes fossem selados.")
      escreval("Mas existe uma exceção: um dos elementos foi “quebrado” pela própria prisão")
      escreval("ele não aceitou o destino e despertou como o Rebelde, o personagem jogável.")
      escreval("---------------------------------------------------------------------------")
      escreval("                         ----BEM VINDO AO GAME----                         ")
      escreval("                     ----ESCOLHA O ELEMENTO REBELDE----                    ")
      escreval("              1- SAGRADO|| 2- TREVAS || 3- DRAGAO || 4- FADA               ")
      leia(elemento)

      escolha elemento
      caso 1
         dragao()
      caso 2
         trevas()
      caso 3
         sagrado()
      caso 4
         fada()
      fimescolha

   ate(elemento = 0)


   repita
      hpF <- 120
      hpT <- 140
      hpD <- 180
      hpS <- 140
      manaT <- 95
      manaF <- 120
      manaD <- 85
      manaS <- 115
      ataqueFB <- 20
      ataqueFF <- 35
      ataqueFV <- 30
      ataqueSV <- 20
      ataqueDB <- 30
      ataqueDF <- 50
      ataqueTB <- 25
      ataqueTF <- 45
      ataqueSB <- 25
      ataqueSF <- 45
      ataqueDFD <- 65
      ataqueTRV <- 12
      ataqueTBV <- 20

   
      se Dificuldade = 1 entao
         vida_fada <- 130
         vida_trevas <- 150
         vida_dragao <- 240
         vida_sagrado <- 190
         ataqueBossF <- 20
         ataqueBossS <- 25
         ataqueBossD <- 35
         ataqueBossT <- 30
         vida_BossM <- 320
         ataqueBossM <- 40
        senao
          se Dificuldade = 2 entao
          vida_fada <- 160
          vida_trevas <- 190
          vida_dragao <- 300
          vida_sagrado <- 240
          ataqueBossF <- 30
          ataqueBossS <- 35
          ataqueBossD <- 50
          ataqueBossT <- 40
          vida_BossM <- 480
          ataqueBossM <- 60
           senao
            se Dificuldade = 3 entao
              vida_fada <- 210
              vida_trevas <- 250
              vida_dragao <- 390
              vida_sagrado <- 310
              ataqueBossF <- 40
              ataqueBossS <- 45
              ataqueBossD <- 65
              ataqueBossT <- 55
              vida_BossM <- 580
              ataqueBossM <- 80
            fimse
           fimse
         fimse
      timer 4000

      limpatela()

      timer 0

      escreval("========================================")
      escreval("     ESCOLHA UM ANDAR DA TORRE")
      escreval("========================================")
      escreval("1- DRAGÃO ||2- TREVAS ||3- SAGRADO ||4- FADA")
      leia(escolha_torre)

      escolha escolha_torre
      caso 1
         se dragaoV = 1 entao
            escreval(" 1 - DRAGAO    [RECRUTADO]")
         senao
            se torreDragao = 1 entao
               escreval("  1 - DRAGAO    [TORRE CONCLUIDA]")
            senao
               cenario_dragao()
            fimse
         fimse
      caso 2
         se trevasV = 4 entao
            escreval("  2 - TREVAS    [RECRUTADO]")
         senao
            se torreTrevas = 1 entao
               escreval("  2 - TREVAS    [TORRE CONCLUIDA]")
            senao
               cenario_trevas()
            fimse
         fimse
      caso 3
         se sagradoV = 3 entao
            escreval("  3 - SAGRADO   [RECRUTADO]")
         senao
            se torreSagrado = 1 entao
               escreval("  3 - SAGRADO   [TORRE CONCLUIDA]")
            senao
               cenario_sagrado()
            fimse
         fimse
      caso 4
         se fadaV = 2 entao
            escreval("  4 - FADA      [RECRUTADA]")
         senao
            se torreFada = 1 entao
               escreval("  4 - FADA      [TORRE CONCLUIDA]")
            senao
               cenario_fada()
            fimse
         fimse
 fimescolha

   ate(reunir_elementos = todosV)


   escreval("========================================")
   escreval("  1 - IR AO DESAFIO FINAL (MAXWELL)")
   escreval("  2 - SAIR DO JOGO")
   escreval("========================================")
   leia(escolha_final)
   
   escolha escolha_final
          caso 1
             veri()
          caso 2
          
   fimescolha
   
Fimalgoritmo