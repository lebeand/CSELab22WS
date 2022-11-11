clear
close all

xAxis = linspace(-2*pi,2*pi,100);
yAxisf = sin(xAxis);
yAxisg = cos(xAxis);

hold on 
    plot(xAxis,yAxisf,"--b","LineWidth",1.6)
    plot(xAxis,yAxisg,"k")
    title("Sinus")
    legend("sin(x)","cos(x)")
hold off

