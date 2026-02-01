function result = classifyTrafficSign(croppedImg)

% Resize for uniform processing
croppedImg = imresize(croppedImg, [100 100]);

% Edge detection
edges = edge(croppedImg, 'Canny');

% Count edge pixels
edgeCount = sum(edges(:));

% Decision rule
if edgeCount > 300
    result = true;   % Traffic sign detected
else
    result = false;
end

end
