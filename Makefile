obj-m := udp_packet.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	
install:
	sudo insmod udp_packet.ko

uninstall:
	sudo rmmod udp_packet