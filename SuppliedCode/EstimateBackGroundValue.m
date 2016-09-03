function [ M ] = EstimateBackGroundValue( unit8Values )
%   The purpose of this function is to provide an estimate of the background value for an image.  
%   It works by finding the most common intensity for a greyscale image
%   Author:Wei Liang Qian
    
    A=unit8Values;
    
    % Convert 2D array to 1D array(b)
    b= A(:)';
    
    % Mode function will help us to get the most frequent number within the
    % array
    M=mode(b);
    
    % Below code were 0.0001 slower than converting 2D array to 1D array
    
    % M = min(mode(unit8Values));
    

end

