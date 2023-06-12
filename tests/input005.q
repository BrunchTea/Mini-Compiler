data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
export function   $main() {
@L5
  %.t1 =w copy 6
  %i =w copy %.t1
  %.t2 =w copy 12
  %j =w copy %.t2
  %.t3 =w copy %i
  %.t4 =w copy %j
  %.t5 =w csltw %.t3, %.t4
  %.t6 =w copy 1
  %.t7 =w cnew %.t5, %.t6
  jnz %.t7, @L6, @L8
@L8
  %.t8 =w copy %i
  %.t9 =l copy $L3
  %.t10 =w call $printf(l %.t9, w %.t8, )
@L9
  jmp @L7
@L6
  %.t11 =w copy %j
  %.t12 =l copy $L4
  %.t13 =w call $printf(l %.t12, w %.t11, )
@L7
@L2
  ret
}
