object FormGyverMatrixCalculator: TFormGyverMatrixCalculator
  Left = 201
  Top = 130
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'GyverMatrix Calculator'
  ClientHeight = 529
  ClientWidth = 304
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 16
    Top = 384
    Width = 101
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1076#1080#1086#1076#1086#1074':'
  end
  object Label5: TLabel
    Left = 16
    Top = 408
    Width = 181
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1075#1080#1088#1083#1103#1085#1076' ('#1087#1086' 50 '#1076#1080#1086#1076#1086#1074'):'
  end
  object Label6: TLabel
    Left = 16
    Top = 456
    Width = 203
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1072#1088' '#1088#1072#1079#1098#1077#1084#1086#1074' ('#1084#1072#1084#1072'/'#1087#1072#1087#1072'):'
  end
  object Label7: TLabel
    Left = 16
    Top = 480
    Width = 121
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1086#1074#1086#1076#1072', '#1084':'
  end
  object Label8: TLabel
    Left = 16
    Top = 8
    Width = 274
    Height = 39
    Caption = 
      #1056#1072#1089#1095#1077#1090' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1086#1074' '#1076#1083#1103' '#1089#1073#1086#1088#1082#1080' '#1084#1072#1090#1088#1080#1094#1099' '#1080#1079' '#1072#1076#1088#1077#1089#1085#1099#1093' '#1089#1074#1077 +
      #1090#1086#1076#1080#1086#1076#1086#1074' WS2812B '#1087#1086' '#1079#1072#1076#1072#1085#1085#1099#1084' '#1088#1072#1079#1084#1077#1088#1072#1084'. '#1056#1072#1089#1095#1077#1090' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1089#1103' '#1087#1086' '#1089#1093 +
      #1077#1084#1077' "'#1079#1080#1075#1079#1072#1075'".'
    WordWrap = True
  end
  object LabelDiode: TLabel
    Left = 264
    Top = 384
    Width = 3
    Height = 13
  end
  object LabelThread: TLabel
    Left = 264
    Top = 408
    Width = 3
    Height = 13
  end
  object LabelPlug: TLabel
    Left = 264
    Top = 456
    Width = 3
    Height = 13
  end
  object LabelWire: TLabel
    Left = 264
    Top = 480
    Width = 3
    Height = 13
  end
  object Label9: TLabel
    Left = 16
    Top = 504
    Width = 230
    Height = 13
    Caption = #1055#1086#1090#1088#1077#1073#1083#1103#1077#1084#1099#1081' '#1090#1086#1082' ('#1073#1077#1083#1099#1081', '#1103#1088#1082#1086#1089#1090#1100' 100%), '#1040':'
  end
  object LabelPower: TLabel
    Left = 264
    Top = 504
    Width = 3
    Height = 13
  end
  object Label11: TLabel
    Left = 16
    Top = 432
    Width = 88
    Height = 13
    Caption = #1048#1079#1083#1080#1096#1077#1082' '#1076#1080#1086#1076#1086#1074':'
  end
  object LabelRemainder: TLabel
    Left = 264
    Top = 432
    Width = 3
    Height = 13
  end
  object Button1: TButton
    Left = 16
    Top = 352
    Width = 75
    Height = 25
    Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 112
    Width = 273
    Height = 129
    Caption = #1056#1072#1089#1089#1090#1086#1103#1085#1080#1077' '#1084#1077#1078#1076#1091' '#1094#1077#1085#1090#1088#1072#1084#1080' '#1076#1080#1086#1076#1086#1074
    TabOrder = 1
    object Label14: TLabel
      Left = 8
      Top = 16
      Width = 48
      Height = 13
      Caption = #1043#1080#1088#1083#1103#1085#1076#1072
    end
    object Label15: TLabel
      Left = 8
      Top = 56
      Width = 31
      Height = 13
      Caption = #1051#1077#1085#1090#1072
    end
    object RadioButton10cm: TRadioButton
      Left = 8
      Top = 32
      Width = 57
      Height = 17
      Caption = '10 '#1089#1084
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton10cmClick
    end
    object RadioButton30lm: TRadioButton
      Left = 8
      Top = 72
      Width = 113
      Height = 17
      Caption = '30 leds/m (3.34 '#1089#1084')'
      TabOrder = 1
      OnClick = RadioButton30lmClick
    end
    object RadioButton74lm: TRadioButton
      Left = 8
      Top = 88
      Width = 113
      Height = 17
      Caption = '74 leds/m (1.35 '#1089#1084')'
      TabOrder = 2
      OnClick = RadioButton74lmClick
    end
    object RadioButton100lm: TRadioButton
      Left = 8
      Top = 104
      Width = 113
      Height = 17
      Caption = '100 leds/m (1 '#1089#1084')'
      TabOrder = 3
      OnClick = RadioButton100lmClick
    end
    object RadioButton96lm: TRadioButton
      Left = 144
      Top = 88
      Width = 113
      Height = 17
      Caption = '96 leds/m (1.04 '#1089#1084')'
      TabOrder = 4
      OnClick = RadioButton96lmClick
    end
    object RadioButton60lm: TRadioButton
      Left = 144
      Top = 72
      Width = 113
      Height = 17
      Caption = '60 leds/m (1.67 '#1089#1084')'
      TabOrder = 5
      OnClick = RadioButton60lmClick
    end
    object RadioButton12cm: TRadioButton
      Left = 144
      Top = 32
      Width = 57
      Height = 17
      Caption = '12 '#1089#1084
      TabOrder = 6
      OnClick = RadioButton12cmClick
    end
    object RadioButton144lm: TRadioButton
      Left = 144
      Top = 104
      Width = 121
      Height = 17
      Caption = '144 leds/m (0.69 '#1089#1084')'
      TabOrder = 7
      OnClick = RadioButton144lmClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 256
    Width = 273
    Height = 81
    Caption = #1056#1072#1079#1084#1077#1088#1099' '#1084#1072#1090#1088#1080#1094#1099
    TabOrder = 2
    object Label1: TLabel
      Left = 80
      Top = 36
      Width = 38
      Height = 13
      Caption = #1042#1099#1089#1086#1090#1072
    end
    object Label2: TLabel
      Left = 8
      Top = 36
      Width = 39
      Height = 13
      Caption = #1064#1080#1088#1080#1085#1072
    end
    object Label3: TLabel
      Left = 64
      Top = 52
      Width = 5
      Height = 13
      Caption = 'x'
    end
    object Label10: TLabel
      Left = 144
      Top = 36
      Width = 39
      Height = 13
      Caption = #1064#1080#1088#1080#1085#1072
    end
    object Label12: TLabel
      Left = 200
      Top = 52
      Width = 5
      Height = 13
      Caption = 'x'
    end
    object Label13: TLabel
      Left = 216
      Top = 36
      Width = 38
      Height = 13
      Caption = #1042#1099#1089#1086#1090#1072
    end
    object RadioButtonM: TRadioButton
      Left = 8
      Top = 16
      Width = 81
      Height = 17
      Caption = #1042' '#1084#1086#1076#1091#1083#1103#1093
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButtonMClick
    end
    object RadioButtonCm: TRadioButton
      Left = 144
      Top = 16
      Width = 113
      Height = 17
      Caption = #1042' '#1089#1072#1085#1090#1080#1084#1077#1090#1088#1072#1093
      TabOrder = 1
      OnClick = RadioButtonCmClick
    end
    object Edit1: TEdit
      Left = 8
      Top = 52
      Width = 49
      Height = 21
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 80
      Top = 52
      Width = 49
      Height = 21
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 144
      Top = 52
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 216
      Top = 52
      Width = 49
      Height = 21
      Enabled = False
      TabOrder = 5
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 56
    Width = 273
    Height = 41
    Caption = #1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1083#1077#1085#1090
    TabOrder = 3
    object RadioButtonHorisontal: TRadioButton
      Left = 144
      Top = 16
      Width = 113
      Height = 17
      Caption = #1055#1086' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1080
      TabOrder = 0
    end
    object RadioButtonVertical: TRadioButton
      Left = 8
      Top = 16
      Width = 113
      Height = 17
      Caption = #1055#1086' '#1074#1077#1088#1090#1080#1082#1072#1083#1080
      Checked = True
      TabOrder = 1
      TabStop = True
    end
  end
  object XPManifest1: TXPManifest
    Left = 96
    Top = 352
  end
end
