%%
%�۲����ݵĳ���


%%
%��������
data=getRssi('dataRssi_1.txt');    %data�д�Ų������������ݣ�RSS���ų����Ƕ�
D=data(:,1:end-6);                           % D�д�Ŵų��ͽǶ�����   

%%
%�鿴����������AP�ĸ���
D(find(D(:,:)<-80))=0;
n=size(D,1);
ap_number=zeros(n,1);
for i=1:n
    ap_number(i)=length(find(D(i,:)~=0 ));
end
