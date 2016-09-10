function [ S ] = SpectrumBar( Lw, Hw )
    % Reuse the WaveLengthToRGB functions to convert wavelegnth range into
    % RGB color
    
    % Define and initate the variables below
    % n is the range of the waveLength range
    n = Hw - Lw + 1; 
    % S as the zero matrix with 1 row and n col with 3 RGB layers
    S = zeros(1, n, 3); 
    
    % For each col in S convert the wavelength value into RGB
        for nCol =1:n;
            [R, G, B] = WaveLengthToRGB(Lw + nCol - 1);
            S(1,nCol,1) = R;
            S(1,nCol,2) = G;
            S(1,nCol,3) = B;
        end
    % Convert the value into uint8 for imshow to display the color
    % correctly, stucked in this type mismatch for a while ~_~
    S = uint8(S);
    
    % Duplicate the S(1 row matrix) 100 times to fill the matrix, which 
    % should be faster than RGB computation 100 times across the n range
    S = repmat(S, 100, 1);
    
end

