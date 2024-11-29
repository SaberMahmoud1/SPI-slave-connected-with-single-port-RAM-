vlib work

vlog SPI_RAM.v SPI_RAM_TB.v

vsim -voptargs=+acc work.SPI_RAM_tb

add wave *