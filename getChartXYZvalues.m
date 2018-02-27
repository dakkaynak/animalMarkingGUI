function XYZ = getChartXYZvalues(chart,colors)
%
% XYZ = GETCHARTXYZVALUES(CHART,COLORS)
%
% CHART     : struct containing properties of the color chart. see
% macbethColorChecker.m for the format.
% COLORS    : cell array containing the names, or numbers of color patches
% in the chart being used. see macbethColorChecker.m for the format.
% XYZ     : XYZ values corresponding to each patch,
%           size size(colors,1) * size(colors,2) x 3
%
% ************************************************************************
% If you use this code, please cite the following paper:
%
%
% <paper>
%
% ************************************************************************
% For questions, comments and bug reports, please use the interface at
% Matlab Central/ File Exchange. See paper above for details.
% ************************************************************************
% The MIT License (MIT)
%
% Copyright (c) <2013> <Derya Akkaynak>
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in
% all copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
% THE SOFTWARE.
% ************************************************************************

n = 1;
s = size(colors);
XYZ = zeros(s(1)*s(2),3);
for row = 1:s(1)
    for col = 1:s(2)
        curColor = colors{row,col};
            XYZ(n,:) = chart.(curColor).xyz;
        n = n+1;
    end
end