%# indexed image
I = spiral(40);

%# Synthesize a colormap first in HSV and then transform it to RGB
mx = max(I(:));
cmap = hsv2rgb([(0:mx-1)'./max(mx,1) ones(mx,2)]);         %'

%# show image
imshow(I,cmap)