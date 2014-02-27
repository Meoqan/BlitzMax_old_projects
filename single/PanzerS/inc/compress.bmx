
Function Compressfile(file_read:String, file_write:String)

	Local file:TStream = ReadFile(file_read)
	
	Local barray:Byte[file.Size()]
	For Local x:Int = 0 To file.Size() - 1
		barray[x] = file.ReadByte()
	Next
	
	file.Close()
	
	Local cbyt:Byte[] = CompressBytes(barray)
	
	Local write:TStream = WriteFile(file_write)
	
	For Local x2:Int = 0 To Len(cbyt) - 1
		write.WriteByte(cbyt[x2])
	Next
	write.Close()
	
End Function

Function UnCompressfile(file_read:String, file_write:String)

	Local file:TStream = ReadFile(file_read)
	
	Local barray:Byte[file.Size()]
	For Local x:Int = 0 To file.Size() - 1
		barray[x] = file.ReadByte()
	Next
	
	file.Close()
	
	Local cbyt:Byte[] = DecompressBytes(barray)
	
	Local write:TStream = WriteFile(file_write)
	
	For Local x2:Int = 0 To Len(cbyt) - 1
		write.WriteByte(cbyt[x2])
	Next
	write.Close()
	
End Function


Function CompressBytes:Byte[] (Bytes:Byte[], CompressLevel:Int = 9)

	Local length:Int = Len(Bytes) * 2

	Local Compressed:Byte[length]
	
	Compressed[0] = Len(Bytes) & $FF
	Compressed[1] = (Len(Bytes) Shr 8) & $FF
	Compressed[2] = (Len(Bytes) Shr 16) & $FF
	Compressed[3] = (Len(Bytes) Shr 24) & $FF
	
	Local DataPointer:Byte Ptr
	Local CompPointer:Byte Ptr
	
	DataPointer = Bytes
	CompPointer = Compressed
	CompPointer:+4
	
	compress2(CompPointer,length, DataPointer,Len(Bytes), CompressLevel)
		
	Return Compressed[..(length - 1 + 4)]

End Function

Function DecompressBytes:Byte[](Compressed:Byte[])

	Local Size:Int = Compressed[0] + (Compressed[1] Shl 8) + (Compressed[2] Shl 16) + (Compressed[3] Shl 24)

	Local length:Int = Size+1

	Local Uncompressed:Byte[length]

	Local CompPointer:Byte Ptr
	Local DataPointer:Byte Ptr

	CompPointer = Compressed
	CompPointer:+4
	DataPointer = Uncompressed
		
	uncompress(DataPointer,length, CompPointer,Len(Compressed))
		
	Return Uncompressed[..(length-1)]

End Function