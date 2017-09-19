clearvars;
close all;
row = uint8(0:255);
im = repmat(row, 100, 1); 
stem( 0:255, countGL_10(im))
set(gca, 'xlim', [0, 255], 'ylim', [0, 150])
title('Assignment 1', 'fontsize', 16)
xlabel('Gray level')
ylabel('No. Pixels')