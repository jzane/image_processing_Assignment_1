function v = countGL_10( im ) %cannot seem to name function something other than filename
% UNTITLED Summary of this function goes here
%   Detailed explanation goes here
v=zeros(256,1);

    if(nargin<1) % nargin returns the number of function inputs
        disp("Please specify image matrix");
        v=[];
        return;
    end
    
    if(isinteger(im)~=true) % if false
        disp("“Image matrix must be of type uint8");
        v=[];
        return;
    end
    
%     for i=1:1:256 % creating a 1x256 vector
%         v(i)=nnz(im==i-1);
%     end


    % Initialize vector v to zero
    v = zeros([1 256]);
    % Iterate through each column and row and populate V
    for row=1:size(im,1) % size(im, 1) -> number of rows
        for col=1:size(im,2) % size(im, 2) -> number of columns 
            grayLevel = im(row, col); % tis might be of type double
            grayLevelInt = uint8(grayLevel); % convert to uint8 if not already
            v(grayLevelInt + 1) = v(grayLevelInt + 1) + 1; % Increment the number in v
        end
    end
    
end

