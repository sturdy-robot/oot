glabel func_80978AFC
/* 001CC 80978AFC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 001D0 80978B00 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 001D4 80978B04 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 001D8 80978B08 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 001DC 80978B0C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 001E0 80978B10 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 001E4 80978B14 E7AC0038 */  swc1    $f12, 0x0038($sp)          
/* 001E8 80978B18 3C018098 */  lui     $at, %hi(D_8097C19C)       ## $at = 80980000
/* 001EC 80978B1C C424C19C */  lwc1    $f4, %lo(D_8097C19C)($at)  
/* 001F0 80978B20 C7AC0038 */  lwc1    $f12, 0x0038($sp)          
/* 001F4 80978B24 3C0E8098 */  lui     $t6, %hi(D_8097BE7C)       ## $t6 = 80980000
/* 001F8 80978B28 3C0F8098 */  lui     $t7, %hi(D_8097BE80)       ## $t7 = 80980000
/* 001FC 80978B2C 46046182 */  mul.s   $f6, $f12, $f4             
/* 00200 80978B30 25EFBE80 */  addiu   $t7, $t7, %lo(D_8097BE80)  ## $t7 = 8097BE80
/* 00204 80978B34 25CEBE7C */  addiu   $t6, $t6, %lo(D_8097BE7C)  ## $t6 = 8097BE7C
/* 00208 80978B38 3C068098 */  lui     $a2, %hi(D_8097BE64)       ## $a2 = 80980000
/* 0020C 80978B3C 3C078098 */  lui     $a3, %hi(D_8097BE70)       ## $a3 = 80980000
/* 00210 80978B40 2408000F */  addiu   $t0, $zero, 0x000F         ## $t0 = 0000000F
/* 00214 80978B44 2409005A */  addiu   $t1, $zero, 0x005A         ## $t1 = 0000005A
/* 00218 80978B48 46060202 */  mul.s   $f8, $f0, $f6              
/* 0021C 80978B4C AFA90020 */  sw      $t1, 0x0020($sp)           
/* 00220 80978B50 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 00224 80978B54 24E7BE70 */  addiu   $a3, $a3, %lo(D_8097BE70)  ## $a3 = 8097BE70
/* 00228 80978B58 24C6BE64 */  addiu   $a2, $a2, %lo(D_8097BE64)  ## $a2 = 8097BE64
/* 0022C 80978B5C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00230 80978B60 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00234 80978B64 460C4280 */  add.s   $f10, $f8, $f12            
/* 00238 80978B68 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 0023C 80978B6C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00240 80978B70 4600540D */  trunc.w.s $f16, $f10                 
/* 00244 80978B74 44198000 */  mfc1    $t9, $f16                  
/* 00248 80978B78 0C00A0F5 */  jal     func_800283D4              
/* 0024C 80978B7C AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00250 80978B80 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00254 80978B84 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00258 80978B88 03E00008 */  jr      $ra                        
/* 0025C 80978B8C 00000000 */  nop

