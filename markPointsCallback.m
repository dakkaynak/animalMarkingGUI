function markPointsCallback(hObject, eventdata,handles)

figData = guidata(gcf);
I = figData.xformImg;

animalPoints = struct();

n = 1;
while hObject.Value
    pix = impoly(gca);
    wait(pix);
    thisMask = createMask(pix);
    thisArea = sum(thisMask(:));
    animalPoints(n).area = thisArea;
    animalPoints(n).colorsRGB = getPatchMean(I,thisMask);
    animalPoints(n).colorsXYZ = rgb2xyz(uint8(255*animalPoints(n).colorsRGB));
    figData.animalPoints = animalPoints;
    guidata(gcf,figData);
    n = n+1;
end


