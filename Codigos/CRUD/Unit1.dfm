object Form1: TForm1
  Left = 259
  Top = 92
  Width = 859
  Height = 614
  Caption = 'CRUD'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 16
    Top = 16
    Width = 201
    Height = 25
    Caption = 'Conectar Base de DAtos'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 56
    Width = 201
    Height = 25
    Caption = '(C) Crear registro Venta'
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 233
    Width = 843
    Height = 318
    Align = alBottom
    DataSource = DM1.dVentas
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_venta'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_cliente'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_usuario'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha'
        Title.Caption = 'Fecha Venta'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIT'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Title.Caption = 'Nombre/RazonSocial'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PrecioTotal'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Destino_de_venta'
        Width = 100
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 551
    Width = 843
    Height = 25
    DataSource = DM1.dVentas
    Align = alBottom
    TabOrder = 3
  end
  object sSpinEdit1: TsSpinEdit
    Left = 312
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '100'
    BoundLabel.Active = True
    BoundLabel.Caption = 'Id_Cliente'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    Increment = 1
    Value = 100
  end
  object sSpinEdit2: TsSpinEdit
    Left = 312
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '100'
    BoundLabel.Active = True
    BoundLabel.Caption = 'Id_Usuario'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    Increment = 1
    Value = 100
  end
  object sDateEdit1: TsDateEdit
    Left = 312
    Top = 72
    Width = 121
    Height = 21
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    TabOrder = 6
    BoundLabel.Active = True
    BoundLabel.Caption = 'Fecha Venta'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    DefaultToday = True
  end
  object sEdit1: TsEdit
    Left = 312
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 7
    BoundLabel.Active = True
    BoundLabel.Caption = 'NIT/CI'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
  end
  object sEdit2: TsEdit
    Left = 312
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 8
    BoundLabel.Active = True
    BoundLabel.Caption = 'Nombre / RZ'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
  end
  object sCurrencyEdit1: TsCurrencyEdit
    Left = 312
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 9
    BoundLabel.Active = True
    BoundLabel.Caption = 'PrecioTotal'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
  end
  object sComboBox1: TsComboBox
    Left = 312
    Top = 168
    Width = 121
    Height = 21
    BoundLabel.Active = True
    BoundLabel.Caption = 'Destino Venta'
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    ItemHeight = 13
    ItemIndex = -1
    TabOrder = 10
    Text = 'Medicinal'
    Items.Strings = (
      'Medicinal'
      'Industrial')
  end
  object Button3: TButton
    Left = 16
    Top = 96
    Width = 201
    Height = 25
    Caption = '(R) Lectura de Registro de Venta'
    TabOrder = 11
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 16
    Top = 134
    Width = 201
    Height = 25
    Caption = '(U) Edici'#243'n de Registro'
    TabOrder = 12
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 16
    Top = 168
    Width = 201
    Height = 25
    Caption = '(D) Eliminar Registro'
    TabOrder = 13
    OnClick = Button5Click
  end
end
