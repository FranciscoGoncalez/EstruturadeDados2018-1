object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'PILHA'
  ClientHeight = 142
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 174
    Top = 112
    Width = 35
    Height = 13
    Caption = 'Valor :.'
  end
  object Panel1: TPanel
    Left = 32
    Top = 32
    Width = 400
    Height = 65
    BevelOuter = bvSpace
    BorderStyle = bsSingle
    TabOrder = 0
  end
  object Button1: TButton
    Left = 32
    Top = 105
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 350
    Top = 103
    Width = 75
    Height = 25
    Caption = 'Retirar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object EdtValor: TEdit
    Left = 215
    Top = 108
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
