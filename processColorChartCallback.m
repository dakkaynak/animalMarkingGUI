function processColorChartCallback(hObject,eventdata,handles)

classic = handles.classicButton.Value;
passport = handles.passportButton.Value;

if classic
    % load Macbeth color chart data
    load MacbethColorCheckerData.mat
    
elseif passport
end

XYZ = getChartXYZvalues(chart,colors);

