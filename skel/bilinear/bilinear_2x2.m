function out = bilinear_2x2(f, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare biliniara pe imaginea 2x2 f cu puncte intermediare
    % echidistante.
    % f are valori cunoscute in punctele (1, 1), (1, 2), (2, 1) si (2, 2).
    % 
    % Parametrii:
    % - f = imaginea ce se doreste sa fie interpolata
    % - STEP = distanta dintre doua puncte succesive
    % =========================================================================


    % defineste coordonatele x si y ale punctelor intermediare
    x_int = 1 : STEP : 2;
    y_int = 1 : STEP : 2;
    % afla nr. de puncte
    n = length(x_int);

    % cele 4 punctele incadratoare vor fi aceleasi pentru toate punctele din
    % interior
    x1 = y1 = 1;
    x2 = y2 = 2;

    % TODO: calculeaza coeficientii de interpolare biliniara folosind bilinear_coef
    a = bilinear_coef(f, x1, y1, x2, y2);
    f = double(f);
    % TODO: initializeaza rezultatul cu o matrice n x n plina de zero
    out = zeros(n);
    % parcurge fiecare pixel din imaginea finala
    k = (1/((x2-x1)*(y2-y1)));
    for i = 1 : n
        for j = 1 : n
          l = [x2-x_int(i) x_int(i)-x1];
          c = [y2-y_int(j); y_int(j) - y1];
          out(i,j) = k * l * f * c;
            % TODO: calculeaza valoarea pixelului
          
        endfor
    endfor
    % TODO: converteste rezultatul la uint8 pentru a ramane o imagine
    out = uint8(out);
endfunction
