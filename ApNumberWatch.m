% �鿴����ȡ���ݵ�AP�����ĳ���
% ����ָ�ƿ�֮ǰ�Ȳ鿴AP��������ָ�ƿ�Ҫ�õ�
% dataBssid_2.txtΪ���õ����ݵ�wifi��SSID��


[Test]=map('dataBssid_2.txt','dataRssi_2.txt',32,56,87);
Test=changeOrder(Test, 'dataBssid.txt', 'dataBssid_2.txt');

D=Test(:, 1:end-2);

n=size(D, 1);
for i=1:n
    p(i)=nnz(D(i, :));
end

disp(['�ɼ����ݵ�AP����Ϊ��', num2str(size(p, 2))]);