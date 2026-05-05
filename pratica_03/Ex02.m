% Perguntas:
##1. Qual filtro removeu melhor o ruído?
%

##2. Qual filtro preservou melhor as bordas?
%

##3. Houve surgimento de artefatos (ex: anéis)?
%

##4. Qual foi o efeito de alterar o D₀?
%



pkg load image;

lista_imagens = {'mao.jpg', 'mao_gauss.jpg', 'mao_periodico.jpg', 'mao_sp.jpg', ...
                 'mao2.jpg', 'mao2_gauss.jpg', 'mao2_periodico.jpg', 'mao2_sp.jpg'};

% Parâmetros solicitados
D0_list = [5, 6];
n_list = [7, 8]; % Variação da ordem n para o Butterworth

for i = 1:length(lista_imagens)
    nome_arquivo = lista_imagens{i};
    [~, nome_base, ~] = fileparts(nome_arquivo);
    img_raw = imread(nome_arquivo);
    img = double(img_raw);

    [M, N] = size(img);
    F = fftshift(fft2(img)); % Transformada centralizada

    % Criar matriz de distâncias D(u,v) em relação ao centro (Slides 23, 25, 32)
    u = 0:(M-1);
    v = 0:(N-1);
    [V, U] = meshgrid(v, u);
    D = sqrt((U - M/2).^2 + (V - N/2).^2);

    for D0 = D0_list
        % 1. FILTRO IDEAL (Slide 23 e 31)
        H_LP_ideal = double(D <= D0);
        H_HP_ideal = 1 - H_LP_ideal;

        % 2. FILTRO GAUSSIANO (Slide 27 e 33)
        H_LP_gauss = exp(-(D.^2) / (2 * (D0^2)));
        H_HP_gauss = 1 - H_LP_gauss;

        % Aplicar e salvar Ideal e Gaussiano
        filtros = {H_LP_ideal, H_HP_ideal, H_LP_gauss, H_HP_gauss};
        nomes = {'_Ideal_PB_', '_Ideal_PA_', '_Gauss_PB_', '_Gauss_PA_'};

        for f = 1:4
            G = F .* filtros{f};
            res = real(ifft2(ifftshift(G)));
            res_norm = (res - min(res(:))) / (max(res(:)) - min(res(:)));
            imwrite(res_norm, [nome_base nomes{f} 'D0_' num2str(D0) '.png']);
        end

        % 3. FILTRO BUTTERWORTH (Variação de n - Slide 25 e 32)
        for n = n_list
            H_LP_butt = 1 ./ (1 + (D ./ D0).^(2*n));
            H_HP_butt = 1 - H_LP_butt;

            % Passa-Baixa Butterworth
            G_LP = F .* H_LP_butt;
            res_LP = real(ifft2(ifftshift(G_LP)));
            res_LP_norm = (res_LP - min(res_LP(:))) / (max(res_LP(:)) - min(res_LP(:)));
            imwrite(res_LP_norm, [nome_base '_Butt_PB_D0_' num2str(D0) '_n' num2str(n) '.png']);

            % Passa-Alta Butterworth
            G_HP = F .* H_HP_butt;
            res_HP = real(ifft2(ifftshift(G_HP)));
            res_HP_norm = (res_HP - min(res_HP(:))) / (max(res_HP(:)) - min(res_HP(:)));
            imwrite(res_HP_norm, [nome_base '_Butt_PA_D0_' num2str(D0) '_n' num2str(n) '.png']);
        end
    end
##    printf('Filtros aplicados e salvos para: %s\n', nome_arquivo);
end
