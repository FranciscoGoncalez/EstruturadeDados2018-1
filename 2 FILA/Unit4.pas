unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Unit5;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    EdtValor: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Pilha : TPilha;
    constructor Create(AOwner: TComponent); override;
    { Public declarations }

  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  Pilha.AddProcesso(EdtValor.Text);
  EdtValor.Clear;
  EdtValor.SetFocus;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Pilha.RetiraProcesso;
end;

constructor TForm4.Create(AOwner: TComponent);
begin
  inherited;
  Pilha := TPilha.Create(Panel1);
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  EdtValor.SetFocus;
end;

end.
