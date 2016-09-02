function [ ] = DisplayCellImages( image )
%DISPLAYCELLIMAGES Summary of this function goes here
%   Detailed explanation goes here

%	args passed in as array, so first count the array length
%	then for each [i] display with imshow
    
    nImage = length(image);

    % print out all images from the array
    for i=1:nImage
        imshow(image{i})
    end

end

