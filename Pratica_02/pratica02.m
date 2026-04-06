# 2- (i) Negativo e (ii) intervalo de intensidades [100,200]
% S = L -1 - r

img = imread('imagem/baboon.png')
##negativa = 255 - img;
##imshow(negativa);

# 2- Correção gamma
% S = c.r^y
img = im2double(img);
gamma = 0.3; % >1 fica + claro; <1 fica + escuro
B = img .^ gamma;
imshow(B);


