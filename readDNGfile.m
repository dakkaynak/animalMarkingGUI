function outImg = readDNGfile(path)
%
% OUTIMG = READDNGFILE(PATH)
% 
% PATH      : full or local path that points to the dng file
% OUTIMG    : the .dng file converted to a matrix, values scaled to be
% between 0 and 1
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


warning off MATLAB:tifflib:TIFFReadDirectory:libraryWarning
t = Tiff(path,'r');
offsets = getTag(t,'SubIFD');
setSubDirectory(t,offsets(1));
outImg = read(t);
close(t);
outImg = double(outImg)./max(double(outImg(:)));
%outImg = double(outImg)./2^8;