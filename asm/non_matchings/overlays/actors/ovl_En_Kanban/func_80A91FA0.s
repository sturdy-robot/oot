glabel func_80A91FA0
/* 00000 80A91FA0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80A91FA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00008 80A91FA8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0000C 80A91FAC 8C820078 */  lw      $v0, 0x0078($a0)           ## 00000078
/* 00010 80A91FB0 50400026 */  beql    $v0, $zero, .L80A9204C     
/* 00014 80A91FB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00018 80A91FB8 844F0008 */  lh      $t7, 0x0008($v0)           ## 00000008
/* 0001C 80A91FBC 3C0180A9 */  lui     $at, %hi(D_80A950C4)       ## $at = 80A90000
/* 00020 80A91FC0 C42250C4 */  lwc1    $f2, %lo(D_80A950C4)($at)  
/* 00024 80A91FC4 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00028 80A91FC8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0002C 80A91FCC 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 00030 80A91FD0 468021A0 */  cvt.s.w $f6, $f4                   
/* 00034 80A91FD4 46023202 */  mul.s   $f8, $f6, $f2              
/* 00038 80A91FD8 E7A8001C */  swc1    $f8, 0x001C($sp)           
/* 0003C 80A91FDC 8458000A */  lh      $t8, 0x000A($v0)           ## 0000000A
/* 00040 80A91FE0 8459000C */  lh      $t9, 0x000C($v0)           ## 0000000C
/* 00044 80A91FE4 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 00048 80A91FE8 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 0004C 80A91FEC 468054A0 */  cvt.s.w $f18, $f10                 
/* 00050 80A91FF0 468021A0 */  cvt.s.w $f6, $f4                   
/* 00054 80A91FF4 46029402 */  mul.s   $f16, $f18, $f2            
/* 00058 80A91FF8 00000000 */  nop
/* 0005C 80A91FFC 46023002 */  mul.s   $f0, $f6, $f2              
/* 00060 80A92000 E7B00018 */  swc1    $f16, 0x0018($sp)          
/* 00064 80A92004 46000207 */  neg.s   $f8, $f0                   
/* 00068 80A92008 46104302 */  mul.s   $f12, $f8, $f16            
/* 0006C 80A9200C 0C03F494 */  jal     func_800FD250              
/* 00070 80A92010 00000000 */  nop
/* 00074 80A92014 8FA80020 */  lw      $t0, 0x0020($sp)           
/* 00078 80A92018 46000287 */  neg.s   $f10, $f0                  
/* 0007C 80A9201C C7B00018 */  lwc1    $f16, 0x0018($sp)          
/* 00080 80A92020 E50A0188 */  swc1    $f10, 0x0188($t0)          ## 00000188
/* 00084 80A92024 C7B2001C */  lwc1    $f18, 0x001C($sp)          
/* 00088 80A92028 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0008C 80A9202C 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 00090 80A92030 46009107 */  neg.s   $f4, $f18                  
/* 00094 80A92034 46102302 */  mul.s   $f12, $f4, $f16            
/* 00098 80A92038 0C03F494 */  jal     func_800FD250              
/* 0009C 80A9203C 00000000 */  nop
/* 000A0 80A92040 8FA90020 */  lw      $t1, 0x0020($sp)           
/* 000A4 80A92044 E5200190 */  swc1    $f0, 0x0190($t1)           ## 00000190
/* 000A8 80A92048 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9204C:
/* 000AC 80A9204C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 000B0 80A92050 03E00008 */  jr      $ra                        
/* 000B4 80A92054 00000000 */  nop

