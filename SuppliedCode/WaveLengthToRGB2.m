function [ RGB ] = WaveLengthToRGB2( WaveLength )
%The purpose of this function is to convert a wave length into RGB values
%This function is to convert a wave length(measured in
%nanometres) into an equivalent set of RGB vlaues by multiplying 255 to the multiplier which will then approximate
%the colour of light for the specified wave length.
%This is an approximation only.
%Author: Wei Liang Qian
    
    % http://www.mathworks.com/help/matlab/ref/containers.map-class.html
    % initiate RGB object for easier reference
    RGB = containers.Map('KeyType','char','ValueType','uint8');
    
    w=WaveLength;
    
    %Violet - Blue
    if (380<=w)&&(w<=440)
        RGB('R')=255*(440-w)/60;
        RGB('G')=255*0;
        RGB('B')=255*1;
        
    %Blue - Cyan
    elseif (440<=w)&&(w<=490)   
        RGB('R')=255*0;
        RGB('G')=255*(w-440)/50;
        RGB('B')=255*1;
        
    %Cyan - Green
    elseif (490<=w)&&(w<=510)
        RGB('R')=255*0;
        RGB('G')=255*1;
        RGB('B')=255*(510-w)/20;
        
    %Green - Yellow    
    elseif (510<=w)&&(w<=580)
        RGB('R')=255*(w-510)/70;
        RGB('G')=255*1;
        RGB('B')=255*0;
        
    %Yellow - Red
    elseif (580<=w)&&(w<=645)
        RGB('R')=255*1;
        RGB('G')=255*(645-w)/65;
        RGB('B')=255*0;
        
    %Red  
    elseif (645)&&(w<=780)
        RGB('R')=255*1;
        RGB('G')=255*0;
        RGB('B')=255*0;
            
    else
        RGB('R')=0;
        RGB('G')=0;
        RGB('B')=0;
            
end
    
    
    
    
   
    
    
    
    






