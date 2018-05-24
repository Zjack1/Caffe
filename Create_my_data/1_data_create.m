clc;  
clear;  
  
maindir='E:\桌面\re\re\train\';  
name_long=5; %图片名字的长度，如000123.jpg为6,最多9位,可修改  
num_begin=1; %图像命名开始的数字如000123.jpg开始的话就是123  
  
subdir = dir(maindir);  
n=1;  
  
for i = 1:length(subdir)  
  if ~strcmp(subdir(i).name ,'.') && ~strcmp(subdir(i).name,'..')  
     subsubdir = dir(strcat(maindir,subdir(i).name));  
%     for j=1:length(subsubdir)  
%          if ~strcmp(subsubdir(j).name ,'.') && ~strcmp(subsubdir(j).name,'..')  
            img=imread([maindir,subdir(i).name]);  
            imshow(img);  
            str=num2str(num_begin,'%09d');  
            newname=strcat(str,'.jpg');  
            newname=newname(end-(name_long+3):end);  
            system(['rename ' [maindir,subdir(i).name] ' ' newname]);  
            num_begin=num_begin+1;  
            fprintf('当前处理文件夹%s',subdir(i).name);  
            fprintf('已经处理%d张图片\n',n);  
            n=n+1;  
            pause(0.1);%可以将暂停去掉  
%          end  
%     end  
  end  
end