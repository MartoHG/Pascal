Program Contadores;
Var
  n1, cantidadpares, cantidadimpares, sumatotal, numeros : Integer;
  promedio : Real;
  contadornumeros : Integer;
  //Inicializacion de variables
Begin
  cantidadpares := 0;
  cantidadimpares := 0;
  sumatotal := 0;
  numeros := 0;
  contadornumeros := 0;
  //ciclo
  Begin
    Writeln('A continuacion ingresa 10 numeros');
    While contadornumeros <= 9 Do
      Begin
        Readln(numeros);
        contadornumeros := contadornumeros + 1;
        sumatotal := sumatotal + numeros;
        If numeros Mod 2 = 0 Then
          Begin
            cantidadpares := cantidadpares + 1;
          End
        Else
          If numeros Mod 2 <> 0 Then
            Begin
              cantidadimpares := cantidadimpares + 1;
            End;
      End;
  End;
  Begin
    Writeln('Ingresaste ', cantidadpares, ' numeros pares');
    Writeln('ingresaste ', cantidadimpares, ' numeros impares');
    Writeln('ingresaste ', contadornumeros, ' numeros en total');
    Writeln('la suma total es: ', sumatotal);
  End;
  Readln
End.
