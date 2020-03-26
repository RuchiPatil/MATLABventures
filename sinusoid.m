
 function data = sinusoid(f, a, phsh, Fs, n) 
 %% f (frequency), a(amplitude), phsh(phase shift), 
 %% Fs(sampling frequency), n(number of samples) 
 t = 0:(1/Fs):((n-1)/Fs); 
 data = a*sin(2*pi*f*t - phsh); 
 %plot(t, data); 
 %title('s640'); 
 
 
  freq = (0: (length(data) - 1)) * Fs / (length(data)); 
  blahfft = fft(data); 
 plot(freq, abs(blahfft))
 title(['s', num2str(f)]); 