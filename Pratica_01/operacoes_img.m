# Kariny Mylena Pereira Abrahão - 212050013

# Exercício 01
A=zeros(300,300);
A(25:175,125:175)=1;

B=zeros(300,300);
B(125:175,25:175)=1;

C=zeros(300,300);
C(150:300,150:300)=1;

# Exercício 02
function plot1(A, B, C)
  figure;
  subplot(3,3,1), imshow(A),
  title('Imagem A')

  subplot(3,3,2), imshow(B),
  title('Imagem B')

  subplot(3,3,3), imshow(C),
  title('Imagem C')
end
plot1(A, B, C)
# Plotando as imagens geradas (A, B, C) na mesma janela;
# Onde, a janela tem 3 linhas, 3 colunas de imagens.

# Exercício 03
#Somas e Visualização
plot1(A, B, C)
AB = A + B;
subplot(3,3,4), imshow(AB),
title('Imagem A + B')

AC = A + C;
subplot(3,3,5), imshow(AC),
title('Imagem A + C')

BC = B + C;
subplot(3,3,6), imshow(BC),
title('Imagem B + C')

#Fatores Trocados
BA = B + A;
subplot(3,3,7), imshow(BA),
title('Imagem B + A')

CA = C + A;
subplot(3,3,8), imshow(CA),
title('Imagem C + A')

CB = C + B;
subplot(3,3,9), imshow(CB),
title('Imagem C + B')

#Resultados: Podemos visualizar que a ordem dos fatores não altera os resultados
# a soma das matrizes atende a propriedade da comutatividade.

# Exercício 04
#Subtrações e Visualização
plot1(A, B, C)
AB = A - B;
subplot(3,3,4), imshow(AB),
title('Imagem A - B')

AC = A - C;
subplot(3,3,5), imshow(AC),
title('Imagem A - C')

BC = B - C;
subplot(3,3,6), imshow(BC),
title('Imagem B - C')

#Fatores Trocados
BA = B - A;
subplot(3,3,7), imshow(BA),
title('Imagem B - A')

CA = C - A;
subplot(3,3,8), imshow(CA),
title('Imagem C - A')

CB = C - B;
subplot(3,3,9), imshow(CB),
title('Imagem C - B')

#Resultados: Podemos visualizar que a ordem dos fatores altera os resultados
# a subtração das matrizes não atende a propriedade da comutatividade.

# Exercício 05
#Multiplicações e Visualização
plot1(A, B, C)
AB = A * B;
subplot(3,3,4), imshow(AB),
title('Imagem A * B')

AC = A * C;
subplot(3,3,5), imshow(AC),
title('Imagem A * C')

BC = B * C;
subplot(3,3,6), imshow(BC),
title('Imagem B * C')

#Fatores Trocados
BA = B * A;
subplot(3,3,7), imshow(BA),
title('Imagem B * A')

CA = C * A;
subplot(3,3,8), imshow(CA),
title('Imagem C * A')

CB = C * B;
subplot(3,3,9), imshow(CB),
title('Imagem C * B')

#Resultados: Podemos visualizar que a ordem dos fatores altera os resultados
# a multiplicação das matrizes não atende a propriedade da comutatividade.

# Exercício 06
#Divisões e Visualização
plot1(A, B, C)
AB = A / B;
subplot(3,3,4), imshow(AB),
title('Imagem A / B')

AC = A / C;
subplot(3,3,5), imshow(AC),
title('Imagem A / C')

BC = B / C;
subplot(3,3,6), imshow(BC),
title('Imagem B / C')

#Fatores Trocados
BA = B / A;
subplot(3,3,7), imshow(BA),
title('Imagem B / A')

CA = C / A;
subplot(3,3,8), imshow(CA),
title('Imagem C / A')

CB = C / B;
subplot(3,3,9), imshow(CB),
title('Imagem C / B')

#Resultados: Podemos visualizar que a ordem dos fatores altera os resultados
# a divisão das matrizes não atende a propriedade da comutatividade.

# Exercício 07
#Abrir e Exibir imagem
img = imread('lenaCor.bmp');
figure,imshow(img);title('Imagem Lena');

#Exibir primeiro canal da imagem(red)
R = img(:,:,1)
figure, imshow(R); title('Vermelha')

#Exibir o tamanho da imagem
size (img)

#Remover 50 pixels de cada lado da imagem
img_crop = img(50:end-50, 50:end-50, :);
figure, imshow(img_crop);
title('Imagem recortada');

#Criar uma imagem em tons de cinza com base na média dos 3 canais e exibir
% Separar os canais
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

% Converter para double pra evitar problemas de overflow
R = double(R);
G = double(G);
B = double(B);

% Calcular a média
gray = (R + G + B) / 3;

% Converter de volta para uint8
gray = uint8(gray);

% Exibir imagem em tons de cinza
figure, imshow(gray);
title('Imagem em tons de cinza (media dos canais)');



