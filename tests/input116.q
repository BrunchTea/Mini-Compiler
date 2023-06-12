data $counter = align 4 { w 0, }
function w $fred() {
@L19
  %.t1 =w loadsw $counter
  %.t2 =w loadsw $counter
  %.t2 =w add %.t2, 1
  storew %.t2, $counter
  %.ret =w copy %.t1
  jmp @L18
@L18
  ret %.ret
}
data $L21 = { b 37, b 100, b 10,  b 0 }
export function w $main() {
@L22
  %.t3 =w copy 0
  %i =w copy %.t3
@L23
  %.t4 =w copy %i
  %.t5 =w copy 5
  %.t6 =w csltw %.t4, %.t5
  %.t7 =w copy 1
  %.t8 =w cnew %.t6, %.t7
  jnz %.t8, @L24, @L25
@L25
  %.t9 =w call $fred()
  %.t10 =l copy $L21
  %.t11 =w call $printf(l %.t10, w %.t9, )
  %.t12 =w copy %i
  %i =w add %i, 1
  jmp @L23
@L24
  %.t13 =w copy 0
  %.ret =w copy %.t13
  jmp @L20
@L20
  ret %.ret
}
