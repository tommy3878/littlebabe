function [ cImage ] = CombineImages( img )
    
    cellCount = size(img,2);
    cImage = zeros(size(img{1},1), size(img{1},2), 3);
    %img = double(img);
    cImage = double(cImage);
    
    for i=1:cellCount
        dImg = double(img{i});
        cImage(:, :, :) = cImage + dImg;
    end

    cImage = uint8(cImage);

end
