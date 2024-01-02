object Form1: TForm1
  Left = 192
  Top = 107
  Width = 702
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 64
    Width = 80
    Height = 13
    Caption = #1048#1084#1103' '#1074' '#1088#1077#1075#1080#1089#1090#1088#1077
  end
  object Edit1: TEdit
    Left = 0
    Top = 80
    Width = 673
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 536
    Top = 32
    Width = 145
    Height = 25
    Caption = #1055#1091#1090#1100' '#1082' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 0
    Top = 8
    Width = 681
    Height = 21
    TabOrder = 2
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 112
    Width = 681
    Height = 105
    Caption = #1051#1086#1082#1072#1094#1080#1103
    ItemIndex = 0
    Items.Strings = (
      '"SOFTWARE\ Microsoft\ Windows\ CurrentVersion\ Run", '
      '"SOFTWARE\ Microsoft\ Windows\ CurrentVersion\ RunOnce", '
      '"SOFTWARE\ Microsoft\ Windows\ CurrentVersion\ RunOnceEx", '
      '"SOFTWARE\ Microsoft\ Windows\ CurrentVersion\ RunOnce\ Setup", '
      '"SOFTWARE\ Microsoft\ Windows\ CurrentVersion\ RunServices", '
      '"SOFTWARE\ Microsoft\ Windows\ CurrentVersion\ RunServicesOnce"')
    TabOrder = 3
  end
  object Button2: TButton
    Left = 24
    Top = 264
    Width = 75
    Height = 25
    Caption = ' '
    TabOrder = 4
    OnClick = Button2Click
  end
  object RadioGroup2: TRadioGroup
    Left = 448
    Top = 272
    Width = 185
    Height = 49
    Caption = #1050#1086#1088#1077#1085#1100
    ItemIndex = 0
    Items.Strings = (
      'HKEY_LOCAL_MACHINE'
      'HKEY_USERS')
    TabOrder = 5
    Visible = False
  end
  object OpenDialog1: TOpenDialog
  end
end
