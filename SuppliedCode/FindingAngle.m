function [ angle ] = FindingAngle( img )
    % Finding angle of the image with below assumptions
    % - image is a rotated rectangle shape
    % - all rectangle has 90 degree on each 4 corncers
    % - With normalised background at all black, RGB=[0 0 0]
    % Then try to locate 2 points of the rotated image and 
    %   -- calculate the x , y distances of each point
    %   -- apply inverse tangent function to recover the rotated angle
    
    % Using matrix row and col sum to locate the far side of xRow(top row)
    % and yCol(left col) and then base xRow and yCol to find the xCol and
    % yRow for complete coordinate
    xRow = find(sum(img,2)>0,1,'first');
    xCol = find(img(xRow,1:end,:)>0,1,'first');
    yCol = find(sum(img,1)>0,1,'first');
    yRow = find(img(1:end,yCol,:)>0,1,'first');
    
    % Apply the inverse tan functions based on the absolute distance of
    % point x and y
    angle = atand(abs(yCol-xCol)/abs(yRow-xRow));
        
end

