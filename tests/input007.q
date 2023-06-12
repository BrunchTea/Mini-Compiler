data $L3 = { b 37, b 100, b 10,  b 0 }
export function   $main() {
@L4
  %.t1 =w copy 1
  %i =w copy %.t1
@L5
  %.t2 =w copy %i
  %.t3 =w copy 10
  %.t4 =w cslew %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L6, @L7
@L7
  %.t7 =w copy %i
  %.t8 =l copy $L3
  %.t9 =w call $printf(l %.t8, w %.t7, )
  %.t10 =w copy %i
  %.t11 =w copy 1
  %.t10 =w add %.t10, %.t11
  %i =w copy %.t10
  jmp @L5
@L6
@L2
  ret
}
