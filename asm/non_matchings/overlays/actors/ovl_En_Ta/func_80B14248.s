glabel func_80B14248
/* 007A8 80B14248 3C014210 */  lui     $at, 0x4210                ## $at = 42100000
/* 007AC 80B1424C 44812000 */  mtc1    $at, $f4                   ## $f4 = 36.00
/* 007B0 80B14250 C48000C4 */  lwc1    $f0, 0x00C4($a0)           ## 000000C4
/* 007B4 80B14254 3C0180B1 */  lui     $at, %hi(D_80B16F4C)       ## $at = 80B10000
/* 007B8 80B14258 4600203C */  c.lt.s  $f4, $f0                   
/* 007BC 80B1425C 00000000 */  nop
/* 007C0 80B14260 45000004 */  bc1f    .L80B14274                 
/* 007C4 80B14264 00000000 */  nop
/* 007C8 80B14268 C4266F4C */  lwc1    $f6, %lo(D_80B16F4C)($at)  
/* 007CC 80B1426C 46060201 */  sub.s   $f8, $f0, $f6              
/* 007D0 80B14270 E48800C4 */  swc1    $f8, 0x00C4($a0)           ## 000000C4
.L80B14274:
/* 007D4 80B14274 03E00008 */  jr      $ra                        
/* 007D8 80B14278 00000000 */  nop

