function visual1(ecg);
figure(1)
for ini=0:5:20,
   t0=(ini*10):1/200:((ini*10)+10)-1/200;
   t1=((ini+1)*10):1/200:(((ini+1)*10)+10)-1/200;
   t2=((ini+2)*10):1/200:(((ini+2)*10)+10)-1/200;
   t3=((ini+3)*10):1/200:(((ini+3)*10)+10)-1/200;
   t4=((ini+4)*10):1/200:(((ini+4)*10)+10)-1/200;

   subplot(5,1,1)
   plot(t0,(ecg((ini*2000)+1:(ini*2000)+2000,1)))
   eval(['title(''ECG'  ''')']);
   xlabel('s')
   subplot(5,1,2)
   plot(t1,(ecg(((ini+1)*2000)+1:((ini+1)*2000)+2000,1)))
   eval(['title(''ECG'  ''')']);
   xlabel('s')
   subplot(5,1,2)
   plot(t2,(ecg(((ini+2)*2000)+1:((ini+2)*2000)+2000,1)))
   eval(['title(''ECG'  ''')']);
   xlabel('s')
   subplot(5,1,3)
   plot(t2,(ecg(((ini+3)*2000)+1:((ini+3)*2000)+2000,1)))
   eval(['title(''ECG'  ''')']);
   xlabel('s')
   subplot(5,1,4)
   plot(t3,(ecg(((ini+3)*2000)+1:((ini+3)*2000)+2000,1)))
   eval(['title(''ECG'  ''')']);
   xlabel('s')
   subplot(5,1,5)
   plot(t4,(ecg(((ini+4)*2000)+1:((ini+4)*2000)+2000,1)))
   eval(['title(''ECG'  ''')']);
   xlabel('s')
   
   pause;
end

clear all;