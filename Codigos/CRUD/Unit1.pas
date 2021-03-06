unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGrids, sComboBox, sCurrEdit, sCurrencyEdit,
  Mask, sMaskEdit, sCustomComboEdit, sToolEdit, sEdit, sSpinEdit, StdCtrls,
  ExtCtrls, DBCtrls, Grids;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    sSpinEdit1: TsSpinEdit;
    sSpinEdit2: TsSpinEdit;
    sDateEdit1: TsDateEdit;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sCurrencyEdit1: TsCurrencyEdit;
    sComboBox1: TsComboBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uDM1;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  dm1.Conexion.Connected:=True;

  if dm1.Conexion.Connected then
    begin
      ShowMessage('Base de datos conectada');
      DM1.Ventas.Open;
    end
  else
    begin
      ShowMessage('base de datos no se pudo conectar');
    end;


end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.Conexion.Connected:=False;
  Application.Terminate;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //CREAR (C)

  if not dm1.Conexion.Connected then
   begin //cuando no esta conectado
     ShowMessage('No esta conectado por favor conecte primero');
   end
  else
   begin //esta conectado
    if sSpinEdit1.Value<1 then
     begin
       ShowMessage('el id cliente no puede ser menor a 1');
       sSpinEdit1.SetFocus;
     end
    else
    if sSpinEdit2.Value<1 then
     begin
       ShowMessage('el id usuario no puede ser menor a 1');
       sSpinEdit2.SetFocus;
     end
    else
    if sDateEdit1.Text='' then
     begin
       ShowMessage('la fecha no puede estar en blanco');
       sDateEdit1.SetFocus;
     end
    else
    if sEdit1.Text='' then
     begin
       ShowMessage('el NIT no puede estar en blanco');
       sEdit1.SetFocus;
     end
    else
   if sEdit2.Text='' then
     begin
       ShowMessage('el Nombre no puede estar en blanco');
       sEdit2.SetFocus;
     end
    else
    if sCurrencyEdit1.Value<1 then
     begin
       ShowMessage('el monto no puede ser menor a 1');
       sCurrencyEdit1.SetFocus;
     end
    else
    if sComboBox1.Text='' then
     begin
       ShowMessage('Seleccione un destino, no puede estar en blanco');
       sComboBox1.SetFocus;
     end
    else
    begin

       dm1.Ventas.Insert;
       DM1.Ventasid_cliente.Value       :=sSpinEdit1.Value;
       DM1.Ventasid_usuario.Value       :=sSpinEdit2.Value;
       DM1.Ventasfecha.Value            :=sDateEdit1.Date;
       DM1.VentasNIT.Value              :=sEdit1.Text;
       DM1.VentasNombre.Value           :=sEdit2.Text;
       DM1.VentasPrecioTotal.Value      :=sCurrencyEdit1.Value;
       dm1.VentasDestino_de_venta.Value :=sComboBox1.Text;
       dm1.Ventas.Post;

       ShowMessage('Creaci?n de Registro realizada con ?xito');
    end;
   end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  //(R) LEER

   sSpinEdit1.Value:=dm1.Ventasid_cliente.Value;
   sSpinEdit2.Value:=DM1.Ventasid_usuario.Value;
   sDateEdit1.Date:=dm1.Ventasfecha.Value;
   sEdit1.Text:=dm1.VentasNIT.Value;
   sEdit2.Text:=dm1.VentasNombre.Value;
   sCurrencyEdit1.Value:=dm1.VentasPrecioTotal.Value;
   sComboBox1.Text:=dm1.VentasDestino_de_venta.Value;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 //EDITAR ACTUALIZAR (U)

  if not dm1.Conexion.Connected then
   begin //cuando no esta conectado
     ShowMessage('No esta conectado por favor conecte primero');
   end
  else
   begin //esta conectado
    if sSpinEdit1.Value<1 then
     begin
       ShowMessage('el id cliente no puede ser menor a 1');
       sSpinEdit1.SetFocus;
     end
    else
    if sSpinEdit2.Value<1 then
     begin
       ShowMessage('el id usuario no puede ser menor a 1');
       sSpinEdit2.SetFocus;
     end
    else
    if sDateEdit1.Text='' then
     begin
       ShowMessage('la fecha no puede estar en blanco');
       sDateEdit1.SetFocus;
     end
    else
    if sEdit1.Text='' then
     begin
       ShowMessage('el NIT no puede estar en blanco');
       sEdit1.SetFocus;
     end
    else
   if sEdit2.Text='' then
     begin
       ShowMessage('el Nombre no puede estar en blanco');
       sEdit2.SetFocus;
     end
    else
    if sCurrencyEdit1.Value<1 then
     begin
       ShowMessage('el monto no puede ser menor a 1');
       sCurrencyEdit1.SetFocus;
     end
    else
    if sComboBox1.Text='' then
     begin
       ShowMessage('Seleccione un destino, no puede estar en blanco');
       sComboBox1.SetFocus;
     end
    else
    begin

       dm1.Ventas.Edit;
       DM1.Ventasid_cliente.Value       :=sSpinEdit1.Value;
       DM1.Ventasid_usuario.Value       :=sSpinEdit2.Value;
       DM1.Ventasfecha.Value            :=sDateEdit1.Date;
       DM1.VentasNIT.Value              :=sEdit1.Text;
       DM1.VentasNombre.Value           :=sEdit2.Text;
       DM1.VentasPrecioTotal.Value      :=sCurrencyEdit1.Value;
       dm1.VentasDestino_de_venta.Value :=sComboBox1.Text;
       dm1.Ventas.Post;

       ShowMessage('Actualizaci?n realizada con ?xito');

    end;
   end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
 Button3.Click;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 // (D) ELIMINAR
 if dm1.Ventas.IsEmpty then
  begin
    ShowMessage('La tabla esta vacia');
  end
 else
  begin
    DM1.Ventas.Delete;
  end;


end;

end.
