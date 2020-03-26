function output = LinCombofft(f1, f2, a, phsh, Fs, n) 
 %% f (frequency), a(amplitude), phsh(phase shift), 
 %% Fs(sampling frequency), n(number of samples) 
 t = 0:(1/Fs):((n-1)/Fs); 
 data1 = a*sin(2*pi*f1*t - phsh); 
 
  t = 0:(1/Fs):((n-1)/Fs); 
 data2 = a*sin(2*pi*f2*t - phsh); 
 
 sigsum  = data1 + data2; 
 
 output = fft(sigsum); 
 freq = (0: (length(output) - 1)) * Fs / (length(output)); 
 
 plot(freq, abs(output)); 
 title('FFT of combined at 3200Hz'); 