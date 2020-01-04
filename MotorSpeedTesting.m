port = 'COM9';

% model of your arduino board

board = 'Uno';

% creating arduino object with servo library

arduino_board = arduino(port, board, 'Libraries', 'Servo');

% creating servo motor object

servo_motor_1 = servo(arduino_board, 'D8');
angles=[0];
current_position = readPosition(servo_motor_1);
current_position*180
if current_position<angles(1)/180
    for angle=current_position:0.005:angles(1)/180
        writePosition(servo_motor_1, angle);
        current_pos = readPosition(servo_motor_1);
        current_pos = current_pos*180;
        fprintf('Current motor 1 position is %d degrees\n', current_pos);
        pause(0.009);
    end
else
    for angle=current_position:-0.005:angles(1)/180
        writePosition(servo_motor_1, angle);
        current_pos = readPosition(servo_motor_1);
        current_pos = current_pos*180;
        fprintf('Current motor 1 position is %d degrees\n', current_pos);
        pause(0.009);
    end
end
clearvars
