unit GyverMatrixCalculatorUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan;

type
  TFormGyverMatrixCalculator = class(TForm)
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    LabelDiode: TLabel;
    LabelThread: TLabel;
    LabelPlug: TLabel;
    LabelWire: TLabel;
    Label9: TLabel;
    LabelPower: TLabel;
    Label11: TLabel;
    LabelRemainder: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RadioButtonM: TRadioButton;
    RadioButtonCm: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label10: TLabel;
    Label12: TLabel;
    Edit4: TEdit;
    Label13: TLabel;
    RadioButton10cm: TRadioButton;
    RadioButton30lm: TRadioButton;
    RadioButton74lm: TRadioButton;
    RadioButton100lm: TRadioButton;
    RadioButton96lm: TRadioButton;
    RadioButton60lm: TRadioButton;
    RadioButton12cm: TRadioButton;
    Label14: TLabel;
    Label15: TLabel;
    RadioButton144lm: TRadioButton;
    GroupBox3: TGroupBox;
    RadioButtonHorisontal: TRadioButton;
    RadioButtonVertical: TRadioButton;
    XPManifest1: TXPManifest;
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
   ledwidth, ledheight, diodes, threads, diodesremainder, plugs : integer;
   width, height, wirelength, threadlength, step, maxpower : real;
begin
     case threadtype of
          1 :  step := 10;
          2 :  step := 12;
          3 :  step := 100 / 30;
          4 :  step := 100 / 60;
          5 :  step := 100 / 74;
          6 :  step := 100 / 96;
          7 :  step := 1;
          8 :  step := 100 / 144;
     end;
     if (matrixsize = 1) then
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
          if (threadtype = 8) then
              width := ledwidth * 1.2
          else
              width := ledwidth * step;
          height := ledheight * step;
          if (RadioButtonVertical.Checked = true) then
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
     if (matrixsize = 2) then
     begin
          if (RadioButtonVertical.Checked = true) then
          begin
               width := strtofloat(Edit3.Text);
               height := strtofloat(Edit4.Text);
          end
          else
          begin
               height := strtofloat(Edit3.Text);
               width := strtofloat(Edit4.Text);
          end;
          if (threadtype = 8) then
              ledwidth := trunc(width / 1.2)
          else
              ledwidth := trunc(width / step);
          ledheight := trunc(height / step);
          if (RadioButtonVertical.Checked = true) then
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
     if (threadtype = 1) or (threadtype = 2) then
     begin
          if (diodes mod 50 > 0) then
              threads := (diodes div 50) + 1       //если количество диодов не кратно 50, добавляем еще одну гирлянду
          else
              threads := diodes div 50;
          diodesremainder := threads * 50 - diodes;
          Label5.Caption := 'Количество гирлянд (по 50 диодов):';
          LabelThread.Caption := inttostr(threads);
          LabelRemainder.Caption := inttostr(diodesremainder);
          plugs := ledwidth + trunc(ledheight/2) + 1;    //если количество ниток в матрице нечетное, тогда нужно на 1 разъем меньше; +1 - разъем на подключение матрицы к контроллеру
          wirelength := (width + height) / 100 + 2;  //длина + ширина + пара метров на то, чтобы довести до розетки
          Label6.Visible := true;
          LabelPlug.Visible := true;
          Label7.Visible := true;
          LabelWire.Visible := true;
          LabelPlug.Caption := inttostr(plugs);
          LabelWire.Caption := floattostr(wirelength);
          plugs := ledwidth + trunc(ledwidth / 2) + 1;    //если количество ниток в матрице нечетное, тогда нужно на 1 разъем меньше; +1 - разъем на подключение матрицы к контроллеру
          wirelength := ledwidth/10 + ledheight / 10 + 2;  //длина + ширина + пара метров на то, чтобы довести до розетки
     end
     else
     begin
          threadlength := (diodes * step) / 100;
          if (frac(threadlength) > 0) and (int(threadlength) > 0) then
               threads := trunc(threadlength) + 1;       //если количество ленты не кратно 1 метру и больше 1 метра, добавляем еще метр
          if (frac(threadlength) > 0) and (int(threadlength) = 0) then
               threads := 1;                             //если количество ленты не кратно 1 метру и меньше 1 метра, берем ровно 1 метр
          if (frac(threadlength) = 0) and (int(threadlength) > 0) then
               threads := trunc(threadlength);           //практически невозможный случай, если лента точно подойдет по метражу без остатка
          Label5.Caption := 'Количество ленты, м:';
          LabelThread.Caption := floattostr(threads);
          diodesremainder := round(threads * 100 / step) - diodes;
          LabelRemainder.Caption := inttostr(diodesremainder);
          Label6.Visible := false;                       //провод и разъемы при сборке матрицы из лент не нужны
          LabelPlug.Visible := false;
          Label7.Visible := false;
          LabelWire.Visible := false;
     end;
     LabelDiode.Caption := inttostr(diodes);
     maxpower := 0.015 * diodes;                  //0.015 вычислено для одного диода по итогам замеров потребления матрицы 16*16 в белом режиме на максимальной яркости
     LabelPower.Caption := floattostr(maxpower);  //впрочем, матрицей на максимальной яркости можно уже спокойно освещать комнату
end;

end.
