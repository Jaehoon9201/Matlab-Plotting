clear all 
close all 
clc 

t= 0:0.01 :1;
y = sin(50.*t) ;

pos_size = [0.4, 0.4, 0.3, 0.3];
xlim = [0, 1];ylim = [-2, 2];
plotfunc_opt1(1, t, y,pos_size, xlim, ylim, ...
            'ON', 'test plot', 'x', 'y', 'test line');

plotfunc_opt1(2, t, y,pos_size, xlim, ylim, ...
            'OFF', 'null', 'null', 'null', 'null');