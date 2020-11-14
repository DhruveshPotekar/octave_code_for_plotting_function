clear all 
close all 
clc

%input range
x=-2:0.1:2;
y=x;

%meshgrid(x,y) returns 2-D grid coordinates based on the coordinates contained in vectors x and y
[X,Y]=meshgrid(x,y);

%function F depends on both x and y 
F = X.*exp(-X.^2-Y.^2);

%The function plots the values in matrix F as heights above a grid in the x-y plane defined by X and Y
surf(X,Y,F)

%xlabel( ) labels the x-axis of the current axes
xlabel('x','Fontsize',15,'Fontweight','bold','color','k')
%ylabel( ) labels the y-axis of the current axes 
ylabel('y','Fontsize',15,'Fontweight','bold','color','k')
%zlabel( ) labels the z-axis of the current axes
zlabel('x*e^{-x^2-y^2}','Fontsize',15,'Fontweight','bold','color','k')

%colorbar displays a vertical colorbar to the right of the current axes 
colorbar

