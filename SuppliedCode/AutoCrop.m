function [ cImage ] = AutoCrop( img )
    %UNTITLED3 Summary of this function goes here
    
    % Reference: https://www.mathworks.com/matlabcentral/answers/55253-how-to-crop-an-image-automatically
    
    bRowSum = 0;
    eRowSum = 0;
    bColSum = 0;
    eColSum = 0;
    tRow = 0;
    bRow = size(img, 1);
    lCol = 0;
    rCol = size(img, 2);
    
    
    while bRowSum == 0
        tRow = tRow + 1;
        bRowSum = sum(img(tRow,1:end,:));
    end
    
    while eRowSum == 0
        bRow = bRow - 1;
        eRowSum = sum(img(bRow,1:end,:));
    end
    
    while bColSum == 0
        lCol = lCol + 1;
        bColSum = sum(img(1:end,lCol,:));
    end
    
    while eColSum == 0
        rCol = rCol - 1;
        eColSum = sum(img(1:end,rCol,:));
    end

    % Extract a cropped image from the original.
    cImage = img(tRow:bRow, lCol:rCol, :);
    
end
