% Perguntas:
##1. Onde estão concentradas as baixas frequências?
% As baixas frequências estão concentradas no centro

##2. Onde aparecem as altas frequências?
% As altas frequências aparecem à medida que nos distanciamos da origem da transformada, ou seja, nos cantos das imagens.

##3. O espectro apresenta padrões periódicos ou ruídos visíveis?
%Sim, apresentam bastante ruído sal e pimenta bem visíveis.

##4. Que tipo de informação (estrutura anatômica) está em: baixas frequências? altas frequências?
%Baixas frequências: Elas são responsáveis pelos componentes de variação lenta da imagem, como a intensidade média (brilho) e as áreas suaves.
%Anatomicamente, representam as partes internas e preenchidas dos órgãos e ossos onde não há mudanças bruscas de cor.
%Altas frequências: Elas correspondem a variações rápidas de intensidade, representando as bordas das estruturas, detalhes finos, texturas e também o ruído. Na imagem médica, são elas que definem os contornos dos ossos e tecidos.

pkg load image; % Carrega o pacote necessário

% Lista com os nomes das suas imagens
lista_imagens = {'mao.jpg', 'mao_gauss.jpg', 'mao_periodico.jpg', 'mao_sp.jpg', ...
                 'mao2.jpg', 'mao2_gauss.jpg', 'mao2_periodico.jpg', 'mao2_sp.jpg'};

for i = 1:length(lista_imagens)
    % 1. Leitura e conversão
    nome_arquivo = lista_imagens{i};
    img = imread(nome_arquivo);
    if size(img, 3) == 3
        img = rgb2gray(img);
    end
    img = double(img);

    % 2. Aplicar FFT (Slide 39)
    F = fft2(img);

    % 3. Espectro de Magnitude e Centralização (Slides 11, 15)
    magnitude = abs(F);
    magnitude_centralizada = fftshift(magnitude);

    % 4. Visualização Logarítmica (Slide 20)
    % D(u,v) = c * log(1 + |F(u,v)|)
    visual_magnitude = log(1 + magnitude);
    visual_centralizada = log(1 + magnitude_centralizada);

    mag_save = (visual_magnitude - min(visual_magnitude(:))) / (max(visual_magnitude(:)) - min(visual_magnitude(:)));
    cent_save = (visual_centralizada - min(visual_centralizada(:))) / (max(visual_centralizada(:)) - min(visual_centralizada(:)));

    [~, nome_base, ~] = fileparts(nome_arquivo);

    imwrite(mag_save, [nome_base '_espectro.png']);
    imwrite(cent_save, [nome_base '_espectro_centralizado.png']);

##    % 7. Exibição (opcional, para conferência visual)
##    figure('Name', ['Analise: ' nome_arquivo]);
##    subplot(1,2,1); imshow(img, []); title('Original');
##    subplot(1,2,2); imshow(cent_save); title('Espectro Centralizado Salvo');

end

