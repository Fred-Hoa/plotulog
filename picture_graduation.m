close all
%%
%赋值
att_q = [q0,q1,q2,q3];
rpy = []; 
  for i=1:length(att_q)
    rpy = [rpy; quaternionToEuler(att_q(i,1), att_q(i,2), att_q(i,3), att_q(i,4)) ];
  end
  
 t_sp = timestamp2/1000000;
 t = timestamp1/1000000;
%%
%姿态角
figure,
plot(t,rpy(:,1),'r');
hold on;
plot(t_sp,roll_body(1:9533) .*180/pi,'b');

line([60,60],[-50,100],'LineWidth',2,'color','g');
line([100,100],[-50,100],'LineWidth',2,'color','g');
line([150,150],[-50,100],'LineWidth',2,'color','g');
line([290,290],[-50,100],'LineWidth',2,'color','g');
line([320,320],[-50,100],'LineWidth',2,'color','g');
line([0,0],[-50,100],'LineWidth',2,'color','g');
line([400,400],[-50,100],'LineWidth',2,'color','g');
line([0,400],[-50,-50],'LineWidth',2,'color','g');
line([0,400],[100,100],'LineWidth',2,'color','g');

grid on;
axis([0 400 -50 100]);
legend('滚转角','期望滚转角信号');
xlabel('开机时间 /s');
ylabel('滚转角度跟踪曲线 /°');
set(gca,'FontSize',20);

figure,
plot(t,rpy(:,2),'r');
hold on;
plot(t_sp,pitch_body(1:9533) .*180/pi,'b');
line([60,60],[-80,60],'LineWidth',2,'color','g');
line([100,100],[-80,60],'LineWidth',2,'color','g');
line([150,150],[-80,60],'LineWidth',2,'color','g');
line([290,290],[-80,60],'LineWidth',2,'color','g');
line([320,320],[-80,60],'LineWidth',2,'color','g');
line([0,0],[-80,60],'LineWidth',2,'color','g');
line([400,400],[-80,60],'LineWidth',2,'color','g');
line([0,400],[-80,-80],'LineWidth',2,'color','g');
line([0,400],[60,60],'LineWidth',2,'color','g');
grid on;
axis([0 400 -80 60]);
legend('俯仰角','期望俯仰角信号');
xlabel('开机时间 /s');
ylabel('俯仰角度跟踪曲线 /°');
set(gca,'FontSize',20);

figure,
plot(t,rpy(:,3),'r');
hold on;
plot(t_sp,yaw_body(1:9533) .*180/pi,'b');
line([60,60],[-200,200],'LineWidth',2,'color','g');
line([100,100],[-200,200],'LineWidth',2,'color','g');
line([150,150],[-200,200],'LineWidth',2,'color','g');
line([290,290],[-200,200],'LineWidth',2,'color','g');
line([320,320],[-200,200],'LineWidth',2,'color','g');
line([0,0],[-200,200],'LineWidth',2,'color','g');
line([400,400],[-200,200],'LineWidth',2,'color','g');
line([0,400],[-200,-200],'LineWidth',2,'color','g');
line([0,400],[200,200],'LineWidth',2,'color','g');
grid on;
legend('偏航角','期望偏航角信号');
xlabel('开机时间 /s');
ylabel('偏航角度跟踪曲线 /°');
set(gca,'FontSize',20);

%姿态角速度
figure,
plot(t,rollspeed .*180/pi,'r');
hold on;
plot(t_sp,roll .*180/pi,'b');
line([60,60],[-100,100],'LineWidth',2,'color','g');
line([100,100],[-100,100],'LineWidth',2,'color','g');
line([150,150],[-100,100],'LineWidth',2,'color','g');
line([290,290],[-100,100],'LineWidth',2,'color','g');
line([320,320],[-100,100],'LineWidth',2,'color','g');
line([0,0],[-100,100],'LineWidth',2,'color','g');
line([400,400],[-100,100],'LineWidth',2,'color','g');
line([0,400],[-100,-100],'LineWidth',2,'color','g');
line([0,400],[100,100],'LineWidth',2,'color','g');
grid on;
axis([0 400 -100 100]);
legend('滚转角速度','期望滚转角速度信号');
xlabel('开机时间 /s');
ylabel('滚转角速度跟踪曲线 /°/s');
set(gca,'FontSize',20);

figure,
plot(t,pitchspeed .*180/pi,'r');
hold on;
plot(t_sp,pitch .*180/pi,'b');
line([60,60],[-100,100],'LineWidth',2,'color','g');
line([100,100],[-100,100],'LineWidth',2,'color','g');
line([150,150],[-100,100],'LineWidth',2,'color','g');
line([290,290],[-100,100],'LineWidth',2,'color','g');
line([320,320],[-100,100],'LineWidth',2,'color','g');
line([0,0],[-100,100],'LineWidth',2,'color','g');
line([400,400],[-100,100],'LineWidth',2,'color','g');
line([0,400],[-100,-100],'LineWidth',2,'color','g');
line([0,400],[100,100],'LineWidth',2,'color','g');
grid on;
axis([0 400 -100 100]);
legend('俯仰角速度','期望俯仰角速度信号');
xlabel('开机时间 /s');
ylabel('俯仰角速度跟踪曲线 /°/s');
set(gca,'FontSize',20);

figure,
plot(t,yawspeed .*180/pi,'r');
hold on;
plot(t_sp,yaw .*180/pi,'b');
line([60,60],[-100,100],'LineWidth',2,'color','g');
line([100,100],[-100,100],'LineWidth',2,'color','g');
line([150,150],[-100,100],'LineWidth',2,'color','g');
line([290,290],[-100,100],'LineWidth',2,'color','g');
line([320,320],[-100,100],'LineWidth',2,'color','g');
line([0,0],[-100,100],'LineWidth',2,'color','g');
line([400,400],[-100,100],'LineWidth',2,'color','g');
line([0,400],[-100,-100],'LineWidth',2,'color','g');
line([0,400],[100,100],'LineWidth',2,'color','g');
grid on;
axis([0 400 -100 100]);
legend('偏航角速度','期望偏航角速度信号');
xlabel('开机时间 /s');
ylabel('偏航角速度跟踪曲线 /°/s');
set(gca,'FontSize',20);