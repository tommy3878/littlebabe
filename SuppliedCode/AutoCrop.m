function [ cImage ] = AutoCrop( img )
    % Reference: https://www.mathworks.com/matlabcentral/answers/55253-how-to-crop-an-image-automatically
    % Reuse the matrix row and col sum concept from FindAngle
    
    % Define and initate the variables below, 
    bRowSum = 0; % Rows sum from top down
    eRowSum = 0; % Rows sum from bottom up
    bColSum = 0; % Cols sum from Left
    eColSum = 0; % Cols sum from Right
    tRow = 0; % top row
    bRow = size(img, 1); % bottom row
    lCol = 0; % left col
    rCol = size(img, 2); % right col
    
    % PS: Personally prefer seperate loops for easier reading
    % Find the top row until the row sum from top is greater than 1
    while bRowSum == 0
        tRow = tRow + 1;
        bRowSum = sum(img(tRow,1:end,:));
        % Sum the matrix with entire col at given row across 3 channels
    end
    
    % Find the bottomw row until the row sum from bottom is greater than 1
    while eRowSum == 0
        bRow = bRow - 1;
        eRowSum = sum(img(bRow,1:end,:));
        % Sum the matrix with entire col at given row across 3 channels
    end
    
    % Find the left col until the col sum from left is greater than 1
    while bColSum == 0
        lCol = lCol + 1;
        bColSum = sum(img(1:end,lCol,:));
        % Sum the matrix with entire row at given col across 3 channels
    end
    
    % Find the right col until the col sum from right is greater than 1
    while eColSum == 0
        rCol = rCol - 1;
        eColSum = sum(img(1:end,rCol,:));
        % Sum the matrix with entire row at given col across 3 channels
    end

    % Extract a cropped image from the original.
    cImage = img(tRow:bRow, lCol:rCol, :);
    
end
