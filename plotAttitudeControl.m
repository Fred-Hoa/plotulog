function plotAttitudeControl(time_att, att_rpy, time_att_sp, att_rpy_sp, time_input_rc, input_rc, path)
  input_roll = (input_rc(:,1)-1500)/500;  %rc roll channel set to 3
  input_pitch = (input_rc(:,2)-1500)/500;  %rc roll channel set to 3
  input_yaw = (input_rc(:,3)-1500)/500;
  h_att = figure(30,'Position',[1000,900,500,400]);
  subplot(211)
  plot(time_att, att_rpy(:,1),'LineWidth',1.5);
  xlim( [ time_att(1) time_att(length(time_att)) ]);
  grid on;
  set (gca, "xminorgrid", "on");  xlabel("Time(sec)");  ylabel("Roll");  title("Roll");
  hold on;
  plot(time_att_sp, att_rpy_sp(:,1), 'LineWidth',1.5);
  plot(time_input_rc, input_roll, 'LineWidth',1.2);
  [hleg1 hobj1] = legend("IMU", "Setpoint", "Input Roll");
  %set(hleg1,'position',[0.77 0.77 0.13 0.21])
  hold off;
  subplot(212)
  plot(time_att, att_rpy(:,2),'LineWidth',1.5);
  xlim( [ time_att(1) time_att(length(time_att)) ]);
  grid on;
  set (gca, "xminorgrid", "on");  xlabel("Time(sec)");  ylabel("Roll");  title("Pitch");
  hold on;
  plot(time_att_sp, att_rpy_sp(:,2), 'LineWidth',1.5);
  plot(time_input_rc, input_pitch, 'LineWidth',1.2);
  [hleg1 hobj1] = legend("IMU", "Setpoint", "Input Pitch");
  %set(hleg1,'position',[0.77 0.77 0.13 0.21])
  hold off;
  saveName = sprintf("%sAttitude_Control.png", path)
  saveas(h_att,saveName);
  
endfunction
