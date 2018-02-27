function chooseImageCallback(hObject, eventdata,handles)

% Wait for the user to select a folder
[chosenFile,filePath] = uigetfile('*.dng');

% Write the folder path underneath the button
if chosenFile~=0
    handles.imagePathText.String = fullfile(filePath,chosenFile);
    handles.loadButton.Enable = 'on';
    figData = guidata(gcf);
    figData.chosenFile = fullfile(filePath,chosenFile);
    guidata(gcf,figData);
else
    handles.imagePathText = 'None selected';
end