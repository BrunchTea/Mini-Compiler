export data $x = align 4 { w 0, }
export data $y = align 4 { w 0, }
data $L19 = { b 37, b 100, b 32, b 37, b 100, b 10,  b 0 }
export function w $main() {
@L20
  %.t1 =w copy 0
  storew %.t1, $x
  %.t2 =w copy 1
  storew %.t2, $y
@L21
  %.t3 =w loadsw $x
  %.t4 =w copy 5
  %.t5 =w csltw %.t3, %.t4
  %.t6 =w copy 1
  %.t7 =w cnew %.t5, %.t6
  jnz %.t7, @L22, @L23
@L23
  %.t8 =w loadsw $y
  %.t9 =w loadsw $x
  %.t10 =l copy $L19
  %.t11 =w call $printf(l %.t10, w %.t9, w %.t8, )
  %.t12 =w loadsw $x
  %.t13 =w copy 1
  %.t12 =w add %.t12, %.t13
  storew %.t12, $x
  %.t14 =w loadsw $y
  %.t15 =w copy 2
  %.t14 =w add %.t14, %.t15
  storew %.t14, $y
  jmp @L21
@L22
  %.t16 =w copy 0
  %.ret =w copy %.t16
  jmp @L18
@L18
  ret %.ret
}
