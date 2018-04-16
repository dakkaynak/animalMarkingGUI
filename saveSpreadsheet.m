function saveSpreadsheet(hObject, eventdata,handles)
handles.SelectPointsButton.Value = 0;

figData = guidata(gcf);
imgPath = figData.imgPath;
animalMeanRGB = figData.animalMeanRGB;
animalMeanXYZ = figData.animalMeanXYZ;
selectedPoints = figData.animalPoints;
animalArea = figData.animalArea;
I = figData.xformImg;
Cs = [];
Ns = [];

fid = fopen([imgPath(1:end-4),'_data.txt'],'w+');
fprintf(fid,'Desc. \t Area(pix) \t R \t G \t B \t X \t Y \t Z \n');


fprintf(fid,['mean',' \t',num2str(animalArea),'\t', num2str(animalMeanRGB(1)),'\t',num2str(animalMeanRGB(2)),'\t',num2str(animalMeanRGB(3)),'\t',...
    num2str(animalMeanXYZ(1)),'\t',num2str(animalMeanXYZ(2)),'\t',num2str(animalMeanXYZ(3)),'\n']);

for i = 1:numel(selectedPoints)
    fprintf(fid,[['pt_',num2str(i)],' \t',num2str(selectedPoints(i).area),'\t', num2str(selectedPoints(i).colorsRGB(1)),...
        '\t',num2str(selectedPoints(i).colorsRGB(2)),'\t',num2str(selectedPoints(i).colorsRGB(3)),'\t',...
        num2str(selectedPoints(i).colorsXYZ(1)),'\t',num2str(selectedPoints(i).colorsXYZ(2)),'\t',num2str(selectedPoints(i).colorsXYZ(3)),'\n']);

    stats = regionprops(logical(selectedPoints(i).mask),'Centroid');
    Cs = [Cs; stats(1).Centroid];
    Ns = [Ns i];
end


fclose(fid);


labelImg = insertText(I,Cs,Ns,'fontsize',30,'anchorpoint','center');
imwrite(labelImg,[imgPath(1:end-4),'_selectedPoints.jpg'])