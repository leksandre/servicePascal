unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Button2: TButton;
    RadioGroup2: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math, Registry;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
If OpenDialog1.Execute 
then
begin
Edit1.Text:=ExtractFileName(OpenDialog1.FileName);
Edit2.Text:=OpenDialog1.FileName;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
Var rega: TRegistry;
begin
if (edit2.Text='')or(edit2.Text=' ') then showMessage('введите путь к программе')   else
If (edit1.Text='')or(edit1.Text=' ')or(edit1.Text='  ')or(edit1.Text='   ')or(edit1.Text='    ')
then showMessage('введите имя в регистре')
else
begin
rega := TRegistry.Create;
with rega do
begin

{case  RadioGroup2.ItemIndex of
1: RootKey:=HKEY_LOCAL_MACHINE;
2:RootKey:=HKEY_USERS;
end;   }
RootKey:=HKEY_LOCAL_MACHINE;
case  RadioGroup1.ItemIndex of
1:OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run', true);
2:OpenKey('\Software\Microsoft\Windows\CurrentVersion\RunOnce', true);
3:OpenKey('\Software\Microsoft\Windows\CurrentVersion\RunOnceEx', true);
4:OpenKey('\Software\Microsoft\Windows\CurrentVersion\RunOnce\Setup', true);
5:OpenKey('\Software\Microsoft\Windows\CurrentVersion\RunServices', true);
6:OpenKey('\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce', true);
end;


WriteString(edit1.Text, '"'+edit2.Text+'"');
CloseKey;  //rega.SaveKey()
Free;    showMessage('Succeeded');
end;
end;
end;

end.
