function r = fy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de y a lui f in punctul (x, y).
    % =========================================================================
    
    % TODO: calculeaza derivata

    
    [m n] = size(f);
    
    if y == 1
      r = 0;
    else
      if y == m
        r=0;
      elseif 
        r = (f(y + 1, x) - f(y - 1, x))/2;
      endif
    endif
    
endfunction