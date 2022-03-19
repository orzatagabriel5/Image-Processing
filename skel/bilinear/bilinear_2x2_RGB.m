function out = bilinear_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare biliniara pe imaginea 2x2 img cu puncte intermediare
    % echidistante, cu precizarea ca img este o imagine colorata RGB.
    % f are valori cunoscute in punctele (1, 1), (1, 2), (2, 1) si (2, 2).
    % Practic, apeleaza bilinear_2x2_interpolation pe fiecare canal al imaginii
    % img si reconstruieste imaginea colorata la final
    % Parametrii:
    % - img = imaginea 2x2 RGB care doreste sa fie interpolata
    % - STEP = distanta dintre doua puncte succesive
    % =========================================================================

    
    x_int = 1 : STEP : 2;
    y_int = 1 : STEP : 2;

    n = length(x_int);

    x1 = y1 = 1;
    x2 = y2 = 2;
    
    % TODO: extrage canalul rosu al imaginii
    
    img_red = [img(1) img(3); img(2) img(4)];
    
    % TODO: extrage canalul verde al imaginii
    
    img_green = [img(5) img(7); img(6) img(8)];
    
    % TODO: extrace canalul albastru al imaginii
    
    img_blue = [img(9) img(11); img(10) img(12)];
    
    % TODO: calculeaza coeficientii de interpolare biliniara folosind bilinear_coef
    a_red = bilinear_coef(img_red, x1, y1, x2, y2);
    a_green = bilinear_coef(img_green, x1, y1, x2, y2);
    a_blue = bilinear_coef(img_blue, x1, y1, x2, y2);
    % TODO: aplica bilinear_2x2_interpolation pe fiecare dintre canale

    out_red = zeros(n);
    out_green = zeros(n);
    out_blue = zeros(n);
    
    % parcurge fiecare pixel din imaginea finala
    k = (1/((x2-x1)*(y2-y1)));

    for i = 1 : n
        for j = 1 : n
          l = [x2-x_int(i) x_int(i)-x1];
          c = [y2-y_int(j); y_int(j) - y1];
          out_red(i,j) = k * l * double(img_red) * c;
          out_green(i,j) = k * l * double(img_green) * c;
          out_blue(i,j) = k * l * double(img_blue) * c;
            % TODO: calculeaza valoarea pixelului
          
        endfor
    endfor
    % TODO: combina rezultatul in imaginea finala
    
    out = cat(3, out_red, out_green, out_blue);
    out = uint8(out);


endfunction
