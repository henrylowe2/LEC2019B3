% GORILLAS:This is a MATLAB implementation of a simplified 
% version of the game Gorillas which was first introduced 
% with MS-DOS. 
%
% This project was initially adapted to the ENCMP course by Dr. Dileepan
% Joseph.
% 
% This coude is released under MIT License
%
% Jan 29, 2019


%% Reset the envoronment

close all % closing all figures
clc % clear the command window
clear % clear all workspace variables

% Launch a figure window
figure(1)
hold on
rng('shuffle');

% Set some initial parameters
buildingWidth = 12; % in meters
buildingCount = 10;
minHeight = 25; % in meters
maxHeight = 75; % in meters


%% Set up the stage by creating a bar chart (10 bars, each 12 units wide)

stageX = 1 : buildingWidth : buildingWidth*buildingCount; % x values
stageY = randi([minHeight maxHeight], 1, buildingCount);
bar(stageX, stageY)


title('{\itGorillas} in MATLAB');
xlabel('Position (m)');
ylabel('Height (m)');


%% Randomly positioning players (gorillas)

% Place player 1 on a building in the west half of the stage
idx1 = randi([1 round(length(stageX)/2)]);
player1X = stageX(idx1);
player1Y = stageY(idx1) + ;
plot(player1X, player1Y, 'p', 'MarkerSize', 20)


% Place player 2 on a building east to the first player's building
idx2 = randi([idx1+1 round(length(stageX))]);
player2X = stageX(idx2);
player2Y = stageY(idx2);
plot(player2X, player2Y, 'p', 'MarkerSize', 20)


%% Player 1 throws a banana

% % % disp('Gorilla (facing east):');
% % % a0 = round(input('    Angle (degrees)? '));
% % % v0 = round(input('    Velocity (m/s)? '));

%compute a time vector, in seconds, and then the trajectory
t = 0:0.1:20;
x0 = player1X;
y0 = player1Y + 3;
x = x0 + v0 * cosd(a0) * t; 
y = y0 + v0 * sind(a0) * t - 9.81/2 * t.^2;
plot(x,y,'r-');
figure(gcf) % bring the current figure to focus


Y1 = v0 sind(a0) * (p2x - w/2) - 0.5 * 9.81 * ((p2x-w/2)/(v0*cosd(a0))) ^2;
Y2 = v0 sind(a0) * (p2x + w/2) - 0.5 * 9.81 * ((p2x+w/2)/(v0*cosd(a0))) ^2; 

if (Y1 > p2y) && (Y2 < p2y)
    disp('player 1 won')
    exit
end



%% Player 2 throws a banana

% % % disp('Gorilla (facing west):');
% % % a0 = round(input('    Angle (degrees)? '));
% % % a0 = 180 - a0;
% % % v0 = round(input('    Velocity (m/s)? '));

%compute a time vector, in seconds, and then the trajectory
% % % t = 0:0.1:20;
% % % x0 = player2X;
% % % y0 = player2Y + 3;
% % % x = x0 + v0 * cosd(a0) * t; 
% % % y = y0 + v0 * sind(a0) * t - 9.81/2 * t.^2;
% % % plot(x,y,'b-');
% % % figure(gcf) % bring the current figure to focus

