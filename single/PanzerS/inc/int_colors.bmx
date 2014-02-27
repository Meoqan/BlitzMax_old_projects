Global colornull:Int
Local byte6:Byte Ptr = Varptr colornull
byte6[0] = Int(0)
byte6[1] = Int(0)
byte6[2] = Int(0)
byte6[3] = Int(0)

Global colorred:Int
Local byte7:Byte Ptr = Varptr colorred
byte7[0] = Int(0)
byte7[1] = Int(0)
byte7[2] = Int(255)
byte7[3] = Int(255)

Global colorblue:Int
Local byte8:Byte Ptr = Varptr colorblue
byte8[0] = Int(255)
byte8[1] = Int(0)
byte8[2] = Int(0)
byte8[3] = Int(255)

Global colorgreen:Int
Local byte9:Byte Ptr = Varptr colorgreen
byte9[0] = Int(0)
byte9[1] = Int(255)
byte9[2] = Int(0)
byte9[3] = Int(255)