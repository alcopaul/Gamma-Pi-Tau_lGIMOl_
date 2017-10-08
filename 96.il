.assembly extern mscorlib {}
.assembly Win96 {}

.method static void Main()
{
	.entrypoint
	.maxstack 6

	ldstr "\r\n=====================\r\nby CHY\r\n---------------------\r\nEveryday Le Club [As]\r\n====================="
	call void [mscorlib]System.Console::WriteLine(string)
  call valuetype [mscorlib]System.ConsoleKeyInfo [mscorlib]System.Console::ReadKey()
  pop
	ret
}
