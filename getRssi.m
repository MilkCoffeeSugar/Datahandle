function [DataMap] = getRssi(DataName)
%*****************************************************
%��.txt�ļ�ת��Ϊ.mat�ļ�
%����Ϊ.txt�ļ������Ϊ.mat�ļ�
%���磺y=getRssi('dataRssi_at_1.txt');
%*****************************************************
    D = dir(DataName);
    length = D.bytes;
    DataMap=0;
    data_temp=0;
    m=['rb'];
    n=['ieee-be'];
    file_id  = fopen(DataName, 'rb', 'ieee-be');
    data_temp = fread(file_id, length/4, 'int32') ;
    fclose(file_id);
    for i=1:length/4/606
        for j=1:606
            DataMap(i,j)=data_temp((i-1)*606+j);
        end
    end
end
