function interpolate(beginx, lastx, beginy, lasty, iter)
    global A;
    if (lastx - beginx > 1)
        midx = floor((lastx + beginx)/2);
        midy = floor((lasty + beginy)/2);
        r = 0.1 + 2.0 * rand(1,1);
        % Arriba
        A(beginx, midy) = r + (1/2) * (A(beginx, beginy) + A(beginx, lasty));
        % Abajo
        A(lastx, midy) = r + (1/2) * (A(lastx, beginy) + A(lastx, lasty));
        % Izquierda
        A(midx, beginy) = r + (1/2) * (A(beginx, beginy) + A(lastx, beginy));
        % Derecha
        A(midx, lasty) = r + (1/2) * (A(beginx, lasty) + A(lastx, lasty));
        
        if (iter ~= 1)
            % Centro
            A(midx, midy) = (1/4) * (A(beginx, midy) + A(lastx, midy) + A(midx, beginy) + A(midx, lasty));
        end
        if (iter == 1)
            % cambio iter
            iter = 2;
        end
        
        % submatrix izquierda superior
        interpolate(beginx, midx, beginy, midy, iter);
        % submatrix izquierda inferior
        interpolate(midx, lastx, beginy, midy, iter);
        % submatrix derecha superior
        interpolate(beginx, midx, midy, lasty, iter);
        % submatrix derecha inferior
        interpolate(midx, lastx, midy, lasty, iter);
    end
end