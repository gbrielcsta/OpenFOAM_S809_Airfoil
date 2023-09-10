
clear all;
close all;
clc

% Parameter Definitions
U = 14.607;               % Inlet Velocity [m/s]
AoA = 0;                  % Angle of Attack [degrees]
I = 0.01;                 % Turbulence Intensity
C = 1.00;                 % Chord length [m]

PI = 3.14;                % Value of Pi

% Calculation of Velocity Components
Ux = cos(AoA * PI / 180) * U;  % X-Velocity Component 
Uy = sin(AoA * PI / 180) * U;  % Y-Velocity Component

% Calculation of Other Variables
Lx = -sin(AoA * pi / 180);
Ly = cos(AoA * pi / 180);
Dx = cos(AoA * pi / 180);
Dy = sin(AoA * pi / 180);

% Calculation of Turbulence-related Variables
k = (3/2) * (U * I)^2;
epsilon = (0.09^0.75) * (k^1.5) / (0.08 * C);
omega = sqrt(k) / (0.09^0.25 * 0.08 * C);
nut = 0.09 * (k^2) / epsilon;
