%in the name of allah
%yasin porrashno
%symbol error rate probability in PAM modoulation

rng('default') % Set random number seed for repeatability
M1 = 2;
M2 = 4;
M3 = 8;
M4 = 16;

EbNo = 0:13;
[ber,ser1] = berawgn(EbNo,'pam',M1);
[ber,ser2] = berawgn(EbNo,'pam',M2);
[ber,ser3] = berawgn(EbNo,'pam',M3);
[ber,ser4] = berawgn(EbNo,'pam',M4);

semilogy(EbNo,ser1,'b', EbNo,ser2,'r',EbNo,ser3,'b',EbNo,ser4,'r');
legend('Theoretical SER');
title('Theoretical Error Rate');
xlabel('E_b/N_0 (dB)');
ylabel('Symbol Error Rate');
grid on;
