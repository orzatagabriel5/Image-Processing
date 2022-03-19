function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
   % TODO: extrage canalul rosu al imaginii
      img_red = img(:,:,1);
    % TODO: extrage canalul verde al imaginii
      img_green = img(:,:,2);
    % TODO: extrace canalul albastru al imaginii
      img_blue = img(:,:,3);

    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    out_red = bilinear_rotate(img_red, rotation_angle);
    out_green = bilinear_rotate(img_green, rotation_angle);
    out_blue = bilinear_rotate(img_blue, rotation_angle);

    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
    
    out = cat(3, out_red, out_green, out_blue);
endfunction