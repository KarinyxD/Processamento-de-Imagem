pkg load image
cd('/export/convidado/Downloads/exercicio03');
I = imread('imagens/galaxy.jpg');

L=imnoise(I,'salt & pepper'); %ruído sal e pimenta

h = ones(3,3)/9;
M=filter2(h, L); %media

N=medfilt2(L,[3,3]); %mediana
figure;

subplot(2,3,1), imshow(L),title('galaxy com sal e pimenta');
subplot(2,3,4), imhist(L),title('galaxy_hist');

subplot(2,3,2), imshow(uint8(M)),title('filter2');
subplot(2,3,5), imhist(uint8(M)),title('filter2_hist');

subplot(2,3,3), imshow(N),title('medfilt2');
subplot(2,3,6), imhist(N),title('medfilt2_hist');

## Qual filtro removeu melhor o ruído "sal e pimenta"? medfilt2, mediana
## Qual filtro deixou a imagem mais borrada? o filter2, media
## Qual filtro preservou melhor as bordas? medfilt2, mediana
## Qual você recomendaria para este tipo de ruído? medfilt2, mediana
