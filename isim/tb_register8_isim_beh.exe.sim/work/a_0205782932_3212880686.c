/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Projects/counter/CounterApp/src/register8.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0205782932_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;

LAB0:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3472);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t4 = (t0 + 5730);
    t10 = xsi_mem_cmp(t4, t8, 3U);
    if (t10 == 1)
        goto LAB9;

LAB14:    t11 = (t0 + 5733);
    t13 = xsi_mem_cmp(t11, t8, 3U);
    if (t13 == 1)
        goto LAB10;

LAB15:    t14 = (t0 + 5736);
    t16 = xsi_mem_cmp(t14, t8, 3U);
    if (t16 == 1)
        goto LAB11;

LAB16:    t17 = (t0 + 5739);
    t19 = xsi_mem_cmp(t17, t8, 3U);
    if (t19 == 1)
        goto LAB12;

LAB17:
LAB13:
LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(60, ng0);
    t20 = (t0 + 5742);
    xsi_report(t20, 4U, 0);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 5746);
    t5 = (t0 + 3552);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 16U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB8;

LAB10:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 5762);
    xsi_report(t2, 5U, 0);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 3552);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB11:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 5767);
    xsi_report(t2, 6U, 0);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 3616);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 3552);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB12:    goto LAB8;

LAB18:;
}


extern void work_a_0205782932_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0205782932_3212880686_p_0};
	xsi_register_didat("work_a_0205782932_3212880686", "isim/tb_register8_isim_beh.exe.sim/work/a_0205782932_3212880686.didat");
	xsi_register_executes(pe);
}
