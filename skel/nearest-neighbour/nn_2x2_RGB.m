function out = nn_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncte
    % intermediare echidistante.
    % img este o imagine colorata RGB.
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
    
    out_red = zeros(n);
    out_green = zeros(n);
    out_blue = zeros(n);
    
    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    
    
    out_red = nn_2x2(img_red, STEP);
    out_green = nn_2x2(img_green, STEP);
    out_blue = nn_2x2(img_blue, STEP);

    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
    
    out = cat(3, out_red, out_green, out_blue);

endfunction
