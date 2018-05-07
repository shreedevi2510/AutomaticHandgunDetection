load('gundataset.mat');
addpath(cd);
negativeFolder = fullfile(cd,'humWeaponNeg');
trainCascadeObjectDetector('gundataset.xml',gunDataset,negativeFolder,'FalseAlarmRate',0.00001,'NumCascadeStages',8);
