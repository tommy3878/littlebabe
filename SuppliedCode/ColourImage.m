function [ cImage ] = ColourImage(gPic, red , green, blue)
    % Simple matrix computation of gPic with RGB
    % Define and initate the variables
    % Get the size of gPic
    gSize = size(gPic); 
    % Create zero array with the size of gPic with gSize(1) for x and 
    % gSize(2) for y, 3 for the RGB channels
    cImage = zeros(gSize(1), gSize(2), 3);  
    % Convert below variables to double for computation
    gPic = double(gPic); 
    R = double(red);
    G = double(green);
    B = double(blue);
    
    % Simple matrix computation with 1st layer as R, then G and B
    cImage(:, :, 1) = gPic * R / 255;
    cImage(:, :, 2) = gPic * G / 255;
    cImage(:, :, 3) = gPic * B / 255;
    
    % Final touch to convert back to uint8 for cImage output
    cImage = uint8(cImage);
    
end
