glabel func_80B4EC48
/* 002B8 80B4EC48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002BC 80B4EC4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002C0 80B4EC50 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 002C4 80B4EC54 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 002C8 80B4EC58 C484027C */  lwc1    $f4, 0x027C($a0)           ## 0000027C
/* 002CC 80B4EC5C 24820190 */  addiu   $v0, $a0, 0x0190           ## $v0 = 00000190
/* 002D0 80B4EC60 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 002D4 80B4EC64 4606203C */  c.lt.s  $f4, $f6                   
/* 002D8 80B4EC68 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 002DC 80B4EC6C 2483027C */  addiu   $v1, $a0, 0x027C           ## $v1 = 0000027C
/* 002E0 80B4EC70 45020005 */  bc1fl   .L80B4EC88                 
/* 002E4 80B4EC74 C4680000 */  lwc1    $f8, 0x0000($v1)           ## 0000027C
/* 002E8 80B4EC78 A44E0000 */  sh      $t6, 0x0000($v0)           ## 00000190
/* 002EC 80B4EC7C 1000000F */  beq     $zero, $zero, .L80B4ECBC   
/* 002F0 80B4EC80 2483027C */  addiu   $v1, $a0, 0x027C           ## $v1 = 0000027C
/* 002F4 80B4EC84 C4680000 */  lwc1    $f8, 0x0000($v1)           ## 0000027C
.L80B4EC88:
/* 002F8 80B4EC88 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 002FC 80B4EC8C 24820190 */  addiu   $v0, $a0, 0x0190           ## $v0 = 00000190
/* 00300 80B4EC90 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00304 80B4EC94 460A403C */  c.lt.s  $f8, $f10                  
/* 00308 80B4EC98 00000000 */  nop
/* 0030C 80B4EC9C 45000003 */  bc1f    .L80B4ECAC                 
/* 00310 80B4ECA0 00000000 */  nop
/* 00314 80B4ECA4 10000005 */  beq     $zero, $zero, .L80B4ECBC   
/* 00318 80B4ECA8 A44F0000 */  sh      $t7, 0x0000($v0)           ## 00000190
.L80B4ECAC:
/* 0031C 80B4ECAC 0C2D3A6C */  jal     func_80B4E9B0              
/* 00320 80B4ECB0 00000000 */  nop
/* 00324 80B4ECB4 10000009 */  beq     $zero, $zero, .L80B4ECDC   
/* 00328 80B4ECB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B4ECBC:
/* 0032C 80B4ECBC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00330 80B4ECC0 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 00334 80B4ECC4 C4700000 */  lwc1    $f16, 0x0000($v1)          ## 00000000
/* 00338 80B4ECC8 46128100 */  add.s   $f4, $f16, $f18            
/* 0033C 80B4ECCC E4640000 */  swc1    $f4, 0x0000($v1)           ## 00000000
/* 00340 80B4ECD0 84580000 */  lh      $t8, 0x0000($v0)           ## 00000000
/* 00344 80B4ECD4 A4980194 */  sh      $t8, 0x0194($a0)           ## 00000194
/* 00348 80B4ECD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B4ECDC:
/* 0034C 80B4ECDC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00350 80B4ECE0 03E00008 */  jr      $ra                        
/* 00354 80B4ECE4 00000000 */  nop

