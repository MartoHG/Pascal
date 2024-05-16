Program calculadora;
Var
  num1, num2, suma, resta, multiplicacion, division: Real;
  operacion: String;
Begin
  //solicitar al usuario dos numeros//
  Writeln ('Defina el primer numero para operar');
  Readln(num1);                                                                                                                                        
  //solicitar al usuario dos numeros//
  Writeln ('Defina el segundo numero para operar');
  Readln(num2);
  //solicitar al usuario la operación//
  Writeln ('Defina la operacion que desea realizar');
  Readln(operacion);
  If operacion='suma' Then
    Begin
      suma := num1 + num2;
      Writeln ('el resultado de la suma es:', suma:2:0);
    End
  Else
    If operacion= 'resta' Then
      Begin
        resta := num1 - num2;
        Writeln ('el resultado de la resta es:', resta:2:0);
      End
  Else
    If operacion= 'multiplicacion' Then
      Begin
        multiplicacion := num1 * num2;
        Writeln ('el resultado de la multiplicacion es:', multiplicacion:2:0);
      End
  Else
    If operacion= 'division' Then
      Begin
        division := num1 / num2;
        Writeln ('el resultado de la division es:', division:2:0);
      End
  Else
    Writeln ('Operacion invalida');
  Readln;
End.
