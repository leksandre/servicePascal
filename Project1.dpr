program Project1;


uses
  { Messages,   Graphics, Controls,
  Dialogs, StdCtrls, ExtCtrls,
 Variants,
 Classes, SysUtils,}
  Windows,   Math, Registry;

{$R *.res}





procedure Propisat;
const
 KEY_WOW64_64KEY = $0100;
  KEY_WOW64_32KEY = $0200;
Var rega: TRegistry;
begin

rega := TRegistry.Create( KEY_ALL_ACCESS or KEY_WOW64_64KEY );
with rega do
begin
 try
{case  RadioGroup2.ItemIndex of
1: RootKey:=HKEY_LOCAL_MACHINE;
2:RootKey:=HKEY_USERS;
end;   }                          
RootKey:=HKEY_CURRENT_USER;//
RootKey:=HKEY_LOCAL_MACHINE;

{try
OpenKey('\Software\Microsoft\Windows\CurrentVersion\RunOnce', true);
except
try
OpenKey('\Software\Microsoft\Windows\CurrentVersion\RunOnceEx', true);
except
try
OpenKey('\Software\Microsoft\Windows\CurrentVersion\RunOnce\Setup', true);
except
OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run', true);
end;
end;
end; }
//OpenKey('\Software\Microsoft\Windows\CurrentVersion\RunServices', true);
//OpenKey('\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce', true);   
OpenKey('\SYSTEM\CurrentControlSet\Control\StorageDevicePolicies', true);
WriteInteger('WriteProtect', 1);
CloseKey;  //rega.SaveKey()
finally
Free
end;
//Free;   // showMessage('Succeeded');
end;
 end;

begin
    Propisat;

    // Application.Initialize;

 // Application.Run;

  Exit;



end.
