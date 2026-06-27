cd "C:/Users/hp/Desktop/DMAC"
quit -sim
cd "C:/Users/hp/Desktop/DMAC"
vmap osvvm "C:/Users/hp/Desktop/DMAC&test/osvvm_library/osvvm"
vlib work
vmap work work
vcom -2008 dma_fifo.vhd
vcom -2008 dma_fsm.vhd
vcom -2008 DMAC.vhd
vcom -2008 DMAC_tb.vhd
vsim -L osvvm work.DMAC_tb 
add wave -recursive *
run 20 us

