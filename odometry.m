function [Ed, Eb] = odometry(Xcw, Ycw, Xccw, Yccw, L, b0)
    betaX = (Xcw-Xccw)/(-4*L)*180/pi;
    betaY = (Ycw+Yccw)/(-4*L)*180/pi;
    beta=(betaX+betaY)/2;
    alphaX = (Xcw+Xccw)/(-4*L)*180/pi;
    alphaY = (Ycw-Yccw)/(-4*L)*180/pi;
    alpha=(alphaX+alphaY)/2;
    R=L/2/sind(beta/2);
    Ed = (R+b0/2)/(R-b0/2);
    Eb = 90/(90-alpha);
end