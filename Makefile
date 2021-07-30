####################################

#Makefile
#Authors: Anirban Chowdhury,
#	  Sharad Saha
#Copyright(c),2021,Anirban Chowdhury 

####################################

target=DARKnes
main=src/main.c
<<<<<<< HEAD
drivers:=$(wildcard src/drivers/*.c)
obj=$(drivers:.c=.o) 


all default :$(target)

$(target):$(obj) $(main)
	gcc $^ -Iinc -o $@

$(obj):$(drivers) #put rest of ingredients 1 line and at most 1 alias#no explicit filenames
	gcc $(drivers) -Iinc -c
	mv *.o src/drivers/
	

clean:
	rm -f src/drivers/*o $(target)
=======
DRIVERS_DIR=src/drivers
INCLUDE=inc
INC_FLAG=-I
drivers=$(wildcard src/drivers/*.c)
objfiles=$(drivers:.c=.o) 

all default: $(target) 

$(target):$(objfiles) $(main)
	gcc -o $@ $^ $(INC_FLAG) $(INCLUDE)

%.o: %.c
	gcc -c $^ $(INC_FLAG) $(INCLUDE) -o $@
	
clean:
	rm -f $(objfiles) $(target)
>>>>>>> experimental
