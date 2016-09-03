function [ S ] = SpectrumBar( Lw,Hw )
%UNTITLED3 Summary of this function goes here
n = Hw- Lw + 1; 
S = ones(100,n ,3);

for i=1:100;
   for j=1:n;
      for z=1:3;
      
       S=feval(@PickSpectrumColour,n);
       
      end    
   end
     
end

