Program numerosposteriores;
Var
  I, posteriores : Integer;
Begin
  Writeln('ingrese el numero');
  Readln(I);
  posteriores := I + 10;
  While I <= posteriores Do
    Begin
      Write(I, ' ');
      I := I + 1;
    End;
		Readln
End.
