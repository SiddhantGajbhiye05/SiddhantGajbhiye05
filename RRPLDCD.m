%-------------------------------------------------------------%
   % RRPLDCD.m file contain the analytical expression for  %
   % right rectangular parallelepiped model               %
%-------------------------------------------------------------% 

function[res] = RRPLDCD(x1,x2,y1,y2,z)


gz1 = x2*log(y2+sqrt(x2^2+y2^2+z^2))+y2*log(x2+sqrt(x2^2+y2^2+z^2))...
      -z*atan(x2*y2/(z*sqrt(x2^2+y2^2+z^2)));
gz2 = x2*log(y1+sqrt(x2^2+y1^2+z^2))+y1*log(x2+sqrt(x2^2+y1^2+z^2))...
      -z*atan(x2*y1/(z*sqrt(x2^2+y1^2+z^2)));
gz3 = x1*log(y2+sqrt(x1^2+y2^2+z^2))+y2*log(x1+sqrt(x1^2+y2^2+z^2))...
      -z*atan(x1*y2/(z*sqrt(x1^2+y2^2+z^2)));
gz4 = x1*log(y1+sqrt(x1^2+y1^2+z^2))+y1*log(x1+sqrt(x1^2+y1^2+z^2))...
      -z*atan(x1*y1/(z*sqrt(x1^2+y1^2+z^2)));
res = -(gz1-gz2-gz3+gz4);

end