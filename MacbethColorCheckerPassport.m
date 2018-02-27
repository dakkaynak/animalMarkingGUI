% Derya Akkaynak - derya.akkaynak@gmail.com
% properties of a Macbeth Color Checker Passport from Emy

% names of colors in chart
colors{1,1} = 'darkskin';   colors{1,2} = 'lightskin';      colors{1,3} = 'bluesky';        colors{1,4} = 'foliage';    colors{1,5} = 'blueflower'; colors{1,6} = 'bluishgreen';
colors{2,1} = 'orange';     colors{2,2} = 'purplishblue';   colors{2,3} = 'moderatered';    colors{2,4} = 'purple';     colors{2,5} = 'yellowgreen';colors{2,6} = 'orangeyellow';
colors{3,1} =  'blue';      colors{3,2} = 'green';          colors{3,3} = 'red';            colors{3,4} = 'yellow';     colors{3,5} = 'magenta';    colors{3,6} = 'cyan';
colors{4,1} =  'white';     colors{4,2} = 'neutral8';       colors{4,3} = 'neutral65';      colors{4,4} = 'neutral5';   colors{4,5} = 'neutral35';  colors{4,6} = 'black';

% D50
macbeth.darkskin.xyz = lab2xyz([39.42 13.80 14.58])./100;
macbeth.lightskin.xyz = lab2xyz([66.02 18.94 17.08])./100;
macbeth.bluesky.xyz = lab2xyz([50.23 -5.24 -22.30])./100;
macbeth.foliage.xyz = lab2xyz([43.95 -11.76 21.96])./100;
macbeth.blueflower.xyz = lab2xyz([55.79 8.39 -24.39])./100;
macbeth.bluishgreen.xyz = lab2xyz([71.20 -33.64 0.06])./100;
macbeth.orange.xyz =lab2xyz([63.11 36.23 57.90])./100;
macbeth.purplishblue.xyz = lab2xyz([40.60 11.35 -47.91])./100;
macbeth.moderatered.xyz = lab2xyz([51.66 49.55 17.45])./100;
macbeth.purple.xyz = lab2xyz([30.67 22.77 -20.50])./100;
macbeth.yellowgreen.xyz = lab2xyz([73.32 -23.11 57.74])./100;
macbeth.orangeyellow.xyz = lab2xyz([72.37 20.38 68.60])./100;
macbeth.blue.xyz = lab2xyz([30.33 14.96 -51.16])./100;
macbeth.green.xyz = lab2xyz([56.55 -39.05 33.24])./100;
macbeth.red.xyz = lab2xyz([43.36 51.42 28.76])./100;
macbeth.yellow.xyz = lab2xyz([83.22 3.88 81.53])./100;
macbeth.magenta.xyz = lab2xyz([52.99 50.02 -14.00])./100;
macbeth.cyan.xyz = lab2xyz([51.33 -28.90 -28.04])./100;
macbeth.white.xyz = lab2xyz([97.95 -0.58 2.07])./100;
macbeth.neutral8.xyz = lab2xyz([83.32 -0.59 0.17])./100;
macbeth.neutral65.xyz = lab2xyz([67.42 -0.73 0.17])./100;
macbeth.neutral5.xyz = lab2xyz([51.32 -0.12 0.17])./100;
macbeth.neutral35.xyz =lab2xyz( [36.18 -0.76 -0.77])./100;
macbeth.black.xyz = lab2xyz([20.44 0.04 -0.53])./100;

% D65
% macbeth.darkskin.xyz = lab2xyz([38.96	12.13	13.84])./100;
% macbeth.lightskin.xyz = lab2xyz([65.5	15.59	16.81])./100;
% macbeth.bluesky.xyz = lab2xyz([50.69	-2.09	-21.75])./100;
% macbeth.foliage.xyz = lab2xyz([43.92	-13.33	22.19])./100;
% macbeth.blueflower.xyz = lab2xyz([56.01	10.88	-24.39])./100;
% macbeth.bluishgreen.xyz = lab2xyz([71.84	-32.97	1.91])./100;
% macbeth.orange.xyz =lab2xyz([61.81	32.91	55.95])./100;
% macbeth.purplishblue.xyz = lab2xyz([41.33	17.83	-46.95])./100;
% macbeth.moderatered.xyz = lab2xyz([50.35	47.1	15])./100;
% macbeth.purple.xyz = lab2xyz([30.48	24.51	-21.61])./100;
% macbeth.yellowgreen.xyz = lab2xyz([73.21	-26.94	59.01])./100;
% macbeth.orangeyellow.xyz = lab2xyz([71.32	16.6	67.24])./100;
% macbeth.blue.xyz = lab2xyz([31.16	22.38	-50.04])./100;
% macbeth.green.xyz = lab2xyz([56.9	-41.24	35.11])./100;
% macbeth.red.xyz = lab2xyz([41.88	48.07	26.22])./100;
% macbeth.yellow.xyz = lab2xyz([82.45	-1.08	81.57])./100;
% macbeth.magenta.xyz = lab2xyz([52.05	49.7	-16.34])./100;
% macbeth.cyan.xyz = lab2xyz([52.4	-24.88	-25.64])./100;
% macbeth.white.xyz = lab2xyz([97.94	-0.96	2.26])./100;
% macbeth.neutral8.xyz = lab2xyz([82.33	-0.6	0.26])./100;
% macbeth.neutral65.xyz = lab2xyz([67.43	-0.71	0.24])./100;
% macbeth.neutral5.xyz = lab2xyz([51.31	-0.1	0.2])./100;
% macbeth.neutral35.xyz =lab2xyz( [36.2	-0.59	-0.73])./100;
% macbeth.black.xyz = lab2xyz([20.44	0.12	-0.54])./100;



chart = macbeth;
clear macbeth;
save MacbethColorCheckerPassport.mat chart colors

