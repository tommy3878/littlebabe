function [ img ] = AutoRotate( img )
    %UNTITLED3 Summary of this function goes here
    
    angle = FindingAngle(img);
    
    img = imrotate(img,angle);
    
end

