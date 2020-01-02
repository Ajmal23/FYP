dh=[0 3.1 0 -pi/2 0 0;
    0 0 1 0 0 -pi/2;
    0 0 4.1 0 0 0;
    0 0 0 pi/2 0 pi/2;
    0 12 0 0 0 0];
r=SerialLink(dh);
hold on;N=10000; 
for n=1:1:10000 
                                
theta1=-14/180*pi+(14/180*pi+160/180*pi)*rand(N,1); %limit of joint1 -14 to 160
theta2=-11/180*pi+(11/180*pi+140/180*pi)*rand(N,1);   %limit of joint2 -11 to 140
theta3=-0/180*pi+(0/180*pi+180/180*pi)*rand(N,1);  %limit of joint3 0 to 180
theta4=-0/180*pi+(0/180*pi+180/180*pi)*rand(N,1); %limit of joint4 0 to 180
theta5=-90/180*pi+(90/180*pi+90/180*pi)*rand(N,1); %limit of joint5 -90 to 90
qq=[theta1(n),theta2(n),theta3(n),theta4(n),theta5(n)];
Mricx=r.fkine(qq);
hold on;
drawnow;
plot3(Mricx.t(1),Mricx.t(2),Mricx.t(3),'b.','MarkerSize',0.5);
pause(0.001)
n
end
