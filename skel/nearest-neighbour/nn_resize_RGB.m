function out = nn_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================
    
    [m n nr_colors] = size(img);
    
    % TODO: extrage canalul rosu al imaginii
    
    img_red = img(:,:,1);
    
    % TODO: extrage canalul verde al imaginii
    
    img_green = img(:,:,2);
    
    % TODO: extrace canalul albastru al imaginii
    
    img_blue = img(:,:,3);
    
    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    
    out_red = zeros(n);
    out_green = zeros(n);
    out_blue = zeros(n);
    
    s_x = (q-1)/(n-1);
    s_y = (p-1)/(m-1);
    T = [s_x 0; 0 s_y];
    inversa = inv(T);
    
    for y = 0 : p - 1
        for x = 0 : q - 1
             % TODO: aplica transformarea inversa asupra (x, y) si calculeaza
            % x_p si y_p din spatiul imaginii initiale
            
            i = inversa*[x y]';
            xi = i(1);
            yi = i(2);

            % TODO: trece (xp, yp) din sistemul de coordonate de la 0 la n - 1 in
            % sistemul de coordonate de la 1 la n pentru a aplica interpolarea
            
            xp = xi + 1;
            yp = yi + 1;
            
            % TODO: calculeaza cel mai apropiat vecin
            
            x_int = round(xp);
            y_int = round(yp);

            % TODO: calculeaza valoarea pixelului din imaginea finala
            
            out_red(y+1, x+1) = img_red(y_int, x_int);
            out_green(y+1, x+1) = img_green(y_int, x_int);
            out_blue(y+1, x+1) = img_blue(y_int, x_int);
            
        endfor
    endfor
    
    out = cat(3, out_red, out_green, out_blue);
    out = uint8(out);
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat

endfunction
