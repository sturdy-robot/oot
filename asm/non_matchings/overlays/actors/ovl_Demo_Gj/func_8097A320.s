glabel func_8097A320
/* 019F0 8097A320 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 019F4 8097A324 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 019F8 8097A328 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 019FC 8097A32C 0C25E606 */  jal     func_80979818              
/* 01A00 8097A330 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01A04 8097A334 10400009 */  beq     $v0, $zero, .L8097A35C     
/* 01A08 8097A338 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01A0C 8097A33C 0C25E618 */  jal     func_80979860              
/* 01A10 8097A340 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01A14 8097A344 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01A18 8097A348 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 01A1C 8097A34C 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 01A20 8097A350 ADEE0164 */  sw      $t6, 0x0164($t7)           ## 00000164
/* 01A24 8097A354 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 01A28 8097A358 AF380168 */  sw      $t8, 0x0168($t9)           ## 00000168
.L8097A35C:
/* 01A2C 8097A35C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A30 8097A360 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A34 8097A364 03E00008 */  jr      $ra                        
/* 01A38 8097A368 00000000 */  nop

