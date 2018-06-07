print ("draw loss script!!!!!!!!!!")
# -*- coding:utf-8 -*-
import numpy as np
import matplotlib.pyplot as plt
import re
path="E:/zhoujun/caffe-master/examples/zhoujun/re/re/log/test_log.txt"
file=open(path,'r')
line=file.readlines()
x=[]
y=[]
z=[]
for i in range(2,len(line),2):
    #print (line[i].strip('\n').split(',')[0])
    a=line[i].strip('\n').split(',')[0]
    x.append(float(a.strip()))
    b=line[i].strip('\n').split(',')[3]
    y.append(float(b.strip()))
    c=line[i].strip('\n').split(',')[4]
    z.append(float(c.strip()))
#print (x)
#x=range(0,1001,10)
#print (list(x))
#y=range(0,101)
plt.plot(x,z)
plt.plot(x,y,"b--",label="$cos(x^2)$")
plt.show()
'''x=np.linspace(0,10,1000)
y=np.sin(x)
z=np.cos(x**2)
plt.figure(figsize=(8,4))

plt.plot(x,y)
#plt.plot(x,z,"b--",label="$cos(x^2)$")

plt.xlabel("Time(s)")
plt.ylabel("Volt")
plt.title("PyPlot First Example")

plt.ylim(-1.2,1.2)
plt.legend()

plt.show()'''
