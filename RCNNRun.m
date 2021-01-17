imda = imread('trial.jpg');  %manually reads a picture from the database and gives out the score

[bbox, score, label] = detect(rcnn, imda, 'MiniBatchSize', 45);

[score, idx] = max(score);

bbox = bbox(idx, :);
annotation = sprintf('%s: (Confidence = %f)', label(idx), score);

detectedImg = insertObjectAnnotation(imda, 'rectangle', bbox, annotation);

figure
imshow(detectedImg)