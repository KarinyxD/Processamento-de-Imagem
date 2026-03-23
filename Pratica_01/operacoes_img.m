# Kariny Mylena Pereira Abrahão - 212050013

# Exercício 01
##A=zeros(300,300);
##A(25:175,125:175)=1;
##
##B=zeros(300,300);
##B(125:175,25:175)=1;
##
##C=zeros(300,300);
##C(150:300,150:300)=1;

# Exercício 02
##subplot(3,3,1), imshow(A),
##title('Imagem A')
##
##subplot(3,3,2), imshow(B),
##title('Imagem B')
##
##subplot(3,3,3), imshow(C),
##title('Imagem C')
# Plotando as imagens geradas (A, B, C) na mesma janela;
# Onde, a janela tem 3 linhas, 3 colunas de imagens.


# Exercício 03
#Somas e Visualização
##AB = A + B;
##subplot(3,3,4), imshow(AB),
##title('Imagem A + B')
##
##AC = A + C;
##subplot(3,3,5), imshow(AC),
##title('Imagem A + C')
##
##BC = B + C;
##subplot(3,3,6), imshow(BC),
##title('Imagem B + C')
##
###Ordem Fatores
##BA = B + A;
##subplot(3,3,7), imshow(BA),
##title('Imagem B + A')
##
##CA = C + A;
##subplot(3,3,8), imshow(CA),
##title('Imagem C + A')
##
##CB = C + B;
##subplot(3,3,9), imshow(CB),
##title('Imagem C + B')

#Resultados: Podemos visualizar que a ordem dos fatores não altera os resultados
# a soma das matrizes atende a propriedade da comutatividade.

# Exercício 04
#Subtrações e Visualização
##AB = A - B;
##subplot(3,3,4), imshow(AB),
##title('Imagem A - B')
##
##AC = A - C;
##subplot(3,3,5), imshow(AC),
##title('Imagem A - C')
##
##BC = B - C;
##subplot(3,3,6), imshow(BC),
##title('Imagem B - C')
##
###Ordem Fatores
##BA = B - A;
##subplot(3,3,7), imshow(BA),
##title('Imagem B - A')
##
##CA = C - A;
##subplot(3,3,8), imshow(CA),
##title('Imagem C - A')
##
##CB = C - B;
##subplot(3,3,9), imshow(CB),
##title('Imagem C - B')

#Resultados: Podemos visualizar que a ordem dos fatores altera os resultados
# a subtração das matrizes não atende a propriedade da comutatividade.

# Exercício 05
#Multiplicações e Visualização
##AB = A * B;
##subplot(3,3,4), imshow(AB),
##title('Imagem A * B')
##
##AC = A * C;
##subplot(3,3,5), imshow(AC),
##title('Imagem A * C')
##
##BC = B * C;
##subplot(3,3,6), imshow(BC),
##title('Imagem B * C')
##
###Ordem Fatores
##BA = B * A;
##subplot(3,3,7), imshow(BA),
##title('Imagem B * A')
##
##CA = C * A;
##subplot(3,3,8), imshow(CA),
##title('Imagem C * A')
##
##CB = C * B;
##subplot(3,3,9), imshow(CB),
##title('Imagem C * B')

#Resultados: Podemos visualizar que a ordem dos fatores altera os resultados
# a multiplicação das matrizes não atende a propriedade da comutatividade.

# Exercício 06
#Divisões e Visualização
##AB = A / B;
##subplot(3,3,4), imshow(AB),
##title('Imagem A / B')
##
##AC = A / C;
##subplot(3,3,5), imshow(AC),
##title('Imagem A / C')
##
##BC = B / C;
##subplot(3,3,6), imshow(BC),
##title('Imagem B / C')
##
###Ordem Fatores
##BA = B / A;
##subplot(3,3,7), imshow(BA),
##title('Imagem B / A')
##
##CA = C / A;
##subplot(3,3,8), imshow(CA),
##title('Imagem C / A')
##
##CB = C / B;
##subplot(3,3,9), imshow(CB),
##title('Imagem C / B')

#Resultados: Podemos visualizar que a ordem dos fatores altera os resultados
# a divisão das matrizes não atende a propriedade da comutatividade.

# Exercício 07
#Abrir e Exibir imagem
img = imread = ('lenaCor.bmp')
whos(img)
figure, imshow(img)

#Exibir primeiro canal da imagem
##R = img(:,:,1)
##R_uint8 = uint8(R)
##figure, imshow(R_uint8)

#Exibir o tamanho da imagem
size (img)

#Remover 50 pixels de cada lado da imagem

#Criar uma imagem em tons de cinza com base na média dos 3 canais e exibir



