.assembly extern mscorlib {}
.module extern msvcr110.dll
.assembly CallC{}

.class public CLib
{
  .method public hidebysig static pinvokeimpl("msvcr110.dll" cdecl) 
        int32  printf(string a,
                      char b) cil managed preservesig
  {
  }
  .method public hidebysig static pinvokeimpl("msvcr110.dll" cdecl) 
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
ldstr      "We lelzing, you hatin%c"
ldc.i4.s   39
call       int32 CLib::printf(string, char)
pop
call       int32 CLib::getchar()
pop
ret
}
}

//ilasm.exe ggg.il /subsystem:3