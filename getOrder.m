function [n]=getOrder(Bssid1,Bssid2)
%*****************************************************
%�õ�wifi˳��
%Bssid1��ʾָ�ƿ��wifi˳��Bssid2Ϊ��λ���ݵ�wifi˳��
%*****************************************************
    [MapWifi,MapOrder]=wifiOrder(Bssid1);
    [TestWifi,TestOrder]=wifiOrder(Bssid2);
    flag=0;
    for i=1:size(MapWifi,1)  
        
        for j=1:size(TestWifi,1)
            if (strcmp(MapWifi(i),TestWifi(j))==1)  %�Ƚ�ָ�ƿ��ip��ַ�Ƿ��붨λ���ݵ�ip��ַһ��
                n(i,1)=TestOrder(j);
                flag=1;
            end
        end
        
        if(flag==0)
            n(i,1)=0;
        elseif(flag==1)
            flag=0;
        end
        
    end
    
   
end
