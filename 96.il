.assembly extern mscorlib {}
.module extern kernel32
.module extern user32
.assembly Win96{}

.class public Win32

{
  .method public hidebysig static pinvokeimpl("user32.dll" winapi) 
          int32  MessageBoxA(int32 hWnd,
                            string text,
                            string caption,
                            int32 t) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("kernel32.dll" winapi) 
          void  ExitProcess(unsigned int32 uExitCode) cil managed preservesig
  
  {
  }
}

.class public CHYBAr
{
.method static public void main() cil managed
{
.entrypoint
.maxstack 8
ldc.i4.0
ldstr "Everyday Le Club [As]"
ldstr "by CHY BAr"
ldc.i4.0
call  int32 Win32::MessageBoxA(int32,
                              string,
                              string,
                              int32)
call void Win32::ExitProcess(unsigned int32);
ret
}
}
