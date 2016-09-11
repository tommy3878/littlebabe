function [ img ] = AutoRotate( img )
    % In order to auto rotate the image, first need to find the angle to
    % rotate and the actually rotate the image.
    
    angle = FindingAngle2(img);
    
    img = imrotate(img,angle);
    
end

