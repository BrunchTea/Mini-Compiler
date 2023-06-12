export data $y = align 1 { b 97, }
export data $x = align 8 { l 0, }
data $L19 = { b 49, b 115, b 116, b 32, b 109, b 97, b 116, b 99, b 104, b 10,  b 0 }
data $L20 = { b 50, b 110, b 100, b 32, b 109, b 97, b 116, b 99, b 104, b 10,  b 0 }
data $L21 = { b 51, b 114, b 100, b 32, b 109, b 97, b 116, b 99, b 104, b 10,  b 0 }
export function w $main() {
@L22
  %.t1 =l copy $y
  storel %.t1, $x
  %.t2 =l loadl $x
  %.t3 =l cnel %.t2, 0
  jnz %.t3, @L26, @L24
@L26
  %.t4 =w loadub $y
  %.t5 =w copy 97
  %.t6 =w ceqw %.t4, %.t5
  %.t7 =l cnew %.t6, 0
  jnz %.t7, @L27, @L24
@L27
  %.t6 =w copy 1
  jmp @L25
@L24
  %.t6 =w copy 0
@L25
  %.t8 =l cnew %.t6, 0
  jnz %.t8, @L28, @L23
@L28
  %.t9 =w copy 1
  %.t10 =w cnew %.t8, %.t9
  jnz %.t10, @L23, @L29
@L29
  %.t11 =l copy $L19
  %.t12 =w call $printf(l %.t11, )
@L23
  %.t13 =w copy 0
  %.t15 =l extub %.t13
  storel %.t15, $x
  %.t16 =l loadl $x
  %.t17 =l cnel %.t16, 0
  jnz %.t17, @L33, @L31
@L33
  %.t18 =w loadub $y
  %.t19 =w copy 97
  %.t20 =w ceqw %.t18, %.t19
  %.t21 =l cnew %.t20, 0
  jnz %.t21, @L34, @L31
@L34
  %.t20 =w copy 1
  jmp @L32
@L31
  %.t20 =w copy 0
@L32
  %.t22 =l cnew %.t20, 0
  jnz %.t22, @L35, @L30
@L35
  %.t23 =w copy 1
  %.t24 =w cnew %.t22, %.t23
  jnz %.t24, @L30, @L36
@L36
  %.t25 =l copy $L20
  %.t26 =w call $printf(l %.t25, )
@L30
  %.t27 =l copy $y
  storel %.t27, $x
  %.t28 =w copy 98
  storeb %.t28, $y
  %.t29 =l loadl $x
  %.t30 =l cnel %.t29, 0
  jnz %.t30, @L40, @L38
@L40
  %.t31 =w loadub $y
  %.t32 =w copy 97
  %.t33 =w ceqw %.t31, %.t32
  %.t34 =l cnew %.t33, 0
  jnz %.t34, @L41, @L38
@L41
  %.t33 =w copy 1
  jmp @L39
@L38
  %.t33 =w copy 0
@L39
  %.t35 =l cnew %.t33, 0
  jnz %.t35, @L42, @L37
@L42
  %.t36 =w copy 1
  %.t37 =w cnew %.t35, %.t36
  jnz %.t37, @L37, @L43
@L43
  %.t38 =l copy $L21
  %.t39 =w call $printf(l %.t38, )
@L37
  %.t40 =w copy 0
  %.ret =w copy %.t40
  jmp @L18
@L18
  ret %.ret
}
