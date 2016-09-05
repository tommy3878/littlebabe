function [ angle ] = FindingAngle( img )
    %UNTITLED3 Summary of this function goes here
    %Using basic inverse Tan by finding the distorted angle of the image
    %
    
    imgSize = containers.Map('KeyType','char','ValueType','double');
    point = containers.Map('KeyType','char','ValueType','double');
    
    imgSize('col') = 0;
    imgSize('row') = 0;
    rSum = 0;
    cSum = 0;
    
    while rSum == 0
        imgSize('row') = imgSize('row') + 1;
        rSum = sum(img(imgSize('row'),1:end,:));
    end
    
    while cSum == 0 
        imgSize('col') = imgSize('col') + 1;
        cSum = sum(img(1:end,imgSize('col'),:));
    end
    
    point('xRow') = imgSize('row');
    point('xCol') = min(find(img(imgSize('row'),1:end,:)>1));

    point('yRow') = min(find(img(1:end,imgSize('col'),:)>1));
    point('yCol') = imgSize('col');
    
    angle = atand( sqrt((point('xCol')-point('yCol'))^2) / sqrt((point('xRow')-point('yRow'))^2));
        
end

