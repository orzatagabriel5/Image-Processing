function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================
    
    % TODO: calculeaza derivata
    [m n] = size(f);
    if x == 1 || y == 1
      r = 0;
    else
      if x == n || y == m
        r = 0;
      elseif
        r = (f(y-1, x-1) + f(y+1, x+1) - f(y+1, x-1) - f(y-1, x+1))/4;
      endif
    endif
    
endfunction