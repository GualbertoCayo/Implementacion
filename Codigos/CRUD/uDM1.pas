unit uDM1;

interface

uses
  SysUtils, Classes,  KDaoDataBase, KDaoTable, DB;

type
  TDM1 = class(TDataModule)
    conexion: TKADaoDatabase;
    Ventas: TKADaoTable;
    dVentas: TDataSource;
    Ventasid_venta: TAutoIncField;
    Ventasid_cliente: TIntegerField;
    Ventasid_usuario: TIntegerField;
    Ventasfecha: TDateTimeField;
    VentasNIT: TStringField;
    VentasNombre: TStringField;
    VentasPrecioTotal: TCurrencyField;
    VentasDestino_de_venta: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{$R *.dfm}

end.
