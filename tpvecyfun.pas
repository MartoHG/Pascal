


Program TrabajoPracticoVYproc;
Var
  v1: Array[1..6] Of Integer;
	v2: Array[1..6] Of Integer;
  i : Integer;
	j : Integer;
  suma : Integer;
  contador : Integer;
  suma2 : Integer;
	contadorpares : Integer;
	contadorimpares : integer;
	minimo : Integer;
	mayor : Boolean;
	
Begin

	//iniciar variables
	mayor := True;
	minimo := v1[1];
	contadorpares := 0;
	contadorimpares := 0;
  suma2 := 0;
  suma := 0;
  contador := 0;
  For I := 1 To 6 Do
    Begin
      v1[i] := 0;
    End;
		
  //leer datos de usuario
  For i := 1 To 6 Do
    Begin
      Readln(v1[i]);
    End;
		
  //sumar y mostrar el total por pantalla
  For i := 1 To 6 Do
    Begin
      suma := suma + v1[i];
    End;
  Writeln('la suma de todos los valores es: ', suma);
  Readln;
	
  //contar cuantos son mayores a 10
  For i := 1 To 6 Do
    Begin
      If v1[i] >= 10 Then
        Begin
          contador := contador + 1;
        End;
    End;
  Writeln('hay ', contador,' valor/es mayores a 10´);
  Readln;
	
  //Sumar los valores comprendidos entre 10 y 20
  For i := 1 To 6 Do
  	Begin
 		 If v1[i] >= 10 Then
 		Begin
  		If v1[i] <= 20 Then
			suma2 := v1[i] + suma2;
		End;
		End;
	WriteLn('la suma de los valores comprendidos entre 10 y 20 es: ', suma2);
	readln;
	
	//contar pares e impares
	For i := 1 to 6 Do
		Begin
		If v1[i] Mod 2 = 0 Then
		contadorpares := contadorpares + 1
		Else
		contadorimpares := contadorimpares + 1;
		End;
	WriteLn('la cantidad de pares son: ',contadorpares, 'y la cantidad de impares es:', contadorimpares);
	Readln;

	//Mostrar el menor valor
	For i := 1 to 6 do
	Begin
	v1[i] := v2[i];
	End;

  for i := 2 to 6 do
  begin
    if v1[i] < minimo then
      minimo := v1[i];
  end;
  WriteLn('El menor valor del array es: ', minimo);

	For i := 2 to 6 Do
		 Begin
		 	If v1[1] < v1[i] Then
			Begin
			mayor := False;
			
			End;
			end;
			
	   End.
