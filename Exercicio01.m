pkg list
pkg install -forge image

## 1. Execute os seguinte comandos e interprete seus resultados

a = 500/10 #500 dividido por 10 = 50
a = 500/10; #500 dividido por 10 mas com ponto e vírgula, entao não exibe no console
b = [1 2 3 4 5 6 7 8 9] #um vetor b com números de 1 a 9
c = [1 2 3;4 5 6;7 8 9] #uma matriz c com 3 linhas e 3 colunas
d = [1 2;3 4;5 6;7 8] #uma matriz d com 4 linhas e 2 colunas
c= [c;[10 11 12]] #acrescentou uma nova linha na matriz com 3 numeros: 10 11 e 12
c(2,2)=0 #trocou o valor do elemento 2x2 da matriz pelo numero 0
k = length(b) # retorna o tamanho do vetor/matriz b(quantidade de elementos)
[m,n] = size(b) #dimensao da matriz b (no caso, um vetor 1x9)
[m,n] = size(c) #dimensao da matriz c (no caso, 4x3)
x = 1:2:9 #
x = 1:2:10 #
y = 2^3 #2 elevado a 3 = 8

## 2. Dada as matrizes A = [1 2; 3 4] e B = [5 6; 7 8],
## execute os seguinte comandos e interprete seus resultados:
A = [1 2;3 4]
B = [5 6;7 8]
A + 5 # soma 5 a todos os elementos da matriz A
A / 2 # divide todos os elementos da matriz A por 2
A + B # soma as duas matrizes (elemento com elemento)
C = A + B # armazena a soma das duas matrizes A e B na matriz C
A * B # faz a multiplicacao das duas matrizes A e B
A .* B # faz a multiplicacao entre as duas matrizes (elemento com elemento)
A / B # faz a divisao das duas matrizes A e B
A ./ B # faz a divisao entre as duas matrizes (elemento com elemento)
C = [A B; B A] #

## 3. Crie um vetor contendo:
## a) Todos os valores de 1 a 20
## b) Todos os valores pares de 1 a 20
## c) Todos os valores impares de 1 a 20
## d) Valores de 0 a 1, intervalados de 0.1
a = 1:20
b = 1:2:20
c = 0:2:20
d = 0:0.1:1

## 4. Dada a matriz A = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]
## a) Crie a matriz B como uma cópia de A, sem a última linha e coluna
## b) Some +1 em todos os elementos pares de A
## c) Remova a primeira coluna de A
A = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]
B = A(1:end-1,1:end-1)
C = mod(A,2)
A = A + (-C)
A(:,1) = []

