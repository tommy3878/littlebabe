function [R,G,B] = WaveLengthToRGB( WaveLength )
%The purpose of this function is to convert a wave length into RGB values
%This function is to convert a wave length(measured in
%nanometres) into an equivalent set of RGB vlaues by multiplying 255 to the multiplier which will then approximate
%the colour of light for the specified wave length.
%This is an approximation only.
%Author: Wei Liang Qian
w=WaveLength;
%Violet - Blue
if (380<=w)&&(w<=440)
    R=255*(440-w)/60;
    G=255*0;
    B=255*1;
%Blue - Cyan
elseif (440<=w)&&(w<=490)   
    R=255*0;
    G=255*(w-440)/50;
    B=255*1;
%Cyan - Green
elseif (490<=w)&&(w<=510)
    R=255*0;
    G=255*1;
    B=255*(510-w)/20;
%Green - Yellow    
elseif (510<=w)&&(w<=580)
    R=255*(w-510)/70;
    G=255*1;
    B=255*0;
%Green - Yellow
elseif (580<=w)&&(w<=645)
    R=255*1;
    G=255*(645-w)/65;
    B=255*0;
%Yellow - Red  
elseif (645)&&(w<=780)
    R=255*1;
    G=255*0;
    B=255*0;
%Not in the specific range
else 
    R=0;
    G=0;
    B=0;
end
    
    
    
    
   
    
    
    
    






