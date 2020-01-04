dh=[0 10.16 0 -pi/2 0 0;
    0 0 10.414 0 0 -pi/2;
    0 0 11.43 0 0 0;
    0 0 0 pi/2 0 pi/2;
    0 15.24 0 0 0 0];
r=SerialLink(dh);
%r.plot([0 0 0 0 0]);
%r.fkine([0 0 pi/2 0 0])
%r.teach
x=30;
y=2;
z=0;
fprintf('Length of arm is %f\n',((x^2)+(y^2)+(z^2))^0.5);
T=transl(x,y,z);
r.qlim(1,1)=-90*(pi/180);
r.qlim(1,2)=90*(pi/180);
r.qlim(2,1)=-180*(pi/180);
r.qlim(2,2)=90*(pi/180);
r.qlim(3,1)=-180*(pi/180);
r.qlim(3,2)=90*(pi/180);
r.qlim(4,1)=-90*(pi/180);
r.qlim(4,2)=90*(pi/180);
r.qlim(5,1)=-pi/2;
r.qlim(5,2)=pi/2;
min=1000;
% for i=-pi/2:pi/4:pi/2
%     i
%     for j=-pi/2:pi/4:pi/2
%         j
%         for k=-pi/2:pi/4:pi/2
%             for l=-pi/2:pi/4:pi/2
%                 for m=-pi/2:pi/4:pi/2
%                     angles=r.ikcon(T,[i j k l m]);
%                     forward=r.fkine(angles);
%                     se=((x-forward.t(1))^2)+((y-forward.t(2))^2)+((z-forward.t(3))^2);
%                     mse=se/3;
%                     if mse<min
%                         min=mse;
%                         fangles=[i j k l m];
%                     end
%                 end
%             end
%         end
%     end
% end
qo=[ 1 0 -1 -2 1];
anglesi=r.ikine(T,qo,'mask',[1 1 1 0 0 0]);
% final=r.fkine(anglesi)
% [q,err,exitflag]=r.ikcon(T,qo)
% final=r.fkine(q)
r.plot(anglesi);
anglesi=anglesi*(180/pi)
% anglesm=r.ikinem(T,qo)*(180/pi)
% final=r.fkine(angles,'deg')
