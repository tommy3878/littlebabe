function [ imgSize ] = FindingAngle( img )
    %UNTITLED3 Summary of this function goes here
    % cellCount = size(img,2);
    % cImage = zeros(size(img{1},1), size(img{1},2), 3);
    % img = double(img);
    % cImage = double(cImage);
    
    
    imgSize = containers.Map('KeyType','char','ValueType','uint8');
    
    imgSize('col') = 0;
    imgSize('row') = 0;
    rSum = 0;
    cSum = 0;
    
    while rSum == 0
        imgSize('row') = imgSize('row') + 1;
        rSum = sum(img{1}(imgSize('row'),1:end,:));
    end
    
    while cSum == 0 
        imgSize('col') = imgSize('col') + 1;
        cSum = sum(img{1}(1:end,imgSize('col'),:));
    end
    
    
        
end
