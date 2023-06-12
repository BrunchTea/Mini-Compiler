data $localOffset = align 4 { w 0, }
function w $newlocaloffset(w %size, ) {
@L19
  %.t1 =w loadsw $localOffset
  %.t2 =w copy %size
  %.t3 =w copy 4
  %.t4 =w csgtw %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L20, @L22
@L22
  %.t8 =w copy %size
  %.t7 =w copy %.t8
  jmp @L21
@L20
  %.t9 =w copy 4
  %.t7 =w copy %.t9
@L21
  %.t1 =w add %.t1, %.t7
  storew %.t1, $localOffset
  %.t10 =w loadsw $localOffset
  %.t10 =w sub 0, %.t10
  %.ret =w copy %.t10
  jmp @L18
@L18
  ret %.ret
}
data $L24 = { b 37, b 100, b 32, b 37, b 100, b 10,  b 0 }
export function w $main() {
@L25
  %.t11 =w copy 1
  %i =w copy %.t11
@L26
  %.t12 =w copy %i
  %.t13 =w copy 12
  %.t14 =w cslew %.t12, %.t13
  %.t15 =w copy 1
  %.t16 =w cnew %.t14, %.t15
  jnz %.t16, @L27, @L28
@L28
  %.t17 =w copy %i
  %.t18 =w call $newlocaloffset(w %.t17, )
  %r =w copy %.t18
  %.t19 =w copy %r
  %.t20 =w copy %i
  %.t21 =l copy $L24
  %.t22 =w call $printf(l %.t21, w %.t20, w %.t19, )
  %.t23 =w copy %i
  %i =w add %i, 1
  jmp @L26
@L27
  %.t24 =w copy 0
  %.ret =w copy %.t24
  jmp @L23
@L23
  ret %.ret
}
