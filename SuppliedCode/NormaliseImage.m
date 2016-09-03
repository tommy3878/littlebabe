function [ N ] = NormaliseImage(GreyscalePic, p, b)
%   The purpose of this function is to improve the image contrast by normalising the greyscale image
%   The image is linearly scaled to move a specified background value (dark value) to 0 and the peak value (bright value) to 255. 
%The peak value is assumed to be larger than the background value.

A=GreyscalePic;
p= double(p);
b= double(b);
%To take the length of the rows and columns 
[rows,cols]= size(A);

N= ones(rows,cols);

n=round(255*(N-b)/(p-b));

%cycle through each rows
for i=1:rows;
    %cycle through each columns
    for j=1:cols;
       if n<0
        n=0;
    else n>255
        n=255;
    end
       [rows,cols]=n;
    
    end
end
