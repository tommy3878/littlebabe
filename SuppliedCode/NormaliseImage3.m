function [ nImage ] = NormaliseImage3(gPic, bg, pk)
%   The purpose of this function is to improve the image contrast by normalising the greyscale image
%   The image is linearly scaled to move a specified background value (dark value) to 0 and the peak value (bright value) to 255. 
%   The peak value is assumed to be larger than the background value.
    
    % Convert the pic into double precision
    % gPic = double(GreyscalePic);
    
    % Apply the formula for each element in the matrix
    % http://www.mathworks.com/help/matlab/ref/arrayfun.html
    % nImage = arrayfun(@(x) (255 * (x- bg) / (pk - bg)), gPic);
    
    % Return uint8 precision
    nImage = double(255 * (gPic-bg) / (pk-bg));
    
    nImage = uint8(nImage);
    
end
