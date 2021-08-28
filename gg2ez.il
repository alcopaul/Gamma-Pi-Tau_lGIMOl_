.assembly extern mscorlib {}
.module extern msvcr100.dll
.assembly CallC{}

.class public CLib
{
  .method public hidebysig static pinvokeimpl("msvcr100.dll" cdecl) 
        int32  printf(string a,
                      char b) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("msvcr100.dll" cdecl) 
        int32  getchar() cil managed preservesig
  {
  }
}

.class public CHYBAr
{
.method static public void main() cil managed
{
.entrypoint
.maxstack  8
ldstr      "Hello World%c\r\n"
ldc.i4.s   33
call       int32 CLib::printf(string, char)
pop
call       int32 CLib::getchar()
pop
ret
}
}

//ilasm.exe gg2ez.il /subsystem:3
