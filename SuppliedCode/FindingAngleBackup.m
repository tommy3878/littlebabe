function [ angle ] = FindingAngleBackup( img )
    % Finding angle of the image with below assumptions
    % - image is a rotated rectangle shape
    % - all rectangle has 90 degree on each 4 corncers
    % - With normalised background at all black, RGB=[0 0 0]
    % Then try to locate 2 points of the rotated image and 
    %   -- calculate the x , y distances of each point
    %   -- apply inverse tangent function to recover the rotated angle
    
    % Define and initiate the variables with default value
    imgSize = containers.Map('KeyType','char','ValueType','double');
    point = containers.Map('KeyType','char','ValueType','double');
    imgSize('col') = 0; % Col size of the input img
    imgSize('row') = 0; % Row size of the input img
    rSum = 0;
    cSum = 0;
    
    % To locate 2 peak point of the rotated image with normalised
    % background RGB @ [0 0 0]:
    %   -- 1st loop Sum each row from the top of the RGB matrix 
    %   -- until the sum value is greater than 0
    %   -- 2nd loop Sum each col from the left of the RGB matrix 
    %   -- until the sum value is greater than 0
    
    while rSum == 0
        imgSize('row') = imgSize('row') + 1;
        rSum = sum(img(imgSize('row'),1:end,:));
        % Sum the matrix with entire col at given row across 3 channels
        % return the 1st row with sum greater than 0
    end
    
    while cSum == 0 
        imgSize('col') = imgSize('col') + 1;
        cSum = sum(img(1:end,imgSize('col'),:));
        % Sum the matrix with entire row at given col across 3 channels
        % return the 1st col with sum greater than 0
    end
    
    % Assign then value of point x
    point('xRow') = imgSize('row'); % row coordinate from the loop above
    point('xCol') = min(find(img(imgSize('row'),1:end,:)>1));
    % Find the location of the img with given row on entire column across
    % RGB layers with value greater than 1 as the col coordinate of point x
    
    % Assign the value of point y
    point('yRow') = min(find(img(1:end,imgSize('col'),:)>1));
    % Find the location of the img with given col on entire row across
    % RGB layers with value greater than 1 as the row coordinate of point y
    point('yCol') = imgSize('col'); % col coordinate from the loop above
    
    % Apply the inverse tan functions based on the absolute distance of
    % point x and y
    angle = atand(abs(point('xCol')-point('yCol')) / abs(point('xRow')-point('yRow')));
        
end

