load('RImageLabelingSession.mat', 'Dataset', 'Faces')

imDt = fullfile(matlabroot, 'Dataset', 'Faces');
addpath(imDt);

options = trainingOptions('sgdm', ...
  'MiniBatchSize', 45, ...
  'InitialLearnRate', 1e-6, ...
  'MaxEpochs', 10);

%rcnn = trainRCNNObjectDetector(Faces, layers, options, 'NegativeOverlapRange', [0 0.3]);
rcnn = trainRCNNObjectDetector(Faces);