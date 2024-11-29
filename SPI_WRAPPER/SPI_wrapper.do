vlib work

vlog SPI_wrapper.v SPI_wrapper_tb.v SPI_RAM.v SPI_slave.v

vsim -voptargs=+acc work.SPI_wrapper_tb

add wave *