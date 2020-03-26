function output = SigMult(f1, f2, a, phsh, Fs, n) 
 %% f (frequency), a(amplitude), phsh(phase shift), 
 %% Fs(sampling frequency), n(number of samples) 
 t = 0:(1/Fs):((n-1)/Fs); 
 data1 = a*sin(2*pi*f1*t - phsh); 
 
  t = 0:(1/Fs):((n-1)/Fs); 
 data2 = a*sin(2*pi*f2*t - phsh); 
 
 sigprod = data1 .* data2; 
 
 output = fft(sigprod); 
 freq = (0: (length(output) - 1)) * Fs / (length(output)); 

 plot(t, abs(sigprod)); % time multiplication 
 title('multiplication')
 plot(freq, abs(output)); % frequency multiplication
title('multiplication fft')
 
 %output2 = ifft(output); 
 %plot(t, abs(output2)); % frequency to time transformation
 %title('multiplication ifft')