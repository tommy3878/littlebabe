function [ cImage ] = AutoCrop( img )
    % Reference: https://www.mathworks.com/matlabcentral/answers/55253-how-to-crop-an-image-automatically
    % Reuse the matrix row and col sum concept from FindingAngle, but
    % slightly different because there were some issue in locating the last
    % coordinate.

    % First flattern the RGB matrix to easier locate the coordinates  
    % because there were issues when dealing with multi dim matrix to find 
    % the last occurance, so to get around this issue, I try to flattern 
    % the RGB layers from the concept of combined images.
    fImg = img(:,:,1)+img(:,:,2)+img(:,:,3); 
    xRow = find(sum(fImg,2)>0,1,'first'); % locate the first row
    yRow = find(sum(fImg,2)>0,1,'last'); % locate the last row
    xCol = find(sum(fImg,1)>0,1,'first'); % locate the first col
    yCol = find(sum(fImg,1)>0,1,'last'); % locate the last col

    % Extract a cropped image from the original.
    % Use the original img for output, NOT the flatten fImg
    cImage = img(xRow:yRow, xCol:yCol, :);
    
    % Optional for fun!! Above one will do the job, but I noticed there are
    % some white noise on the edge that I wish to remove during the crop.
    % Below codes are only used to crop the noise out of the image really 
    % just doing it for fun to make it a nice touch on the output.
    % noise = 8;
    % cImage = img(xRow+noise:yRow-noise, xCol+noise:yCol-noise, :);
    
end
