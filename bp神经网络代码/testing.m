%% ģ���������
sampleN=30;%�����������ݸ���
[Xin,Yd] = sample_create(sampleN);
%% ʶ������
yo1 = net_test(net1,Xin);%�����������
yo1 = yo1>=0.5;
per1 = sum(yo1 ~=Yd)/length(Yd);
yo2 = net_test(net2,Xin);%������������
yo2 = yo2>=0.5;
per2 = sum(yo2 ~=Yd)/length(Yd);
[per1,per2]