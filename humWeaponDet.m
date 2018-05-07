clc; clear all; close all;
detector = vision.CascadeObjectDetector('gundataset.xml');
videoPlayer=vision.VideoPlayer();
vObj = VideoReader('C:\Users\shrik\Desktop\HumanDetection\testvideos\chatrapathy.mp4');
totalFrames = floor(vObj.Duration * vObj.FrameRate);
for i = 100:totalFrames - 10
     img  = read(vObj, i);
            bbox = step(detector,img);

detectedImg = insertObjectAnnotation(img,'rectangle',bbox,'humanwithweapon');

step(videoPlayer, detectedImg); 
end

release(videoPlayer);
