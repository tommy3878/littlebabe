function [ S ] = SpectrumBar( Lw, Hw )
    %UNTITLED3 Summary of this function goes here
    n = Hw - Lw + 1; 
    S = zeros(1, n, 3);

        for nCol =1:n;
            [R, G, B] = WaveLengthToRGB(Lw + nCol - 1);
            S(1,nCol,1) = R;
            S(1,nCol,2) = G;
            S(1,nCol,3) = B;
        end
    S = uint8(S);
    S = repmat(S, 100, 1);
    
end

