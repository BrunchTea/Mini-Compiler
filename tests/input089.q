export data $x = align 4 { w 23, }
export data $y = align 1 { b 72, }
data $L18 = { b 72, b 101, b 108, b 108, b 111, b 32, b 119, b 111, b 114, b 108, b 100,  b 0 }
export data $z = align 8 { l $L18, }
data $L20 = { b 37, b 100, b 32, b 37, b 99, b 32, b 37, b 115, b 10,  b 0 }
export function w $main() {
@L21
  %.t1 =l loadl $z
  %.t2 =w loadub $y
  %.t3 =w loadsw $x
  %.t4 =l copy $L20
  %.t5 =w call $printf(l %.t4, w %.t3, w %.t2, l %.t1, )
  %.t6 =w copy 0
  %.ret =w copy %.t6
  jmp @L19
@L19
  ret %.ret
}
