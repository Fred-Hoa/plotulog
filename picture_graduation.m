close all
%%
%��ֵ
att_q = [q0,q1,q2,q3];
rpy = []; 
  for i=1:length(att_q)
    rpy = [rpy; quaternionToEuler(att_q(i,1), att_q(i,2), att_q(i,3), att_q(i,4)) ];
  end
  
 t_sp = timestamp2/1000000;
 t = timestamp1/1000000;
%%
%��̬��
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
legend('��ת��','������ת���ź�');
xlabel('����ʱ�� /s');
ylabel('��ת�Ƕȸ������� /��');
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
legend('������','�����������ź�');
xlabel('����ʱ�� /s');
ylabel('�����Ƕȸ������� /��');
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
legend('ƫ����','����ƫ�����ź�');
xlabel('����ʱ�� /s');
ylabel('ƫ���Ƕȸ������� /��');
set(gca,'FontSize',20);

%��̬���ٶ�
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
legend('��ת���ٶ�','������ת���ٶ��ź�');
xlabel('����ʱ�� /s');
ylabel('��ת���ٶȸ������� /��/s');
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
legend('�������ٶ�','�����������ٶ��ź�');
xlabel('����ʱ�� /s');
ylabel('�������ٶȸ������� /��/s');
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
legend('ƫ�����ٶ�','����ƫ�����ٶ��ź�');
xlabel('����ʱ�� /s');
ylabel('ƫ�����ٶȸ������� /��/s');
set(gca,'FontSize',20);