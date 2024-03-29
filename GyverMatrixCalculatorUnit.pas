unit GyverMatrixCalculatorUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, Math;

type
  TFormGyverMatrixCalculator = class(TForm)
    Button1: TButton;
    XPManifest1: TXPManifest;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    RadioButtonM: TRadioButton;
    RadioButtonCm: TRadioButton;
    RadioButton10cm: TRadioButton;
    RadioButton30lm: TRadioButton;
    RadioButton74lm: TRadioButton;
    RadioButton96lm: TRadioButton;
    RadioButton60lm: TRadioButton;
    RadioButton12cm: TRadioButton;
    RadioButton100lm: TRadioButton;
    RadioButton144lm: TRadioButton;
    RadioButton10cm100: TRadioButton;
    RadioButtonVertical: TRadioButton;
    RadioButtonHorisontal: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    LabelPlug: TLabel;
    LabelWire: TLabel;
    LabelDiode: TLabel;
    LabelPower: TLabel;
    LabelThread: TLabel;
    LabelPowerReal: TLabel;
    LabelRemainder: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure RadioButton10cmClick(Sender: TObject);
    procedure RadioButton12cmClick(Sender: TObject);
    procedure RadioButton30lmClick(Sender: TObject);
    procedure RadioButton60lmClick(Sender: TObject);
    procedure RadioButton74lmClick(Sender: TObject);
    procedure RadioButton96lmClick(Sender: TObject);
    procedure RadioButton100lmClick(Sender: TObject);
    procedure RadioButtonMClick(Sender: TObject);
    procedure RadioButtonCmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioButton144lmClick(Sender: TObject);
    procedure RadioButton10cm100Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGyverMatrixCalculator: TFormGyverMatrixCalculator;
  threadtype, matrixsize : integer;

implementation

{$R *.dfm}

procedure TFormGyverMatrixCalculator.FormShow(Sender: TObject);
begin
     threadtype := 1;
     matrixsize := 1;
     RadioButton10cm.Checked := true;
     RadioButtonM.Checked := true;
     Edit3.Enabled := false;
     Edit4.Enabled := false;
end;

procedure TFormGyverMatrixCalculator.RadioButton10cmClick(Sender: TObject);
begin
     threadtype := 1;
end;

procedure TFormGyverMatrixCalculator.RadioButton12cmClick(Sender: TObject);
begin
     threadtype := 2;
end;

procedure TFormGyverMatrixCalculator.RadioButton30lmClick(Sender: TObject);
begin
     threadtype := 3;
end;

procedure TFormGyverMatrixCalculator.RadioButton60lmClick(Sender: TObject);
begin
     threadtype := 4;
end;

procedure TFormGyverMatrixCalculator.RadioButton74lmClick(Sender: TObject);
begin
     threadtype := 5;
end;

procedure TFormGyverMatrixCalculator.RadioButton96lmClick(Sender: TObject);
begin
     threadtype := 6;
end;

procedure TFormGyverMatrixCalculator.RadioButton100lmClick(
  Sender: TObject);
begin
     threadtype := 7;
end;

procedure TFormGyverMatrixCalculator.RadioButton144lmClick(
  Sender: TObject);
begin
     threadtype := 8;
end;

procedure TFormGyverMatrixCalculator.RadioButton10cm100Click(
  Sender: TObject);
begin
     threadtype := 9;
end;

procedure TFormGyverMatrixCalculator.RadioButtonMClick(Sender: TObject);
begin
     matrixsize := 1;
     Edit1.Enabled := true;
     Edit2.Enabled := true;
     Edit3.Enabled := false;
     Edit4.Enabled := false;
end;

procedure TFormGyverMatrixCalculator.RadioButtonCmClick(Sender: TObject);
begin
     matrixsize := 2;
     Edit1.Enabled := false;
     Edit2.Enabled := false;
     Edit3.Enabled := true;
     Edit4.Enabled := true;
end;

procedure TFormGyverMatrixCalculator.Button1Click(Sender: TObject);
var
   ledwidth, ledheight, diodes, threads, diodesremainder, plugs, matrixthreads : integer;
   width, height, wirelength, threadlength, step, maxpower, maxpowerreal : real;
