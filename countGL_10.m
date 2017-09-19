function v = countGL_10( im )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
v=zeros(256,1);
    if(nargin<1)
        disp("Please specify image matrix");
        v=[];
        return;
    end
    if(isinteger(im)~=true)
        disp("“Image matrix must be of type uint8");
        v=[];
        return;
    end
    for i=1:1:256
        v(i)=nnz(im==i-1);
    end
end

