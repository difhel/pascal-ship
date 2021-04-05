unit lodka1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  //писать после var
 y, v, a,  val, mass, k,ro, dt,t_curr, T:double;
 F:TextFile;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  //писать в процедуре  TForm1.Button1Click

     T:= strToFloat(Edit1.Text);
     k:= strToFloat(Edit2.Text);
     val:= strToFloat(Edit3.Text);
     mass:= strToFloat(Edit4.Text);
     ro:= strToFloat(Edit5.Text);
     a:=0;
     v:=0;
     y:= 0;
     dt:= 0.1;
     t_curr :=0;
     AssignFile(F, 'C:\Users\Шломо\Desktop\ЛОДКА\logs.txt');
     ReWrite(F);
     while t_curr < T do
           begin
             t_curr:=t_curr+dt;
             a:=(-k*v-ro*val*10+10*mass)/mass;
             v:= v+a*dt;
             y:=v*dt +y;
             Write(F, FloatToStr(t_curr));
             Write(F, ' ');
             WriteLn(F, FloatToStr(y));
           end;
     ShowMessage(' y= ' +FloatToStr(y));
     closeFile(F);
end;

end.     
