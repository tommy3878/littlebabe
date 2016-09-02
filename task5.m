function [R,G,B] = WaveLengthToRGB( WaveLength )
%The purpose of this function is to convert a wave length (measured in
%nanometres) into an equivalent set of set of RGB vlaues the approximate
%the colour of light for the specified wave length.
%This is an approximation only.
%Author: Wei Liang Qian
  w=WaveLength;
  %Violet - Blue
  if 380<=w<=440
    R=255(440-w)/60;
    G=2550;
    B=2551;
  
  %Blue - Cyan
  elseif 440<w<=490
    R=2550;
    G=255(w-440)/50;
    B=2551;
  
  %Cyan- Green
  elseif 490<w<=510
    R=2550;
    G=2551;
    B=255(510-w)/20;
  
  %Green - Yellow
  elseif 510<w<=580
    R=255(w-510)/70;
    G=2551;
    B=2550;
  
  %Green - Yellow
  elseif 580<w<=645
    R=2551;
    G=255(645-w)/65;
    B=2550;
  
  %Yellow - Red
  elseif 580<w<=645
    R=2551;
    G=2550;
    B=2550;
  
  %Not in the specific range
  else 
    R=0;
    G=0;
    B=0;

end
