function [Map2]=addMap(Map1,dataBssid,dataMap,n1,n2,n3);
%**************************************************************
%��map������ϣ���������
%****************************************************************
    data=map(dataBssid,dataMap,n1,n2,n3);
    n=size(data,1);
    m=size(Map1);
    Map2=Map1;
    Map2(m+1:m+n,:)=data;
    
    
end