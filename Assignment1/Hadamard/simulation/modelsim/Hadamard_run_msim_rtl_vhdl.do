transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/media/carlos/Windows-SSD/Users/carlo/Documents/GitHub/AAD_2022/Hadamard/arithmetic.vhd}
vcom -93 -work work {/media/carlos/Windows-SSD/Users/carlo/Documents/GitHub/AAD_2022/Hadamard/simpleLogic.vhd}
vcom -93 -work work {/media/carlos/Windows-SSD/Users/carlo/Documents/GitHub/AAD_2022/Hadamard/Encoder.vhd}
vcom -93 -work work {/media/carlos/Windows-SSD/Users/carlo/Documents/GitHub/AAD_2022/Hadamard/Decoder.vhd}
vcom -93 -work work {/media/carlos/Windows-SSD/Users/carlo/Documents/GitHub/AAD_2022/Hadamard/popCounter_8bitParallelOpt.vhd}

