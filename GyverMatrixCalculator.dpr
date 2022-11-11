program GyverMatrixCalculator;

uses
  Forms,
  GyverMatrixCalculatorUnit in 'GyverMatrixCalculatorUnit.pas' {FormGyverMatrixCalculator};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'GyverMatrix Calculator';
  Application.CreateForm(TFormGyverMatrixCalculator, FormGyverMatrixCalculator);
  Application.Run;
end.
