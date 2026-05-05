% Perguntas:
##1. Onde estão concentradas as baixas frequências?
##2. Onde aparecem as altas frequências?
##3. O espectro apresenta padrões periódicos ou ruídos visíveis?
##4. Que tipo de informação (estrutura anatômica) está em: baixas frequências? altas frequências?

pkg load image; % Carrega o pacote necessário

% Lista com os nomes das suas imagens (certifique-se de que os arquivos estão na mesma pasta)
lista_imagens = {'mao.jpg', 'mao_gauss.jpg', 'mao_periodico.jpg', 'mao_sp.jpg', ...
                 'mao2.jpg', 'mao2_gauss.jpg', 'mao2_periodico.jpg', 'mao2_sp.jpg'};

for i = 1:length(lista_imagens)
    % 1. Leitura e conversão
    img = imread(lista_imagens{i});
    if size(img, 3) == 3
        img = rgb2gray(img); % Converte para cinza se for colorida
    end
    img = double(img); % Converte para double para cálculos precisos

    % 2. Aplicar FFT (conforme Slide 39)
    F = fft2(img);

    % 3. Espectro de Magnitude (conforme Slide 11 e 12)
    % |F(u,v)| = [R^2(u,v) + I^2(u,v)]^1/2
    magnitude = abs(F);

    % 4. Espectro Centralizado (conforme Slide 15)
    % Em software, usamos fftshift para deslocar a origem (0,0) para o centro (M/2, N/2)
    F_centralizada = fftshift(F);
    magnitude_centralizada = abs(F_centralizada);

    % 5. Visualização Logarítmica (conforme Slide 20)
    % D(u,v) = c * log(1 + |F(u,v)|)
    % Isso é necessário porque a componente DC é muito maior que as outras
    visual_magnitude = log(1 + magnitude);
    visual_centralizada = log(1 + magnitude_centralizada);

    % 6. Exibição dos Resultados
    figure('Name', ['Analise: ' lista_imagens{i}]);
    subplot(1,3,1); imshow(img, []); title('Imagem Original');
    subplot(1,3,2); imshow(visual_magnitude, []); title('Espectro Magnitude');
    subplot(1,3,3); imshow(visual_centralizada, []); title('Espectro Centralizado');
end

