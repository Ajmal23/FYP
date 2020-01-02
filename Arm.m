dh=[0 3.1 0 -pi/2 0 0;
    0 0 1 0 0 -pi/2;
    0 0 4.1 0 0 0;
    0 0 0 pi/2 0 pi/2;
    0 12 0 0 0 0];
r=SerialLink(dh);
r.plot([0 0 0 0 0]);
%r.fkine([0 0 pi/2 0 0])
r.teach
T=transl(12,0,0);
r.qlim(1,1)=-14*(pi/180);
r.qlim(1,2)=160*(pi/180);
r.qlim(2,1)=-11*(pi/180);;
r.qlim(2,2)=140*(pi/180);;
r.qlim(3,1)=-pi/2;
r.qlim(3,2)=pi/2;
r.qlim(4,1)=-pi/2;
r.qlim(4,2)=pi/2;
r.qlim(5,1)=-pi/2;
r.qlim(5,2)=pi/2;
angles=r.ikcon(T)*(180/pi)
angles(1)=((180/151)*angles(1))+11;
angles(2)=((30/29)*angles(1))+14;
angles(3)=((1)*angles(1))-90;
angles(4)=-angles(1)+90;
% port at which your arduino is connected

port = 'COM9';

% model of your arduino board

board = 'Uno';

% creating arduino object with servo library

arduino_board = arduino(port, board, 'Libraries', 'Servo');

% creating servo motor object

servo_motor_1 = servo(arduino_board, 'D8');
servo_motor_2 = servo(arduino_board, 'D9');
servo_motor_3 = servo(arduino_board, 'D10');
servo_motor_4 = servo(arduino_board, 'D11');
servo_motor_5 = servo(arduino_board, 'D12');

%motor 1
current_position = readPosition(servo_motor_1);
if current_position<angles(1)/180
    for angle=current_position:0.2:angles(1)/180
        writePosition(servo_motor_1, angle);
        current_pos = readPosition(servo_motor_1);
        current_pos = current_pos*180;
        fprintf('Current motor 1 position is %d degrees\n', current_pos);
        pause(2);
    end
else
    for angle=current_position:-0.2:angles(1)/180
        writePosition(servo_motor_1, angle);
        current_pos = readPosition(servo_motor_1);
        current_pos = current_pos*180;
        fprintf('Current motor 1 position is %d degrees\n', current_pos);
        pause(2);
    end
end

%motor 2
current_position = readPosition(servo_motor_2);
if current_position<angles(2)/180
    for angle=current_position:0.2:angles(2)/180
        writePosition(servo_motor_2, angle);
        current_pos = readPosition(servo_motor_2);
        current_pos = current_pos*180;
        fprintf('Current motor 2 position is %d degrees\n', current_pos);
        pause(2);
    end
else
    for angle=current_position:-0.2:angles(2)/180
        writePosition(servo_motor_2, angle);
        current_pos = readPosition(servo_motor_2);
        current_pos = current_pos*180;
        fprintf('Current motor 2 position is %d degrees\n', current_pos);
        pause(2);
    end
end

%motor 3
current_position = readPosition(servo_motor_3);
if current_position<angles(3)/180
    for angle=current_position:0.2:angles(3)/180
        writePosition(servo_motor_3, angle);
        current_pos = readPosition(servo_motor_3);
        current_pos = current_pos*180;
        fprintf('Current motor 3 position is %d degrees\n', current_pos);
        pause(2);
    end
else
    for angle=current_position:-0.2:angles(3)/180
        writePosition(servo_motor_3, angle);
        current_pos = readPosition(servo_motor_3);
        current_pos = current_pos*180;
        fprintf('Current motor 3 position is %d degrees\n', current_pos);
        pause(2);
    end
end

%motor 4
current_position = readPosition(servo_motor_4);
if current_position<angles(4)/180
    for angle=current_position:0.2:angles(4)/180
        writePosition(servo_motor_4, angle);
        current_pos = readPosition(servo_motor_4);
        current_pos = current_pos*180;
        fprintf('Current motor 4 position is %d degrees\n', current_pos);
        pause(2);
    end
else
    for angle=current_position:-0.2:angles(4)/180
        writePosition(servo_motor_4, angle);
        current_pos = readPosition(servo_motor_4);
        current_pos = current_pos*180;
        fprintf('Current motor 4 position is %d degrees\n', current_pos);
        pause(2);
    end
end

%motor 5
current_position = readPosition(servo_motor_5);
if current_position<angles(5)/180
    for angle=current_position:0.2:angles(5)/180
        writePosition(servo_motor_5, angle);
        current_pos = readPosition(servo_motor_5);
        current_pos = current_pos*180;
        fprintf('Current motor 5 position is %d degrees\n', current_pos);
        pause(2);
    end
else
    for angle=current_position:-0.2:angles(5)/180
        writePosition(servo_motor_5, angle);
        current_pos = readPosition(servo_motor_5);
        current_pos = current_pos*180;
        fprintf('Current motor 5 position is %d degrees\n', current_pos);
        pause(2);
    end
end
