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
data $L9 = { b 37, b 100, b 10,  b 0 }
export function   $fred() {
@L10
  %.t12 =w copy 12
  %a =w copy %.t12
  %.t13 =w copy 3
  %.t14 =w copy %a
  %.t13 =w mul %.t13, %.t14
  %b =w copy %.t13
  %.t15 =w copy %a
  %.t16 =w copy %b
  %.t17 =w csgew %.t15, %.t16
  %.t18 =w copy 1
  %.t19 =w cnew %.t17, %.t18
  jnz %.t19, @L11, @L12
@L12
  %.t20 =w copy 2
  %.t21 =w extub %.t20
  %.t22 =w copy %b
  %.t21 =w mul %.t21, %.t22
  %.t23 =w copy %a
  %.t21 =w sub %.t21, %.t23
  %.t24 =l copy $L9
  %.t25 =w call $printf(l %.t24, w %.t21, )
@L11
@L8
  ret
}
