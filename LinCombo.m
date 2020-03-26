function output = LinCombo(f1, f2, a, phsh, Fs, n) 
 %% f (frequency), a(amplitude), phsh(phase shift), 
 %% Fs(sampling frequency), n(number of samples) 
 t = 0:(1/Fs):((n-1)/Fs); 
 data1 = a*sin(2*pi*f1*t - phsh); 
 
  t = 0:(1/Fs):((n-1)/Fs); 
 data2 = a*sin(2*pi*f2*t - phsh); 
 
 output  = data1 + data2; 
 plot(t, output); 
 title("combined 3200"); 