Program TPvectores;
Var
  v1: Array[1..10] Of Integer;
  v2: Array[1..10] Of Integer;
  I : Integer;
	J : Integer;
  suma : Integer;
  Mayor : Integer;
  Poss : Integer;
	ContadorPar : real;
	ContadorImPar : real;
	SumaImPar : real;
	SumaPar : Real;
	PromedioPar : Real;
	PromedioImpar : real;
	Encontrado : Boolean; 
Begin
  //Inicializacion de arrays y variables
  Begin
    For I:= 1 To 10 Do
      Begin
        v1[I] := 0
      End;
    For I:= 1 To 10 Do
      Begin
        v2[I] := 0
      End;
  End;



	
  //1.Se le pide 10 numeros al usuario
  Begin
    For i := 1 To 10 Do
      Begin
        Writeln('Dime el dato', i ,' del primer conjunto');
        Readln(v1[I]);
      End;
  End;



	
  //2.Copiar los datos de v1 a v2
  For I := 1 To 10 Do
    Begin
      v2[i] := v1[i]
    End;
  For i := 1 To 10 Do
    Begin
      Writeln('dato de array Numero ',I, ' ', v1[i]);
    End;
  Writeln;



	
  //3.sumar todos los elementos, que sean múltiplo del primer elemento de V.
  Begin
    For I:= 10 Downto 1 Do
      Begin
        If v1[I] Mod v1[1] = 0 Then
          suma := suma + v1[i];
      End;
    suma := suma - v1[1];
    Writeln('La suma de los multiplos del primer dato es: ',suma);
    Readln;
  End;




  // 4 y 5. Mostrar el maximo y decir posicion
  Mayor := v1[1];
  Poss := 1;
  Begin
    For i := 1 To 10 Do
      Begin
        If v1[i] > Mayor Then
				Begin
          Mayor := v1[i];
        	Poss := I
				End;
      End;
    Writeln('El numero mayor es ', Mayor, ' y se encuentra en la posicion ', poss);
    Readln;
  End;




	//6 y 7 sumar impares y mostrar promedio
	ContadorPar := 0;
	ContadorImPar := 0;
	SumaImpar := 0;
	SumaPar := 0;
	Begin
		For i := 1 to 10 Do
			If v1[i] mod 2 = 0 Then
				Begin 
				 	SumaPar := SumaPar + v1[i];
		 		 	ContadorPar := ContadorPar + 1;
				End
			Else
				Begin
					Sumaimpar := SumaImpar + v1[i];
					ContadorImPar := ContadorImpar +1;
				End;
		PromedioPar := SumaPar / ContadorPar;
		PromedioImpar := SumaImpar / ContadorImpar;
	 WriteLn('La suma de pares es: ', sumapar:0:0 , ' y su promedio es: ', promedioPar:0:2);
	 WriteLn('La suma de impares es: ', sumaimpar:0:0 , ' y su promedio es: ', promedioimPar:0:2);
	end;




	//8. verificar si hay algun numero del vector 1 repetido en el vector 2
	encontrado := False;
	Begin
  for i := 1 to 10 do
  begin
    for j := 1 to 10 do
    begin
      if V1[i] = V2[j] then
      begin
        encontrado := True;
        writeln('El número ', V1[i], ' de V se encuentra en V2 en la posición ', j);
      end;
    end;
  end;

  if not encontrado then
    writeln('No se encontró ningún número de V en V2.');
	End;
Readln 
End.
