function [marques]=detecrwave(pres);

[tamanyfp,tamanyc]=size(pres);
dpres=diff(pres);
limitmax=.5*max(dpres(1:2000));

offset=50;
tope=0;
punter=1;
var=1;
passa=1;
j=200;
while var==1,
   if (dpres(j) > limitmax),
      vara=1;
      while vara==1,
         if dpres(j)<0,
            marques(1,punter)=j;
            vara=0;
            punter=punter+1;	
            limitmax=mean([limitmax .7*max(dpres(j+450:min([j+(2000) length(dpres)]),1))]);
            j=j+offset;
            if j>=length(dpres),
            %if j>=1000,
               var=0;
            end
         else
            j=j+1;
            if j>=length(dpres),
               var=0;
            end
         end
      end
   else
      j=j+1;
      if j>=length(dpres),
            var=0;
      end
   end
end

t=1/200:1/200:(100*200)/200;
figure       
plot(t,pres(1:20000))
hold on
plot(t,dpres(1:20000),'r:')
qe=axis;
yye=[qe(3).*ones(1,133);qe(4).*ones(1,133)];
xxe=[marques(1,1:133)./200;marques(1,1:133)./200];
plot(xxe,yye,'m--');
title('ECG signal')
xlabel('s')
hold off