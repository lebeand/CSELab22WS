clear
close all


f =@(x) sin(x);
x = linspace(-2*pi,2*pi,1000);
h = pi/8;

df1 = vorwaertsdiff(f,x,h);
df2 = zent_diff(f,x,h);

% hold on
%     plot(x,df1)
%     plot(x,sin(x))
%     plot(x,cos(x))
%     plot(x,df2)
%     legend("df1","sin","cos","df2")
% hold off

hVec = linspace(10^(-10), 10^(-5), 10);

errorVor = zeros(1, length(hVec));
errorZentr = zeros(1, length(hVec));
for i = 1:length(hVec)
    errorVor(i) = norm(vorwaertsdiff(f,x,hVec(i)) - cos(x),2);
    errorZentr(i) = norm(zent_diff(f,x,hVec(i)) - cos(x),2);
end


figure
hold on
    loglog(hVec,errorVor)
    loglog(hVec,errorZentr)
    %legend("df1","sin")
hold off



function [df] = vorwaertsdiff(f,x,h)
    df = (f(x+h)-f(x))/h;
end


function [df] = zent_diff(f,x,h)
    df = (f(x+h)-f(x-h))/(2*h);
end
