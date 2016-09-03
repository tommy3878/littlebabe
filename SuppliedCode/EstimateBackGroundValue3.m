function [ M ] = EstimateBackGroundValue3( unit8Values )
%   The purpose of this function is to provide an estimate of the background value for an image.  
%   It works by finding the most common intensity for a greyscale image
%   Author:Wei Liang Qian
    
    M = min(mode(unit8Values));

end

