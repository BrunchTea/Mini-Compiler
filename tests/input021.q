export data $c = align 1 { b 0, }
export data $str = align 8 { l 0, }
data $L3 = { b 37, b 100, b 10,  b 0 }
data $L4 = { b 72, b 101, b 108, b 108, b 111, b 32, b 119, b 111, b 114, b 108, b 100, b 10,  b 0 }
data $L5 = { b 37, b 99,  b 0 }
export function w $main() {
@L6
  %.t1 =w copy 10
  storeb %.t1, $c
  %.t2 =w loadub $c
  %.t3 =l copy $L3
  %.t4 =w call $printf(l %.t3, w %.t2, )
  %.t5 =l copy $L4
  storel %.t5, $str
@L7
  %.t6 =l loadl $str
  %.t7 =w loadub %.t6
  %.t8 =w copy 0
  %.t9 =w cnew %.t7, %.t8
  %.t10 =w copy 1
  %.t11 =w cnew %.t9, %.t10
  jnz %.t11, @L8, @L9
@L9
  %.t12 =l loadl $str
  %.t13 =w loadub %.t12
  %.t14 =l copy $L5
  %.t15 =w call $printf(l %.t14, w %.t13, )
  %.t16 =l loadl $str
  %.t17 =l copy 1
  %.t16 =l add %.t16, %.t17
  storel %.t16, $str
  jmp @L7
@L8
  %.t18 =w copy 0
  %.ret =w copy %.t18
  jmp @L2
@L2
  ret %.ret
}
