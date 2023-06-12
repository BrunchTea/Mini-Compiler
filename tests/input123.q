data $L19 = { b 37, b 50, b 100, b 32, b 105, b 110, b 102, b 97, b 110, b 116, b 32, b 112, b 114, b 105, b 109, b 101, b 10,  b 0 }
data $L20 = { b 37, b 50, b 100, b 32, b 116, b 101, b 101, b 110, b 32, b 32, b 32, b 112, b 114, b 105, b 109, b 101, b 10,  b 0 }
data $L21 = { b 37, b 50, b 100, b 32, b 105, b 110, b 102, b 97, b 110, b 116, b 32, b 99, b 111, b 109, b 112, b 111, b 115, b 105, b 116, b 101, b 10,  b 0 }
data $L22 = { b 37, b 50, b 100, b 32, b 116, b 101, b 101, b 110, b 32, b 32, b 32, b 99, b 111, b 109, b 112, b 111, b 115, b 105, b 116, b 101, b 10,  b 0 }
export function w $main() {
@L23
  %.t1 =w copy 0
  %x =w copy %.t1
@L24
  %.t2 =w copy %x
  %.t3 =w copy 20
  %.t4 =w csltw %.t2, %.t3
  %.t5 =w copy 1
  %.t6 =w cnew %.t4, %.t5
  jnz %.t6, @L25, @L26
@L26
  %.t7 =w copy %x
@L28
  %.t8 =w copy 2
  %.t9 =w cnew %.t7, %.t8
  jnz %.t9, @L29, @L46
@L46
  jmp @L45
@L29
  %.t10 =w copy 3
  %.t11 =w cnew %.t7, %.t10
  jnz %.t11, @L30, @L47
@L47
  jmp @L45
@L30
  %.t12 =w copy 5
  %.t13 =w cnew %.t7, %.t12
  jnz %.t13, @L31, @L48
@L48
  jmp @L45
@L31
  %.t14 =w copy 7
  %.t15 =w cnew %.t7, %.t14
  jnz %.t15, @L32, @L49
@L49
  jmp @L45
@L32
  %.t16 =w copy 11
  %.t17 =w cnew %.t7, %.t16
  jnz %.t17, @L33, @L50
@L50
  jmp @L45
@L45
  %.t18 =w copy %x
  %.t19 =l copy $L19
  %.t20 =w call $printf(l %.t19, w %.t18, )
  jmp @L27
@L33
  %.t21 =w copy 13
  %.t22 =w cnew %.t7, %.t21
  jnz %.t22, @L34, @L52
@L52
  jmp @L51
@L34
  %.t23 =w copy 17
  %.t24 =w cnew %.t7, %.t23
  jnz %.t24, @L35, @L53
@L53
  jmp @L51
@L35
  %.t25 =w copy 19
  %.t26 =w cnew %.t7, %.t25
  jnz %.t26, @L36, @L54
@L54
  jmp @L51
@L51
  %.t27 =w copy %x
  %.t28 =l copy $L20
  %.t29 =w call $printf(l %.t28, w %.t27, )
  jmp @L27
@L36
  %.t30 =w copy 0
  %.t31 =w cnew %.t7, %.t30
  jnz %.t31, @L37, @L56
@L56
  jmp @L55
@L37
  %.t32 =w copy 1
  %.t33 =w cnew %.t7, %.t32
  jnz %.t33, @L38, @L57
@L57
  jmp @L55
@L38
  %.t34 =w copy 4
  %.t35 =w cnew %.t7, %.t34
  jnz %.t35, @L39, @L58
@L58
  jmp @L55
@L39
  %.t36 =w copy 6
  %.t37 =w cnew %.t7, %.t36
  jnz %.t37, @L40, @L59
@L59
  jmp @L55
@L40
  %.t38 =w copy 8
  %.t39 =w cnew %.t7, %.t38
  jnz %.t39, @L41, @L60
@L60
  jmp @L55
@L41
  %.t40 =w copy 9
  %.t41 =w cnew %.t7, %.t40
  jnz %.t41, @L42, @L61
@L61
  jmp @L55
@L42
  %.t42 =w copy 10
  %.t43 =w cnew %.t7, %.t42
  jnz %.t43, @L43, @L62
@L62
  jmp @L55
@L43
  %.t44 =w copy 12
  %.t45 =w cnew %.t7, %.t44
  jnz %.t45, @L44, @L63
@L63
  jmp @L55
@L55
  %.t46 =w copy %x
  %.t47 =l copy $L21
  %.t48 =w call $printf(l %.t47, w %.t46, )
  jmp @L27
@L44
@L64
  %.t49 =w copy %x
  %.t50 =l copy $L22
  %.t51 =w call $printf(l %.t50, w %.t49, )
  jmp @L27
@L27
  %.t52 =w copy %x
  %x =w add %x, 1
  jmp @L24
@L25
  %.t53 =w copy 0
  %.ret =w copy %.t53
  jmp @L18
@L18
  ret %.ret
}
