with AUnit.Run;
with AUnit.Reporter.Text;
use AUnit.Reporter.Text;

with RedisSuite;

procedure TextRunner is
    procedure Runner is new AUnit.Run.Test_Runner (RedisSuite.Suite);
    Reporter : Text_Reporter;
begin
    Set_Use_ANSI_Colors (Engine => Reporter,
            Value => True);
    Runner (Reporter);
end TextRunner;
