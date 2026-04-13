
/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Mon Apr 13 19:24:14 2026
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/
#ifndef tut0_H
#define tut0_H
#include <systemc.h>
template<typename T> int _nsl_readmem(T array[], const char *file, int start, int end, int sft) ;

SC_MODULE( tut0 ) {
sc_in <bool>  p_reset;
sc_in <bool>  m_clock;

void _sc_method__net_0() ;
void _sc_method__net_1() ;
    SC_CTOR( tut0 )
 : 
  p_reset("p_reset"),
  m_clock("m_clock")
     {
    SC_METHOD( _sc_method__net_0 ) ;
    sensitive << m_clock.pos();
    SC_METHOD( _sc_method__net_1 ) ;
    sensitive << m_clock.pos();
};
};
void tut0::_sc_method__net_0() {
if ((sc_uint<1>)1ul) {
      printf("Hello World" );
        printf("\n");}
}
void tut0::_sc_method__net_1() {
if ((sc_uint<1>)1ul) 
sc_stop();
}
/*
 Produced by NSL Core(version=20250428), IP ARCH, Inc. Mon Apr 13 19:24:14 2026
 Licensed to :EVALUATION USER
*/
#endif
