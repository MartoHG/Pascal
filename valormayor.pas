Program ValorMayor;
Var
  n1, n2, n3 : Integer;
Begin
  Writeln('Ingrese el numero deseado');
  Readln(n1);
  Writeln('Ingrese el numero deseado');
  Readln(n2);
  Writeln('Ingrese el numero deseado');
  Readln(n3);
  If n1 > n2 Then
    If n1 > n3 Then
      Begin
        Writeln('n1 es mayor');
      End
  Else
    If n2 > n1 Then
      If n2 > n3 Then
        Begin
          Writeln('n2 es mayor')
        End
  Else
    Begin
      Writeln('n3 es mayor');
    End;
End.
