% Reference : https://kr.mathworks.com/help/stats/normal-distribution.html
clear all; clc;
load examgrades
x = grades(:,1);
pd = fitdist(x,'Normal')

x = [-7:0.01:7];
y = normpdf(x,0,1);

theta = 0:0.001:0.5; 
ver_y = theta;
ver_y2 = 2;
ver_x = 6;
ver_x2 = -6;
ver_x3 = 1.96;
ver_x4 = -1.96;
colors = get(groot,'defaultAxesColorOrder');
set(figure(1), 'units','normalized','pos',[0.1 0.3 0.4 0.3]); %[xPos yPos xSize ySize]
hold on; grid on; box on;
plot(x, y,  'Color' , colors(1,:) ,'LineStyle', '-', 'LineWidth', 2);
% plot(ver_x, ver_y, 'Color' ,colors(1,:) ,'LineStyle', '-', 'LineWidth', 1);
stem(ver_x,ver_y2,'Marker','none', 'Color' ,colors(2,:) ,'LineStyle', '--', 'LineWidth', 2);
stem(ver_x2,ver_y2,'Marker','none', 'Color' ,colors(2,:) ,'LineStyle', '--', 'LineWidth', 2);
stem(ver_x3,ver_y2,'Marker','none', 'Color' ,colors(2,:) ,'LineStyle', '--', 'LineWidth', 2);
stem(ver_x4,ver_y2,'Marker','none', 'Color' ,colors(2,:) ,'LineStyle', '--', 'LineWidth', 2);
set(gca,'fontname','Times New Roman','FontSize', 13)
title('Standard Normal Distribution'); 
ylim([0 0.5]); xlim([-7 7]);
% ylim([0 0.08]); xlim([1.5 7]);
% ylim([0 0.08]); xlim([-7 -2]);
figure(2)
pd = makedist('Normal')
x = -7:0.01:7;
p = cdf(pd,x);

set(figure(2), 'units','normalized','pos',[0.5 0.3 0.4 0.3]); %[xPos yPos xSize ySize]
hold on; grid on; box on;
plot(x, p,  'Color' , colors(1,:) ,'LineStyle', '-', 'LineWidth', 2);
stem(ver_x,ver_y2,'Marker','none', 'Color' ,colors(2,:) ,'LineStyle', '--', 'LineWidth', 2);
stem(ver_x2,ver_y2,'Marker','none', 'Color' ,colors(2,:) ,'LineStyle', '--', 'LineWidth', 2);
stem(ver_x3,ver_y2,'Marker','none', 'Color' ,colors(2,:) ,'LineStyle', '--', 'LineWidth', 2);
stem(ver_x4,ver_y2,'Marker','none', 'Color' ,colors(2,:) ,'LineStyle', '--', 'LineWidth', 2);
set(gca,'fontname','Times New Roman','FontSize', 13)
title('Cumulative Distribution Function'); ylim([0 1.1]);xlim([-7 7]);
