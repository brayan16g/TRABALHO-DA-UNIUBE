# TRABALHO-DA-UNIUBE

# Trabalho Maxuel Towers

Jogo de RPG baseado em texto desenvolvido em Portugol (VisualG) como trabalho acadêmico. O jogador escolhe um elemento, percorre quatro torres com encontros e combates, e enfrenta o chefe final Maxwell.

---

## Sobre o Projeto

O jogo é inteiramente executado no terminal via VisualG. A interface é construída com arte ASCII e menus de texto. Toda a lógica de combate, progressão e narrativa é implementada em Portugol estruturado, fazendo uso de procedimentos, estruturas de decisão e laços de repetição.

---

## Como Executar

**Requisito:** VisualG 3.0 ou superior instalado.

1. Abra o VisualG.
2. Carregue o arquivo `TRABALHO MAXUEL TOWERS.ALG`.
3. Clique em executar ou pressione F9.

---

## Elementos Jogaveis

O jogador escolhe um dos quatro elementos no inicio da partida. Cada um possui atributos e habilidades proprias.

### Fada
- HP: 100 | Mana: 100 | Ataque basico: 15
- Habilidade especial: cura de 30 pontos para todos os aliados
- Funciona como suporte e sustentacao do grupo

### Dragao
- HP: 180 | Mana: 60 | Ataque basico: 25
- Habilidades: Bafo de Fogo (40 de dano, -15 mana), Escamas Ancestrais (reduz dano recebido em 50%, -25 mana), Furia Draconica (60 de dano, -40 mana)
- Funciona como personagem de alto dano e resistencia

### Trevas
- HP: 120 | Mana: 80 | Ataque basico: 20
- Habilidades: Sombra Corrupta (45 de dano, -25 mana), Roubo de Vida (18 de dano com recuperacao de HP, -20 mana), Marca Sombria (reduz ataque dos inimigos em 30%, -30 mana)
- Funciona como personagem de controle e sustentacao propria

### Sagrado
- HP: 130 | Mana: 110 | Ataque basico: 20
- Habilidades: Julgamento Divino (35 de dano, -25 mana), Bencao Celestial (aumenta ataque da equipe em 20% e cura 20, -30 mana), Escudo Sagrado (bloqueia o proximo dano a um aliado, -35 mana)
- Funciona como suporte ofensivo e protetor

---

## Torres

Apos escolher o elemento, o jogador acessa um mapa com quatro torres. Cada torre possui um cenario narrativo, escolhas de interacao e combate com o elemento correspondente. A ordem de conclusao e livre.

- Torre do Dragao
- Torre das Trevas
- Torre do Sagrado
- Torre da Fada

Em cada torre, o jogador pode tentar recrutar o elemento por meio de dialogo (com rolagem de dado D20) ou enfrenta-lo diretamente em combate. Elementos ja recrutados ou torres ja concluidas ficam marcados no mapa.

---

## Sistema de Sinergias

Conforme o jogador recruta elementos ao longo das torres, combinacoes de dupla e trio desbloqueiam bonus de combate.

Duplas possiveis: Fada+Dragao, Fada+Sagrado, Fada+Trevas, Dragao+Trevas, Dragao+Sagrado, Trevas+Sagrado.

Trios possiveis: Sagrado+Dragao+Fada, Dragao+Trevas+Sagrado, Fada+Trevas+Dragao, Trevas+Fada+Sagrado.

Reunir os quatro elementos desbloqueia o estado de grupo completo.

---

## Dificuldade

O jogo oferece tres niveis de dificuldade, que alteram o HP e o ataque dos chefes de cada torre.

| Dificuldade | HP Fada | HP Trevas | HP Dragao | HP Sagrado |
|-------------|---------|-----------|-----------|------------|
| 1 (Facil)   | 130     | 150       | 240       | 190        |
| 2 (Normal)  | 160     | 190       | 300       | 240        |
| 3 (Dificil) | 210     | 250       | 390       | 310        |

---

## Chefe Final

Apos concluir todas as torres e reunir os elementos, o jogador pode enfrentar Maxwell no desafio final. O encontro e acessado pelo menu principal ao terminar a ultima torre.

---

## Estrutura do Codigo

O algoritmo e organizado em procedimentos separados para cada area funcional.

- `torre` — exibe o mapa principal e controla a navegação entre torres
- `fada`, `dragao`, `trevas`, `sagrado` — selecao e confirmação do elemento do jogador
- `mostrar_Status_F/D/T/S` — exibe os atributos de cada elemento antes de iniciar
- `cenario_fada/dragao/trevas/sagrado` — narrativa e escolhas de cada torre
- `historia_conversar_*` — fluxo de diálogo com rolagem de dado
- `luta_*` / `luta_*_duplas` / `luta_*_triplos` — combate simples, em dupla e em trio
- `verificar_*` — atualiza as sinergias apos recrutar um elemento
- `veri` — verifica o estado do grupo antes do desafio final

---

## Tecnologia

- Linguagem: Portugol (dialeto VisualG)
- Ambiente de execucao: VisualG 3.0
- Interface: texto e arte ASCII no terminal
