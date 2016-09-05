function [ cImage ] = ColourImage(gPic, red , green, blue)
    
    gPic = double(gPic);
    gSize = size(gPic);
    R = double(red);
    G = double(green);
    B = double(blue);
    cImage = zeros(gSize(1), gSize(2), 3);
    
    cImage(:, :, 1) = uint8(gPic * R / 255);
    cImage(:, :, 2) = uint8(gPic * G / 255);
    cImage(:, :, 3) = uint8(gPic * B / 255);
    
end