begin
     case threadtype of
          1 : step := 10;                                   //�������� 10 �� ����� �������
          2 : step := 12;                                   //�������� 12 �� ����� �������
          3 : step := 100 / 30;                             //����� 30 ������ �� ����
          4 : step := 100 / 60;                             //����� 60 ������ �� ����
          5 : step := 100 / 74;                             //����� 74 ����� �� ����
          6 : step := 100 / 96;                             //����� 96 ������ �� ����
          7 : step := 1;                                    //����� 100 ������ �� ����
          8 : step := 100 / 144;                            //����� 144 ����� �� ����
          9 : step := 10;                                   //�������� 10 �� ����� ������� (�� 100 ������)
     end;
     if (matrixsize = 1) then                               //������� � �������
     begin
          if (RadioButtonVertical.Checked = true) then
          begin
               ledwidth := strtoint(Edit1.Text);
               ledheight := strtoint(Edit2.Text);
          end
          else
          begin
               ledheight := strtoint(Edit1.Text);
               ledwidth := strtoint(Edit2.Text);
          end;
          if (threadtype = 8) then                          //������ ����� 144 ����� �� ���� ������, ��� ���������� ����� �������
              width := ledwidth * 1.2
          else
              width := ledwidth * step;
          height := ledheight * step;
          if (RadioButtonVertical.Checked = true) then      //������� ����������� �������� �������� � ��������������� ����
          begin
               Edit3.Text := FormatFloat('#.##',width);
               Edit4.Text := FormatFloat('#.##',height);
          end
          else
          begin
               Edit3.Text := FormatFloat('#.##',height);
               Edit4.Text := FormatFloat('#.##',width);
          end;
     end;
     if (matrixsize = 2) then                               //������� � �����������
     begin
          if (RadioButtonVertical.Checked = true) then      //������� ����������� �������� �������� � ��������������� ����
          begin
               width := strtofloat(Edit3.Text);
               height := strtofloat(Edit4.Text);
          end
          else
          begin
               height := strtofloat(Edit3.Text);
               width := strtofloat(Edit4.Text);
          end;
          if (threadtype = 8) then                          //������ ����� 144 ����� �� ���� ������, ��� ���������� ����� �������
              ledwidth := trunc(width / 1.2)
          else
              ledwidth := trunc(width / step);
          ledheight := trunc(height / step);
          if (RadioButtonVertical.Checked = true) then      //������� ����������� ���������� ������ � ��������������� ����
          begin
               Edit1.Text := inttostr(ledwidth);
               Edit2.Text := inttostr(ledheight);
          end
          else
          begin
               Edit1.Text := inttostr(ledheight);
               Edit2.Text := inttostr(ledwidth);
          end;
     end;
     diodes := ledwidth * ledheight;
     if (threadtype = 1) or (threadtype = 2) then           //��� ������� 10 � 12 �� ����� ������� (�� 50 ������)
     begin
          if (diodes mod 50 > 0) then
              threads := (diodes div 50) + 1                //���� ���������� ������ �� ������ 50, ��������� ��� ���� ��������
          else
              threads := diodes div 50;
          diodesremainder := threads * 50 - diodes;
          Label5.Caption := '���������� ������� (�� 50 ������):';
          LabelThread.Caption := inttostr(threads);
          LabelRemainder.Caption := inttostr(diodesremainder);
          plugs := ledwidth + trunc(ledwidth / 2) + 1;      //���� ���������� ����� ��������, ����� �� 1 ������ ������; +1 - ��������� ������ ������ �� ����������� ������� � �����������
          wirelength := ceil((ledwidth * step) / 100 + 3);  //������ ������� � ������ ���������� ����� ������� + 3 ����� �� ����� ����������� �� �����������, ��������� �� � ������� �������
          Label6.Visible := true;
          LabelPlug.Visible := true;
          Label7.Visible := true;
          LabelWire.Visible := true;
          LabelPlug.Caption := inttostr(plugs);
          LabelWire.Caption := floattostr(wirelength);
     end;
     if (threadtype = 3) or (threadtype = 4) or (threadtype = 5) or (threadtype = 6) or (threadtype = 7) or (threadtype = 8) then
     begin
          threadlength := (diodes * step) / 100;
          if (frac(threadlength) > 0) and (int(threadlength) > 0) then
               threads := trunc(threadlength) + 1;          //���� ���������� ����� �� ������ 1 ����� � ������ 1 �����, ��������� ��� ����
          if (frac(threadlength) > 0) and (int(threadlength) = 0) then
               threads := 1;                                //���� ���������� ����� �� ������ 1 ����� � ������ 1 �����, ����� ����� 1 ����
          if (frac(threadlength) = 0) and (int(threadlength) > 0) then
               threads := trunc(threadlength);              //����������� ����������� ������, ���� ����� ����� �������� �� ������� ��� �������
          Label5.Caption := '���������� �����, �:';
          LabelThread.Caption := floattostr(threads);
          diodesremainder := round(threads * 100 / step) - diodes;
          LabelRemainder.Caption := inttostr(diodesremainder);
          Label6.Visible := false;                          //������ � ������� ��� ������ ������� �� ���� �� �����
          LabelPlug.Visible := false;
          Label7.Visible := false;
          LabelWire.Visible := false;
     end;
     if (threadtype = 9) then                               //��� ������� 10 �� ����� ������� (�� 100 ������)
     begin
          matrixthreads := 100 div ledheight;               //�������, ������� �������� ������ ����� ���������� �� �������� � 100 ������
          if (matrixthreads < ledwidth) then
              threads := ceil(ledwidth / matrixthreads)
          else
              threads := 1;
          diodesremainder := threads * 100 - diodes;
          wirelength := ceil((ledwidth * step) / 100 + 3);  //������ ������� � ������ ���������� ����� ������� + 3 ����� �� ����� ����������� �� �����������, ��������� �� � ������� �������
          plugs := ledwidth + trunc(ledwidth / 2) + 1;      //���� ���������� ����� ��������, ����� �� 1 ������ ������; +1 - ��������� ������ ������ �� ����������� ������� � �����������
          Label5.Caption := '���������� ������� (�� 100 ������):';
          LabelThread.Caption := inttostr(threads);
          LabelRemainder.Caption := inttostr(diodesremainder);
          Label6.Visible := true;
          LabelPlug.Visible := true;
          Label7.Visible := true;
          LabelWire.Visible := true;
          LabelPlug.Caption := inttostr(plugs);
          LabelWire.Caption := floattostr(wirelength);
     end;
     LabelDiode.Caption := inttostr(diodes);
     maxpower := 0.06 * diodes;                             //0.06 - ������������ ������������� ����������� ������ ����� � ����� ������ �� ������������ ������� �������� ��������
     LabelPower.Caption := floattostr(maxpower);
     maxpowerreal := 0.015 * diodes;                        //0.015 ��������� ��� ������ ����� �� ������ ����� ����������� ������� ����������� ������� 16*16 � ����� ������ �� ������������ �������
     LabelPowerReal.Caption := floattostr(maxpowerreal);    //�������, �������� �� ������������ ������� ����� ��� �������� �������� �������, ������� �������� �� � �������� ����� ������ �����-�����
end;

end.
