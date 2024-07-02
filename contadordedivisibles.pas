Program Divisibles;
Var
  n1, n2 : Integer;
  divisor : Integer;
  contador : Integer;
Begin
  Writeln('Ingrese el numero deseado');
  Readln(n1);
  Writeln('Ingrese el numero deseado');
  Readln(n2);
  divisor := n2;
  contador := 0;
  While n1 Mod divisor = 0 Do
    Begin
      Writeln('El numero es divisible ', contador,'veces');
      contador := contador + 1;
    End
End.
