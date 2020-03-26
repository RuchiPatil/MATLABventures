function output = dtmf(f1, f2, a, phsh, n) 
 %% f (frequency), a(amplitude), phsh(phase shift), 
 %% Fs(sampling frequency), n(number of samples) 
  
 if f1 >= f2 
     max = f1; 
 else
     max = f2; 
 end
 
 Fs = 4 * max; 
 
 t = 0:(1/Fs):((n-1)/Fs); 
 data1 = a*sin(2*pi*f1*t - phsh); 
 
  t = 0:(1/Fs):((n-1)/Fs); 
 data2 = a*sin(2*pi*f2*t - phsh); 
 
 sigsum  = data1 + data2; 
 plot(t, abs(sigsum)); %sum in time domain
 output = fft(sigsum); %fft
 freq = (0: (length(output) - 1)) * Fs / (length(output)); 
 
plot(freq, abs(output)); 
title('dtmf')