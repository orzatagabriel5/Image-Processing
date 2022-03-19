function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii de interpolare bicubica pentru 4 puncte alaturate
    % =========================================================================

    % TODO: calculeaza matricile intermediare
    aux = x1;
    x1 = y1;
    y1 = aux;
    
    aux = x2;
    x2 = y2;
    y2 = aux;
    A = zeros(4);
    M = [1 0 0 0; 0 0 1 0; -3 3 -2 -1; 2 -2 1 1];
    N = [1 0 -3 2; 0 0 3 -2; 0 1 -2 1; 0 0 -1 1];
    B = [f(x1,y1) f(x1,y2) Ix(x1,y1) Ix(x1,y2);
         f(x2,y1) f(x2,y2) Ix(x2,y1) Ix(x2,y2);
         Iy(x1,y1) Iy(x1,y2) Ixy(x1,y1) Ixy(x1,y2);
         Iy(x2,y1) Iy(x2,y2) Ixy(x2,y1) Ixy(x2,y2)];


    % TODO: converteste matricile intermediare la double
    A = double(A);
    M = double(M);
    N = double(N);
    B = double(B);
    % TODO: calculeaza matricea finala
    A = (M * B * N)';
    
endfunction