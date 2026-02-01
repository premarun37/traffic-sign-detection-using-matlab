clc;
clear;
close all;

% Read input image
img = imread('test_images/stop.jpg');

% Convert to grayscale
if size(img,3) == 3
    grayImg = rgb2gray(img);
else
    grayImg = img;
end

% Edge detection
edges = edge(grayImg, 'Canny');

% Morphological operations
se = strel('disk', 2);
dilatedEdges = imdilate(edges, se);

% Thresholding
level = graythresh(grayImg);
bw = imbinarize(grayImg, level);

% Fill holes
bwFilled = imfill(bw, 'holes');

% Combine edge and binary info
finalBW = bwFilled & dilatedEdges;

% Connected component analysis
cc = bwconncomp(finalBW);
stats = regionprops(cc, 'BoundingBox', 'Area');

% Display original image
figure;
imshow(img);
title('Detected Traffic Signs');
hold on;

for i = 1:length(stats)
    bbox = stats(i).BoundingBox;
    area = stats(i).Area;

    if area < 500
        continue;
    end

    cropped = imcrop(grayImg, bbox);

    % Call function
    isSign = classifyTrafficSign(cropped);

    if isSign
        rectangle('Position', bbox, ...
                  'EdgeColor', 'r', ...
                  'LineWidth', 2);
    end
end

hold off;
