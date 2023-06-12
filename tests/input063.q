export data $var1 = align 4 { w 0, }
export data $var2 = align 4 { w 0, }
export data $var3 = align 4 { w 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L4
  %.t1 =w copy 25
  storew %.t1, $var1
  %.t2 =w loadsw $var1
  %.t3 =l copy $L3
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %.t5 =w copy 0
  %.ret =w copy %.t5
  jmp @L2
@L2
  ret %.ret
}
