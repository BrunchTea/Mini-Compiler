export data $str = align 8 { l 0, }
export data $x = align 4 { w 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 37, b 100, b 10,  b 0 }
data $L5 = { b 37, b 100, b 10,  b 0 }
data $L6 = { b 37, b 100, b 10,  b 0 }
data $L7 = { b 37, b 100, b 10,  b 0 }
data $L8 = { b 37, b 100, b 10,  b 0 }
data $L9 = { b 37, b 100, b 10,  b 0 }
data $L10 = { b 37, b 100, b 10,  b 0 }
data $L11 = { b 72, b 101, b 108, b 108, b 111, b 32, b 119, b 111, b 114, b 108, b 100, b 10,  b 0 }
data $L12 = { b 37, b 99,  b 0 }
export function w $main() {
@L13
  %.t1 =w copy -23
  storew %.t1, $x
  %.t2 =w loadsw $x
  %.t3 =l copy $L3
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %.t5 =w copy 100
  %.t6 =l copy $L4
  %.t7 =w call $printf(l %.t6, w %.t5, )
  %.t8 =w copy 1
  storew %.t8, $x
  %.t9 =w loadsw $x
  %.t9 =w xor %.t9, -1
  storew %.t9, $x
  %.t10 =w loadsw $x
  %.t11 =l copy $L5
  %.t12 =w call $printf(l %.t11, w %.t10, )
  %.t13 =w copy 2
  %.t14 =w copy 5
  %.t15 =w csgtw %.t13, %.t14
  storew %.t15, $x
  %.t16 =w loadsw $x
  %.t17 =l copy $L6
  %.t18 =w call $printf(l %.t17, w %.t16, )
  %.t19 =w loadsw $x
  %.t19 =w ceqw %.t19, 0
  storew %.t19, $x
  %.t20 =w loadsw $x
  %.t21 =l copy $L7
  %.t22 =w call $printf(l %.t21, w %.t20, )
  %.t23 =w loadsw $x
  %.t23 =w ceqw %.t23, 0
  storew %.t23, $x
  %.t24 =w loadsw $x
  %.t25 =l copy $L8
  %.t26 =w call $printf(l %.t25, w %.t24, )
  %.t27 =w copy 13
  storew %.t27, $x
  %.t28 =w loadsw $x
  %.t29 =l cnew %.t28, 0
  jnz %.t29, @L15, @L14
@L15
  %.t30 =w copy 1
  %.t31 =w cnew %.t29, %.t30
  jnz %.t31, @L14, @L16
@L16
  %.t32 =w copy 13
  %.t33 =l copy $L9
  %.t34 =w call $printf(l %.t33, w %.t32, )
@L14
  %.t35 =w copy 0
  storew %.t35, $x
  %.t36 =w loadsw $x
  %.t36 =w ceqw %.t36, 0
  %.t37 =l cnew %.t36, 0
  jnz %.t37, @L18, @L17
@L18
  %.t38 =w copy 1
  %.t39 =w cnew %.t37, %.t38
  jnz %.t39, @L17, @L19
@L19
  %.t40 =w copy 14
  %.t41 =l copy $L10
  %.t42 =w call $printf(l %.t41, w %.t40, )
@L17
  %.t43 =l copy $L11
  storel %.t43, $str
@L20
  %.t44 =l loadl $str
  %.t45 =w loadub %.t44
  %.t46 =l cnew %.t45, 0
  jnz %.t46, @L22, @L21
@L22
  %.t47 =w copy 1
  %.t48 =w cnew %.t46, %.t47
  jnz %.t48, @L21, @L23
@L23
  %.t49 =l loadl $str
  %.t50 =w loadub %.t49
  %.t51 =l copy $L12
  %.t52 =w call $printf(l %.t51, w %.t50, )
  %.t53 =l loadl $str
  %.t54 =l loadl $str
  %.t54 =l add %.t54, 1
  storel %.t54, $str
  jmp @L20
@L21
  %.t55 =w copy 0
  %.ret =w copy %.t55
  jmp @L2
@L2
  ret %.ret
}
