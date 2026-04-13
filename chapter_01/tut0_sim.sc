
/*Produced by NSL Core(version=20250428), IP ARCH, Inc. Mon Apr 13 19:24:14 2026
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/
#include <systemc.h>
#include "tut0.sc"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
template<typename T> int _nsl_readmem(T array[], const char *file, int start, int end, int sft) ;
sc_clock m_clock("m_clock",10, SC_NS, 0.5,0, SC_NS, false);
sc_signal<bool> p_reset;

tut0 tut0("tut0");

static int ctrl_clock=0;
SC_MODULE (c_clock) {
	sc_in<bool> m_clock;
	void do_reset() {
		ctrl_clock++;
		if(ctrl_clock<2) p_reset=1;
		else p_reset=0;
	}
	SC_CTOR(c_clock) {
		SC_METHOD(do_reset);
		sensitive << m_clock.pos();
	}
};

int sc_main(int argc, char *argv[])
{
	int stop;
	if(argc<2 || (stop=atoi(argv[1]))<=0) stop=1000000;
	sc_trace_file *tf = sc_create_vcd_trace_file("tut0");
	tf->set_time_unit(1, SC_NS);
	c_clock cclk("cclk");
	cclk.m_clock(m_clock);
	tut0.p_reset(p_reset);
	tut0.m_clock(m_clock);
	sc_start(stop, SC_NS);
	sc_close_vcd_trace_file(tf);
	return 0;
}

void _nsl_hook(const char *file, int line, int attrib, const char *name) {}

template<typename T> int _nsl_readmem(T array[], const char *file, int start, int end, int sft) {
	FILE *txt;
	uint64_t addr,data;
	int i,bit,c,lastch,incomm;
	if((txt=fopen(file,"r"))==NULL) {
		fprintf(stderr,"Could not open file %s\n",file);		return(1);
	}
	addr = start;
	data =  0;
	lastch=0;
	incomm=0;
	while((c=fgetc(txt))!=EOF) {
		unsigned int ch;
		if(incomm) {
			if(c=='\n') incomm=0;
			continue;
		}
		if(c=='#') {incomm++; continue;}
		if(c=='_' || c=='\r' ) continue;
		if(!lastch && (c==' ' || c=='\t' || c=='\n') ) continue;
		lastch=c;
		ch = c - 97;
		if(sft==4 && ch<6) {
			data=(data << sft);
			data = (data + ch + 10);
		}
		else if(sft==4 && ch+32 < 6) {
			data=(data << sft);
			data = (data + ch + 32 + 10);
		}
		else if(sft==4 && ch+49 < 10) {
			data=(data << sft);
			data = (data + ch + 49);
		}
		else if(sft==1 && ch+49 < 2) {
			data=(data << sft);
			data = (data + ch + 49);
		}
		else {
			array[addr] =  data;
			addr++;
			if(addr>end) break;
			lastch=0;
			data=0;
			continue;
		}
	}
	fclose(txt);
	return 0;
}
