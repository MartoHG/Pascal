Program TpProcedimientos;
Uses Crt;
Type
  TSocio = Record
    ID: Integer;
    Nombre: String;
    Edad: Integer;
    Direccion: String;
    Eliminado: Boolean;
  End;
Type
  TSociosArray = Array[1..100] Of TSocio;
Var
  Socios: TSociosArray;
  CantidadSocios , i, cantidad : Integer;
  opcion : Integer;
Procedure MostrarMenu;
Begin
  Writeln('=== Club Atlético Así - Gestión de Socios ===');
  Writeln('1. Alta de Socios');
  Writeln('2. Baja de Socios');
  Writeln('3. Modificación de Socios');
  Writeln('4. Consulta de un Socio');
  Writeln('5. Consulta Total de Socios');
  Writeln('0. Salir');
  Writeln('Seleccione una opción: ');
End;

Procedure CargarDatos(Var socio: TSocio);
Begin
  Writeln('Ingrese el ID:');
  Readln(socio.ID);
  Writeln('Ingrese el Nombre:');
  Readln(socio.Nombre);
  Writeln('Ingrese la Edad:');
  Readln(socio.Edad);
  Writeln('Ingrese la Dirección:');
  Readln(socio.Direccion);
End;
Procedure CargarTodosLosSocios(Var socios: TSociosArray; cantidad: Integer);
Var
  i: Integer;
Begin
  For i := 1 To cantidad Do
    Begin
      Writeln('Cargando datos del socio ', i);
      CargarDatos(socios[i]);
    End;
End;

Procedure EliminarSocio(Var socios: TSociosArray; Var cantidadSocios: Integer);
Var
  idAEliminar, i: Integer;
  encontrado: Boolean;
  SiONo: Char;
Begin
  Writeln('Ingrese el ID del socio a eliminar:');
  Readln(idAEliminar);
  encontrado := False;
  For i := 1 To cantidadSocios Do
    Begin
      If socios[i].ID = idAEliminar Then
        Begin
          Writeln('¿Está seguro de eliminar a ', socios[i].Nombre, '? (S/N)');
          Repeat
            Readln(SiONo);
          Until (SiONo = 'S') Or (SiONo = 'N');
          If SiONo = 'S' Then
            Begin
              socios[i].eliminado := True;
              // Marcamos al socio como eliminado
              Writeln('Socio eliminado.');
              encontrado := True;
            End;
        End;
    End;
  If Not encontrado Then
    Writeln('No se encontró un socio con ese ID.');
End;
Procedure ModificarSocio(Var socios: TSociosArray; Var cantidadSocios: Integer);
Var
  idAModificar, i: Integer;
  encontrado: Boolean;
Begin
  Writeln('Ingrese el ID del socio a modificar:');
  Readln(idAModificar);
  encontrado := False;
  For i := 1 To cantidadSocios Do
    Begin
      If socios[i].ID = idAModificar Then
        Begin
          Writeln('Datos actuales del socio:');
          Writeln('ID: ', socios[i].ID);
          Writeln('Nombre: ', socios[i].Nombre);
          Writeln('Edad: ', socios[i].Edad);
          Writeln('Dirección: ', socios[i].Direccion);
          // Pedir los nuevos datos
          Writeln('Ingrese el nuevo nombre:');
          Readln(socios[i].Nombre);
          Writeln('Ingrese la nueva edad:');
          Readln(socios[i].Edad);
          Writeln('Ingrese la nueva dirección:');
          Readln(socios[i].Direccion);
          Writeln('Datos del socio modificados.');
          encontrado := True;
        End;
    End;
  If Not encontrado Then
    Writeln('No se encontró un socio con ese ID.');
End;

Procedure ConsultaDeSocio(Var socios: TSociosArray; cantidadsocios : Integer);
Var
  idAconsultar, i: Integer;
  encontrado: Boolean;
Begin
  Writeln('Ingrese el ID del socio a consultar:');
  Readln(idAconsultar);
  encontrado := False;
  For i := 1 To cantidadsocios Do
    Begin
      If socios[i].ID = idAconsultar Then
        Begin
          Writeln('Datos actuales del socio:');
          Writeln('ID: ', socios[i].ID);
          Writeln('Nombre: ', socios[i].Nombre);
          Writeln('Edad: ', socios[i].Edad);
          Writeln('Dirección: ', socios[i].Direccion);
          encontrado := True
        End;
      If Not encontrado Then
        Writeln('No se encontró un socio con ese ID.');
    End;
End;
//CODIGO PRINCIPAL
Begin
  Writeln('Bienvenido al sistema se socios del club');
  Writeln('Ingrese cualquier tecla para continuar');
  Readln;
  CantidadSocios := 0;
  opcion := 0;
  Repeat
    MostrarMenu;
    Readln(opcion);
    Case opcion Of
      1:
         Begin
           Writeln('Ingrese la cantidad de socios a cargar:');
           Readln(cantidad);
           CargarTodosLosSocios(socios, cantidad);
           CantidadSocios := CantidadSocios + cantidad;
         End;
      2:
         Begin
           EliminarSocio(socios, CantidadSocios);
         End;
      3:
         Begin
           ModificarSocio(socios, CantidadSocios);
         End;
      4:
         Begin
           ConsultaDeSocio(socios, CantidadSocios);
         End;
      5:
         Begin
           Writeln('Hay un total de ', CantidadSocios,' socios')
         End;
    End;
  Until opcion = 0;
End.
