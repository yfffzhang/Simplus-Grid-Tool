% This function generates the paramters at workspace for simulink model.

% Author(s): Yitong Li

%%
clear all
close all
clc

%%
t0 = 2;
dt = 0.2;

%% Fundamental parameters
Fs = 100;             % (kHz)
Fs = Fs*1e3;
Ts = 1/Fs;

%% Base values
Wbase = 2*pi*50;    % (rad/s)
Vbase = 1;
Sbase = 1;
Ibase = Sbase/Vbase;
Zbase = Vbase/Ibase;
Ybase = 1/Zbase;

%% AC filter parameters
Lf = 0.05;
Cf = 0.02;
Lc = 1e-9;



%% Grid-following inverter
% PLL
w_pll = 15 *2*pi;   % (rad/s)
w_tau = 1e3 *2*pi;  % (rad/s)

% Current loop
w_i_GFL = 1000 *2*pi;    % (rad/s)

% Rated line impedance
Lg = 0.4;
Rg = 1e-6;

%% voltage sag
t0=2;
dt=0.2;
