Program promedioventas;
Var
  n1, n2, n3 : Integer;
  promedio : Real;
  ventas : Real;
Begin
  Begin
    Writeln('Ingrese el numero deseado');
    Readln(n1);
    Writeln('Ingrese el numero deseado');
    Readln(n2);
    Writeln('Ingrese el numero deseado');
    Readln(n3);
  End;
  Begin
    promedio := n1 + n2 + n3;
    Ventas := promedio / 3;
    Writeln(' El promedio de ventas es', Ventas:2:0);
  End;
  Begin
    If n1 >= 10000 Then
      Writeln('hay una venta es mayor a 10000')
    Else
      If n2 >= 10000 Then
        Writeln('hay una venta es mayor a 10000')
    Else
      If n3 >= 10000 Then
        Writeln('hay una venta es mayor a 10000');
  End;
	Readln
End.
