function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia
    % =========================================================================
    
    % obtine dimensiunea imaginii
    [m n nr_colors] = size(I);
    % TODO: fa cast matricii I la double
    
    I = double(I);

    % TODO: calculeaza matricea cu derivate fata de x Ix
    Ix = zeros(m, n);
    for x = 1 : m
      for y = 1 : n
        Ix(x, y) = fx(I, y, x);
      endfor
    endfor

    % TODO: calculeaza matricea cu derivate fata de y Iy
    
    Iy = zeros(m, n);
    for x = 1 : m
      for y = 1 : n
        Iy(x, y) = fy(I, y, x);
      endfor
    endfor
    % TODO: calculeaza matricea cu derivate fata de xy Ixy
    
    Ixy = zeros(m, n);
    for x = 1 : m
      for y = 1 : n
        Ixy(x, y) = fxy(I, y, x);
      endfor
    endfor

endfunction
