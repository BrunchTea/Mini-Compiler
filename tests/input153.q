data $L19 = { b 99, b 108, b 97, b 115, b 115, b 32, b 37, b 100, b 32, b 112, b 114, b 101, b 102, b 105, b 120, b 32, b 37, b 99, b 10,  b 0 }
export function w $main() {
@L20
  %q =l alloc4 1
  %.t1 =w copy 1
  %class =w copy %.t1
@L21
  %.t2 =w copy %class
  %.t3 =w copy 11
  %.t4 =w cslew %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L22, @L23
@L23
  %.t7 =w copy %class
  %.t8 =w copy 1
  %.t9 =w ceqw %.t7, %.t8
  %.t10 =l cnew %.t9, 0
  jnz %.t10, @L28, @L30
@L30
  %.t11 =w copy %class
  %.t12 =w copy 5
  %.t13 =w ceqw %.t11, %.t12
  %.t14 =l cnew %.t13, 0
  jnz %.t14, @L28, @L31
@L31
  %.t13 =w copy 0
  jmp @L29
@L28
  %.t13 =w copy 1
@L29
  %.t15 =l cnew %.t13, 0
  jnz %.t15, @L26, @L32
@L32
  %.t16 =w copy %class
  %.t17 =w copy 4
  %.t18 =w ceqw %.t16, %.t17
  %.t19 =l cnew %.t18, 0
  jnz %.t19, @L26, @L33
@L33
  %.t18 =w copy 0
  jmp @L27
@L26
  %.t18 =w copy 1
@L27
  %.t20 =w copy 1
  %.t21 =w cnew %.t18, %.t20
  jnz %.t21, @L24, @L34
@L34
  %.t23 =w copy 36
  %.t22 =w copy %.t23
  jmp @L25
@L24
  %.t24 =w copy 37
  %.t22 =w copy %.t24
@L25
  storew %.t22, %q
  %.t25 =w loadub %q
  %.t26 =w copy %class
  %.t27 =l copy $L19
  %.t28 =w call $printf(l %.t27, w %.t26, w %.t25, )
  %.t29 =w copy %class
  %class =w add %class, 1
  jmp @L21
@L22
  %.t30 =w copy 0
  %.ret =w copy %.t30
  jmp @L18
@L18
  ret %.ret
}
