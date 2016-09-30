fid = fopen('BancadaX_29092016.txt', 'w');
fprintf(fid, 'NDet ValTermo Soma ValReal ErroCal ErroTeo \n');
n = input('Escolha n: ');
soma = 0;
for i=1:n
  termo = ((-1)^(i-1))*(1/i);
  soma = soma + termo;
  fprintf(fid, '%2i %+15.12f %+15.12f %+15.12f %+15.12f %+15.12f \n ', i, termo, soma, log(2), abs(soma-1), 1/(i+1));
 end