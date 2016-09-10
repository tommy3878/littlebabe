function [ cImage ] = CombineImages( img )
    % Simple matrix aggregation of all the img from the input
    
    % Count the number of the img to be combined
    cellCount = size(img,2);
    
    % Create a cImage matrix to hold the combined image
    cImage = zeros(size(img{1},1), size(img{1},2), 3);
    
	% Convert the cImage to double for matrix computation
    cImage = double(cImage);
    
    % Aggregate each img matrix
    for i=1:cellCount
        % Convert the input img to double
        dImg = double(img{i}); 
        % Matrix computation to add dImg onto cImage(original value @ 0)
        cImage(:, :, :) = cImage + dImg;
    end
    
    % nicely touch to convert the ouput back to uint8 for RGB img
    cImage = uint8(cImage);

end
