function [Map]=map(dataBssid,dataMap,n1,n2,n3);

% [a,b]=map('dataBssid.txt','dataRssi_at_1.txt',10,20,30);

%*********************************************************************************************
%2015.3.28
%����ָ�ƿ�
%�������˵����    dataBssid��RSS���ݵ�BSSID��
%                               dataMap���ɼ������ݣ�
%                               n1,n2,n3��Χ������һ�ܵĸ��ϵ���
%�������˵����     Map����RSS��������Ҫ������ȡ������Map����
%*************************************************************************************************
    [a,b]=wifiOrder(dataBssid);
% [a,b]=wifiOrder('dataBssid.txt');
    num=size(b,1);
    data=getRssi(dataMap);
%     data=getRssi('dataRssi_at_1.txt');
    [m,n]=size(data);
    Map=zeros(m,num+2);
    Map(:, 1:num)=data(:, 1:num);
    
    %����λ��
    xm=77;
    ym=56;
    length_total=(76+55)*2;
    step_length=length_total/m;
    %��һ��
    Map(1:n1,num+1:end)=position(1,1,77,1,n1);
    Map(n1+1:n2, num+1:end)=position(77,1, 77,56, n2-n1);
    Map(n2+1:n3, num+1:end)=position(77,56, 1,56, n3-n2);
    Map(n3+1:end, num+1:end)=position(1,56, 1,1, m-n3);
    
    
end