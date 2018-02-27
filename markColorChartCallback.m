function markColorChartCallback(hObject, eventdata,handles)
figData = guidata(gcf);
if hObject.Value
    if ~isfield(figData,'xformImg')
        I = figData.rawImg;
        imgPath = figData.imgPath;
        s = size(I);
        if figData.passportButton.Value;
            load MacbethColorCheckerPassport.mat % update with selected chart
        elseif figData.passportButton.Value;
            load MacbethColorCheckerData.mat % update with selected chart
        end
        masks = makeChartMask2(chart,colors,s);
        
        % save the masks in the same folder
        save([imgPath(1:end-4),'_masks.mat'],'masks');
        figData.userMasks = masks;
        
        % Update the image
        RGB = getChartRGBvalues(I,masks,colors);
        XYZ = getChartXYZvalues(chart,colors);
        
        XYZ = XYZ./repmat([0.5692    0.5909    0.4860],[size(XYZ,1) 1]);
        T = XYZ' * pinv(RGB)';
        Ixyz = reshape((T*reshape(I,[s(1)*s(2) 3])')',[s(1) s(2) 3]);
        Irgb = XYZ2ProPhoto(Ixyz); % ProPhoto is a wide gamut RGB space that won't clip most colors.
        imshow(Irgb)
        figData.xformImg = Irgb;
        imwrite(Irgb,[imgPath(1:end-4),'_xform.tiff'],'compression','none')
        guidata(gcf,figData);
    else
        hObject.Value = 0;
    end
end
