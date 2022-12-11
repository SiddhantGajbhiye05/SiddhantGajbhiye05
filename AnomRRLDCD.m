% MATLAB module for 3D gravity modelling of bouguer anomaly. 
clc; clear all;
xlength = input('Please enter the dimension of prism in x direction = ');
ylength = input('Please enter the dimension of prism in y direction = ');
z1 = input('Please enter the depth of top surface of prism = ');
ro = input('Please enter the density of rock = ');
[z2]=xlsread('Depth_Z2.xlsx');

[X, Y]=size(z2);
x=0:xlength:xlength*(X-1);
y=0:ylength:ylength*(Y-1);

Incx=xlength/2;
Incy=ylength/2;

G=6.6738;


for M=1:length(x)
    for N=1:length(y)
        sum=0;
        for i=1:length(x)
            for j=1:length(y)
                zz=z2(i,j);
                x1=(x(M)-(x(i)-Incx));
                x2=(x(M)-(x(i)+Incx));
                y1=(y(N)-(y(j)-Incy));
                y2=(y(N)-(y(j)+Incy));
                for k=1:2
                    if(k == 1)
                        z =  zz;
                    else
                        z =  z1;
                    end
                    
                    pp51 = RRPLDCD(x1,x2,y1,y2,z);
                    
                    if(k == 1)
                        pp51_old = pp51;
                    else
                        pp51_new = pp51;
                    end
                    
                end
                p51d= pp51_old-pp51_new;
                sum=sum+p51d;
            end
            
        end
        sum;
        D(M,N)=sum;
    end
    
end
D;
gz=G*ro*D;
contourf(gz);
colorbar


