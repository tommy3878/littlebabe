function [ ] = DisplayCellImages( image, name , value)
    % Prepare the figure name
    % Args passed in as array, so first count the array length
    % Then for each [i] display with imshow

    % Create figure with defined value instead of the given one
    figure('name',strcat('Figure ', 32, num2str(value)), 'NumberTitle','Off');
    % http://stackoverflow.com/questions/1425226/matlab-strcat-function-troubles-with-spaces
    % http://stackoverflow.com/questions/4684363/how-to-change-the-window-title-of-a-matlab-plotting-figure
    
    % print out all images from the array
    nImage = length(image);
    
    % Plot each image onto the figure
    for i=1:nImage
        % Assign the name and value (convert to str) for the figure name
        subplot(1,nImage,i), imshow(image{i}), title(strcat(name, {' '}, num2str(i)))
    end
    
end

