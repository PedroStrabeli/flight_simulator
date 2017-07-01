# flight_simulator
This is a graphical computing project with the aim of building a simple flight simulator in Processing language.

# English
translation in progress

# Portuguese
## Arquitetura
O programa se encontra dividido nos seguintes arquivos:
+ flight_simulator.pde: arquivo principal, instancia os elementos e trata a física básica do jogo.
+ camera.pde: realiza as funções de movimento e câmera.
+ controls.pde: escuta eventos e realiza funções ao apertar teclas.
+ indicator.pde: classe dos indicadores, desenha os ponteiros dos indicadores e controla sua rotação.
+ panel.pde: desenha o painel e instancia os indicadores.
+ scene.pde: desenha o cenário (background, chão e pista).

## Código
O programa foi escrito totalmente em _Processing 3_, sem o auxílio de bibliotecas adicionais. As bibliotecas Peasycam e Queasycam foram utilizadas para testes e prospecções, mas foram descartadas ao não atenderem os requisitos propostos. Merecem, entretanto, menção honrosa no auxílio ao entendimento da câmera do Processing.

## Física
Foi desenvolvida uma física rudimentar para o jogo:
Aceleração
Atrito e resistências:
Gravidade: Se mostra quando o avião está em vôo. Sua altitude cai 
Sustentação: A sustentação se mostra no momento em que o avião desenvolve velocidade e consegue levantar vôo. Antes de 140 mph, não existe sustentação suficiente para manter o avião no ar, e ele continua no chão.
 
 
## Controles
Os controles são bastante simples:
 
| Tecla 		| Ação           |
| ------------- |:-------------:|
| W 			| Acelera o motor e faz o avião iniciar seu movimento |
| S 			| Diminui a rotação do motor e freia, diminuindo sua velocidade.      |
| DOWN (seta)	| Puxa o manche: faz o avião decolar caso esteja a mais de 140mph      |
| UP (seta) 	| Empurra o manche, fazendo com que o avião desça (ou nivele)      |


## Como Jogar

Abra o arquivo flight_simulator.pde. Clique em Play, Sketch>Run, ou pressione ctrl+ R no teclado. A seguinte tela abrirá:
 
Será possível aqui apenas acelerar o avião. Segure a tecla W e acompanhe a aceleração do avião. Perceba que se você tentar fazer o avião decolar usando as teclas UP e DOWN, inicialmente não conseguirá.
Se soltar a tecla W, o avião começará a perder velocidade devido ao atrito, resistência do ar e queda de potência do motor. Volte a apertar a tecla W para que ele volte a acelerar.
A partir do momento em que o avião atingir a marca 14 no indicador da velocidade (esquerda), você conseguirá segurar o botão DOWN no teclado, puxando o manche e fazendo o avião decolar. Perceba que isso altera a posição do ponteiro do indicador mais à direita, o indicador de climb, que mostrará que está subindo. Se segurar o botão UP, o ponteiro do indicador cairá, pois o avião começará a diminuir altitude.
Diminuindo devagar a altitude, um pouso suave é possível. Descendo muito rápido, o avião se “acidentará”. Tente pousar suavemente, teste suas habilidades!

## Faltantes
Faltou a implementação de algumas features propostas, como a força do vento, o tamanho limitado da pista e as mensagens de sucesso e falha da simulação. 

## Nice to have
Aqui serão listadas ideias interessantes de aplicar em releases futuros:
+ Opção de trocar o cenário apertando botões numéricos por exemplo. (Trocar background, chão e etc)
+ Som 
+ Manobras laterais
+ Indicador de atitude, rpm e combustível funcionais.
+ Combustível implementado
+ Possível acidentar
+ Stall
+ Pouso

# German
translation in progress