function markAnimalCallback(hObject, eventdata,handles)


figData = guidata(gcf);
I = figData.xformImg;
if hObject.Value
    pix = impoly(gca);
    wait(pix);
    animalMask = createMask(pix);
    figData.animalMask = animalMask;
    animalMeanRGB = getPatchMean(I,animalMask);
    animalMeanXYZ = rgb2xyz(uint8(255*animalMeanRGB));
    animalArea = sum(animalMask(:));
    figData.animalMeanRGB = animalMeanRGB;
    figData.animalMeanXYZ = animalMeanXYZ;
    figData.animalArea = animalArea;
    guidata(gcf,figData)
end