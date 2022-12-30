unit U_calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TCalculadora_Delphi = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_4: TButton;
    btn_9: TButton;
    btn_ponto: TButton;
    btn_igual: TButton;
    btn_somar: TButton;
    btn_subtrair: TButton;
    btn_multiplicar: TButton;
    btn_dividir: TButton;
    caixa_botoes: TLayout;
    Layout1: TLayout;
    lb_operador: TLabel;
    lb_num2: TLabel;
    lb_num1: TLabel;
    btn_apagar: TButton;
    btn_ce: TButton;
    btn_c: TButton;
    procedure btn_subtrairClick(Sender: TObject);
    procedure btn_multiplicarClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_somarClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_ceClick(Sender: TObject);
    procedure btn_cClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Calculadora_Delphi: TCalculadora_Delphi;

implementation

{$R *.fmx}

procedure TCalculadora_Delphi.btn_0Click(Sender: TObject);
begin
if lb_operador.text = '.' then
  begin
      lb_num1.text := lb_num1.text + '0';
  end
  else
    lb_num2.text := lb_num2.text + '0';
end;

procedure TCalculadora_Delphi.btn_1Click(Sender: TObject);
begin
//lb_num1.text := lb_num1.text + '1';
  if lb_operador.text = '.' then
  begin
      lb_num1.text := lb_num1.text + '1';
  end
  else
    lb_num2.text := lb_num2.text + '1';
end;

procedure TCalculadora_Delphi.btn_2Click(Sender: TObject);
begin
if lb_operador.text = '.' then
  begin
      lb_num1.text := lb_num1.text + '2';
  end
  else
    lb_num2.text := lb_num2.text + '2';
end;

procedure TCalculadora_Delphi.btn_3Click(Sender: TObject);
begin
if lb_operador.text = '.' then
  begin
      lb_num1.text := lb_num1.text + '3';
  end
  else
    lb_num2.text := lb_num2.text + '3';
end;

procedure TCalculadora_Delphi.btn_4Click(Sender: TObject);
begin
if lb_operador.text = '.' then
  begin
      lb_num1.text := lb_num1.text + '4';
  end
  else
    lb_num2.text := lb_num2.text + '4';
end;

procedure TCalculadora_Delphi.btn_5Click(Sender: TObject);
begin
if lb_operador.text = '.' then
  begin
      lb_num1.text := lb_num1.text + '5';
  end
  else
    lb_num2.text := lb_num2.text + '5';
end;

procedure TCalculadora_Delphi.btn_6Click(Sender: TObject);
begin
if lb_operador.text = '.' then
  begin
      lb_num1.text := lb_num1.text + '6';
  end
  else
    lb_num2.text := lb_num2.text + '6';
end;

procedure TCalculadora_Delphi.btn_7Click(Sender: TObject);
begin
if lb_operador.text = '.' then
  begin
      lb_num1.text := lb_num1.text + '7';
  end
  else
    lb_num2.text := lb_num2.text + '7';
end;

procedure TCalculadora_Delphi.btn_8Click(Sender: TObject);
begin
if lb_operador.text = '.' then
  begin
      lb_num1.text := lb_num1.text + '8';
  end
  else
    lb_num2.text := lb_num2.text + '8';
end;

procedure TCalculadora_Delphi.btn_9Click(Sender: TObject);
begin
if lb_operador.text = '.' then
  begin
      lb_num1.text := lb_num1.text + '9';
  end
  else
    lb_num2.text := lb_num2.text + '9';
end;

procedure TCalculadora_Delphi.btn_apagarClick(Sender: TObject);
begin
  if lb_operador.text = '.' then
  begin
      lb_num1.text :=  copy(lb_num1.text, 0, length(lb_num1.text)-1);
  end
  else
  begin
    lb_num2.text :=  copy(lb_num2.text, 0, length(lb_num2.text)-1);
  end;
end;

procedure TCalculadora_Delphi.btn_cClick(Sender: TObject);
begin
if lb_operador.text = '.' then
  begin
      lb_num1.text := '';
  end
  else
  begin
      lb_num2.text := '';
  end;

end;

procedure TCalculadora_Delphi.btn_ceClick(Sender: TObject);
begin
lb_num1.text := '';
lb_num2.text := '';
lb_operador.text := '.';
btn_somar.Enabled := true;
btn_multiplicar.Enabled := true;
btn_dividir.Enabled := true;
btn_somar.Enabled := true;
end;

procedure TCalculadora_Delphi.btn_dividirClick(Sender: TObject);
begin
lb_operador.text := '/';
btn_somar.Enabled := true;
btn_multiplicar.Enabled := true;
btn_dividir.Enabled := false;
btn_somar.Enabled := true;
end;

procedure TCalculadora_Delphi.btn_igualClick(Sender: TObject);
var num1, num2 : double;
begin
  num1 :=  strToFloat (lb_num1.text);
  num2 :=  strToFloat (lb_num2.text);
  //efetuando a operação
  if (lb_operador.text = '+') then
  begin
    Showmessage (FloatToStr(num1 + num2));
  end;
  if (lb_operador.text = '-') then
  begin
    Showmessage (FloatToStr(num1 - num2));
  end;
  if (lb_operador.text = '*') then
  begin
    Showmessage (FloatToStr(num1 * num2));
  end;
  if (lb_operador.text = '/') then
  begin
    Showmessage (FloatToStr(num1 / num2));
  end;

lb_num1.text := '';
lb_num2.text := '';
lb_operador.text := '.';
btn_somar.Enabled := true;
btn_multiplicar.Enabled := true;
btn_dividir.Enabled := true;
btn_somar.Enabled := true;
end;

procedure TCalculadora_Delphi.btn_multiplicarClick(Sender: TObject);
begin
lb_operador.text := '*';
btn_somar.Enabled := true;
btn_multiplicar.Enabled := false;
btn_dividir.Enabled := true;
btn_somar.Enabled := true;
end;

procedure TCalculadora_Delphi.btn_pontoClick(Sender: TObject);
begin
if lb_operador.text = '.' then
  begin
      lb_num1.text := lb_num1.text + ',';
  end
  else
    lb_num2.text := lb_num2.text + ',';
end;

procedure TCalculadora_Delphi.btn_somarClick(Sender: TObject);
begin
lb_operador.text := '+';
btn_somar.Enabled := false;
btn_multiplicar.Enabled := true;
btn_dividir.Enabled := true;
btn_somar.Enabled := true;
end;

procedure TCalculadora_Delphi.btn_subtrairClick(Sender: TObject);
begin
lb_operador.text := '-';
btn_somar.Enabled := true;
btn_multiplicar.Enabled := true;
btn_dividir.Enabled := true;
btn_subtrair.Enabled := false;
end;

end.
