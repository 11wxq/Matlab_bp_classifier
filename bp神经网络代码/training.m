clear; clc; close all;
%% ѵ�����ݳ�ʼ��
vecLen=2;%����ά��
sampleN=30;%�����������ݸ���
[Xin,Yd] = sample_create(sampleN);

%% ����������
net = create_net(3,[vecLen,5,1],...%�����ͳ�ʼ�������磬3�㣬����ֱ�Ϊ2��5��1���ڵ�
    1e-3,500*sampleN,0.1,0.0);%�趨�����������Ʋ���
%�˴�����ֱ���޸�net���������ڵ���

%% ѵ������
net1 = net_train_per(net,Xin,Yd);%�������ѵ��
net2 = net_train_mass(net,Xin,Yd);%��������ѵ��


figure('Name','�������');
plot(net1.ErrIter,'b.-'),hold on; grid on
plot(net2.ErrIter,'rx-');
ylim([min([net1.ErrIter(end),net2.ErrIter(end)]),max([net1.ErrIter(1),net2.ErrIter(1)])]);
legend('�����������','������������');xlabel('��������');ylabel('�������');
