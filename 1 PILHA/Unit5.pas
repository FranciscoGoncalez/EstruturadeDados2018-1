unit Unit5;

interface

uses
  Forms, Classes, ExtCtrls,Generics.Collections;

Type

  TPilha = class
  private
    Index : Integer;
    FAowner : TPanel;
    List : TList;
    procedure AdicionandoImagemPilha(Valor : String);
  public
    procedure ReorganizarIndex;
    procedure AddProcesso(Valor : String);
    procedure RetiraProcesso;
    constructor Create(Aowner : TPanel);
  end;

implementation

uses
  Dialogs, Controls, SysUtils, Graphics;

{ TPilha }

procedure TPilha.AddProcesso(Valor : String);
begin
  If List.Count < 10 then
  begin
    if Trim(Valor) = '' then
      ShowMessage('Preencha o VALOR')
    else
      AdicionandoImagemPilha(Valor)
  end
  else

end;


procedure TPilha.AdicionandoImagemPilha(Valor : String);
var
  FPanel : TPanel;
begin
  FPanel := TPanel.Create(FAowner);
  FPanel.Parent :=  FAowner;
  FPanel.BorderStyle := bsNone;
  FPanel.BevelOuter := bvNone;
  FPanel.Height := 65;
  FPanel.Width := 40;
  FPanel.Color := Clred;
  FPanel.Align := alRight;
  FPanel.Caption := Valor;

  Inc(Index);

  List.Add(FPanel);
end;

constructor TPilha.Create(Aowner: TPanel);
begin
  Self.FAowner := aowner;
  List := TList.Create;
  Index := 1;
end;

procedure TPilha.ReorganizarIndex;
begin

end;

procedure TPilha.RetiraProcesso;
var
  ObjTemp : TPanel;
begin
 if List.Count <> 0 then
 begin
   ObjTemp := TPanel(List.Last);
   List.Remove(ObjTemp);
   FreeAndNil(ObjTemp);
 end
 else
   showmessage('PILHA VAZIA');
end;

end.
