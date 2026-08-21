# made by Yoshii
# 21/8/2026
# Compile and simulate the NSL.
# Compile -> make wave form -> display


.PHONY: kill-wave clean

%: %.nsl
        nsl2vl $< -verisim2 -target $@
        iverilog -o $@.vvp $@.v
        vvp $@.vvp
        gtkwave $@.vcd &

kill-wave:
        -taskkill /F /IM gtkwave.exe

clean:
        rm -f *.v *.vvp *.sc *.vcd

