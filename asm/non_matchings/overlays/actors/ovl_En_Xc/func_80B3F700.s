glabel func_80B3F700
/* 03520 80B3F700 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03524 80B3F704 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03528 80B3F708 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0352C 80B3F70C 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 03530 80B3F710 0C2CF13C */  jal     func_80B3C4F0              
/* 03534 80B3F714 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 03538 80B3F718 1040000A */  beq     $v0, $zero, .L80B3F744     
/* 0353C 80B3F71C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 03540 80B3F720 3C050602 */  lui     $a1, 0x0602                ## $a1 = 06020000
/* 03544 80B3F724 24A59C30 */  addiu   $a1, $a1, 0x9C30           ## $a1 = 06019C30
/* 03548 80B3F728 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0354C 80B3F72C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 03550 80B3F730 0C2CF1C0 */  jal     func_80B3C700              
/* 03554 80B3F734 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 03558 80B3F738 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 0355C 80B3F73C 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 03560 80B3F740 ADEE0260 */  sw      $t6, 0x0260($t7)           ## 00000260
.L80B3F744:
/* 03564 80B3F744 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03568 80B3F748 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0356C 80B3F74C 03E00008 */  jr      $ra                        
/* 03570 80B3F750 00000000 */  nop

