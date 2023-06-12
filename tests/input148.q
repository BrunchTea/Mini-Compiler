data $L18 = { b 117, b 110, b 117, b 115, b 101, b 100,  b 0 }
data $L19 = { b 45, b 102, b 105, b 115, b 104,  b 0 }
data $L20 = { b 45, b 99, b 97, b 116,  b 0 }
data $L21 = { b 111, b 119, b 108,  b 0 }
export data $argv = align 8 { l $L18, l $L19, l $L20, l $L21, }
export data $argc = align 4 { w 4, }
data $L23 = { b 105, b 32, b 105, b 115, b 32, b 37, b 100, b 10,  b 0 }
data $L24 = { b 108, b 101, b 102, b 116, b 111, b 118, b 101, b 114, b 32, b 37, b 115, b 10,  b 0 }
export function w $main() {
@L25
  %.t1 =w copy 1
  %i =w copy %.t1
@L26
  %.t2 =w copy %i
  %.t3 =w loadsw $argc
  %.t4 =w csltw %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L27, @L28
@L28
  %.t7 =w copy %i
  %.t8 =l copy $L23
  %.t9 =w call $printf(l %.t8, w %.t7, )
  %.t10 =l copy $argv
  %.t11 =w copy %i
  %.t12 =l extsw %.t11
  %.t13 =l shl %.t12, 3
  %.t10 =l add %.t10, %.t13
  %.t14 =l loadl %.t10
  %.t15 =w loadub %.t14
  %.t16 =w copy 45
  %.t17 =w cnew %.t15, %.t16
  %.t18 =w copy 1
  %.t19 =w cnew %.t17, %.t18
  jnz %.t19, @L29, @L30
@L30
  jmp @L27
@L29
  %.t20 =w copy %i
  %i =w add %i, 1
  jmp @L26
@L27
@L31
  %.t21 =w copy %i
  %.t22 =w loadsw $argc
  %.t23 =w csltw %.t21, %.t22
  %.t24 =w copy 1
  %.t25 =w cnew %.t23, %.t24
  jnz %.t25, @L32, @L33
@L33
  %.t26 =l copy $argv
  %.t27 =w copy %i
  %.t28 =l extsw %.t27
  %.t29 =l shl %.t28, 3
  %.t26 =l add %.t26, %.t29
  %.t30 =l loadl %.t26
  %.t31 =l copy $L24
  %.t32 =w call $printf(l %.t31, l %.t30, )
  %.t33 =w copy %i
  %i =w add %i, 1
  jmp @L31
@L32
  %.t34 =w copy 0
  %.ret =w copy %.t34
  jmp @L22
@L22
  ret %.ret
}
