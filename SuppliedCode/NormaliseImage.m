function [ nImage ] = NormaliseImage(gPic, bg, pk)
    % The purpose of this function is to improve the image contrast by 
    % normalising the greyscale image. The image is linearly scaled to 
    % move a specified background value (dark value) to 0 and the peak 
    % value (bright value) to 255. The peak value is assumed to be larger 
    % than the background value.
    
    % Convert the input into double precision for computation
    gPic = double(gPic);
    bg  = double(bg);
    pk = double(pk);
    
    % using matrix computation with the normalised formula
    nImage = 255 * (gPic-bg) / (pk-bg);
    
    % Return uint8 precision
    nImage = uint8(nImage);
    
end
