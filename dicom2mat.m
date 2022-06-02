function dicom2mat

% This function opens each dicom file in the selected folder and saves it
% as a matlab matrix file.
% Alexander Wilson, PhD
% Stanford University, 2022

selpath = uigetdir
list=dir([selpath '/*.dcm']);
num=size(list,1);
cd(selpath);

for i=1:num
    if contains(list(i).name,'.dcm')
        x = dicomread(list(i).name);
        save([list(i).name(1:size(list(i).name,2)-3),'mat'],'x');
    end
end



