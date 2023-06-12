data $L3 = { b 72, b 101, b 108, b 108, b 111, b 32, b 119, b 111, b 114, b 108, b 100, b 44, b 32, b 37, b 100, b 10,  b 0 }
export function w $main() {
@L4
  %.t1 =w copy 0
  %i =w copy %.t1
@L5
  %.t2 =w copy %i
  %.t3 =w copy 20
  %.t4 =w csltw %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L6, @L7
@L7
  %.t7 =w copy %i
  %.t8 =l copy $L3
  %.t9 =w call $printf(l %.t8, w %.t7, )
  %.t10 =w copy %i
  %i =w add %i, 1
  jmp @L5
@L6
  %.t11 =w copy 0
  %.ret =w copy %.t11
  jmp @L2
@L2
  ret %.ret
}
