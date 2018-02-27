function loadButtonCallback(hObject, eventdata,handles)

figData = guidata(gcf);
chosenFile = figData.chosenFile;
I = readDNGfile(chosenFile);
imshow(I*2,'Parent',handles.mainImage);
figData.rawImg = I;
figData.imgPath = chosenFile;

handles.classicButton.Enable = 'on';
handles.passportButton.Enable = 'on';
handles.markColorChartButton.Enable = 'on';
handles.markAnimalButton.Enable = 'on';
handles.SelectPointsButton.Enable = 'on';
handles.saveNextButton.Enable = 'on';

% are the masks saved for this image? if so, load them
if exist([chosenFile(1:end-4),'_masks.mat'],'file')
    Irgb = imread([chosenFile(1:end-4),'_xform.tiff']);
    imshow(Irgb)
    figData.xformImg = Irgb;
    handles.markColorChartButton.Value = 1;
end

guidata(handles.mainImage,figData);


