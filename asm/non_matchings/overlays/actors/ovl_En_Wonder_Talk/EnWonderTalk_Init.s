glabel EnWonderTalk_Init
/* 0000C 80B390FC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00010 80B39100 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00014 80B39104 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80B39108 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0001C 80B3910C 3C0480B4 */  lui     $a0, %hi(D_80B39970)       ## $a0 = 80B40000
/* 00020 80B39110 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00024 80B39114 0C00084C */  jal     osSyncPrintf
              
/* 00028 80B39118 24849970 */  addiu   $a0, $a0, %lo(D_80B39970)  ## $a0 = 80B39970
/* 0002C 80B3911C 3C0480B4 */  lui     $a0, %hi(D_80B39974)       ## $a0 = 80B40000
/* 00030 80B39120 24849974 */  addiu   $a0, $a0, %lo(D_80B39974)  ## $a0 = 80B39974
/* 00034 80B39124 0C00084C */  jal     osSyncPrintf
              
/* 00038 80B39128 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 0003C 80B3912C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00040 80B39130 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 00044 80B39134 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00048 80B39138 3048003F */  andi    $t0, $v0, 0x003F           ## $t0 = 00000000
/* 0004C 80B3913C A6080154 */  sh      $t0, 0x0154($s0)           ## 00000154
/* 00050 80B39140 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 00054 80B39144 000272C3 */  sra     $t6, $v0, 11               
/* 00058 80B39148 0002C183 */  sra     $t8, $v0,  6               
/* 0005C 80B3914C 31CF001F */  andi    $t7, $t6, 0x001F           ## $t7 = 00000000
/* 00060 80B39150 3319001F */  andi    $t9, $t8, 0x001F           ## $t9 = 00000000
/* 00064 80B39154 A60F0150 */  sh      $t7, 0x0150($s0)           ## 00000150
/* 00068 80B39158 14A10004 */  bne     $a1, $at, .L80B3916C       
/* 0006C 80B3915C A6190152 */  sh      $t9, 0x0152($s0)           ## 00000152
/* 00070 80B39160 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 00074 80B39164 A6090154 */  sh      $t1, 0x0154($s0)           ## 00000154
/* 00078 80B39168 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
.L80B3916C:
/* 0007C 80B3916C 04A0000C */  bltz    $a1, .L80B391A0            
/* 00080 80B39170 A20A001F */  sb      $t2, 0x001F($s0)           ## 0000001F
/* 00084 80B39174 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00088 80B39178 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0008C 80B3917C 10400008 */  beq     $v0, $zero, .L80B391A0     
/* 00090 80B39180 3C0480B4 */  lui     $a0, %hi(D_80B399A4)       ## $a0 = 80B40000
/* 00094 80B39184 248499A4 */  addiu   $a0, $a0, %lo(D_80B399A4)  ## $a0 = 80B399A4
/* 00098 80B39188 0C00084C */  jal     osSyncPrintf
              
/* 0009C 80B3918C 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 000A0 80B39190 0C00B55C */  jal     Actor_Kill
              
/* 000A4 80B39194 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000A8 80B39198 10000008 */  beq     $zero, $zero, .L80B391BC   
/* 000AC 80B3919C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B391A0:
/* 000B0 80B391A0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 000B4 80B391A4 44812000 */  mtc1    $at, $f4                   ## $f4 = 40.00
/* 000B8 80B391A8 3C0B80B4 */  lui     $t3, %hi(func_80B391CC)    ## $t3 = 80B40000
/* 000BC 80B391AC 256B91CC */  addiu   $t3, $t3, %lo(func_80B391CC) ## $t3 = 80B391CC
/* 000C0 80B391B0 AE0B014C */  sw      $t3, 0x014C($s0)           ## 0000014C
/* 000C4 80B391B4 E604015C */  swc1    $f4, 0x015C($s0)           ## 0000015C
/* 000C8 80B391B8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B391BC:
/* 000CC 80B391BC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000D0 80B391C0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 000D4 80B391C4 03E00008 */  jr      $ra                        
/* 000D8 80B391C8 00000000 */  nop

