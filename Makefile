
all: flex gcc
	@echo "Done."

flex: trab1.l
	flex trab1.l

gcc: trab1.c
	gcc trab1.c -o trab1

clean:
	@rm -f trab1.c
