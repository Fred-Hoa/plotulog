function [time_sensor,acc_xyz,gyro_xyz] = readSensorData(folderName)
  if(strfind(folderName,'/')>0)
    fnum = strsplit(folderName,'/');
    fnum = fnum{2};
  else
    disp('请正确输入日志地址：out/$(logname)/');
  end
  fname_sens = sprintf('%s%s_sensor_combined_0.csv',folderName, fnum);
  data_sens_exist = true;
  if(~checkFile(fname_sens)) data_sens_exist = false; end;
  
  if(data_sens_exist)
    data_sens = dlmread(fname_sens,',',1,0);  
%     [row4,col4] = size(data_sens);
    time_sensor = data_sens(:,1)/1000000; 
    gyro_xyz =[ data_sens(:,2) data_sens(:,3) data_sens(:,4) ]; 
    acc_xyz = [ data_sens(:,7) data_sens(:,8) data_sens(:,9) ];
  else time_sensor = 0; gyro_xyz = [ 0 0 0 ]; acc_xyz = [ 0 0 0 ];
  end
  end
