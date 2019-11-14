sha1.so:
	gcc -fPIC -Wall -shared sha1.c -o sha1.so -lm

.PHONY: clean
clean:
	rm -f sha1.so

.PHONY: indent
indent:
	indent -nbad -bap -nbc -bbo -hnl -br -brs -c33 -cd33 -ncdb -ce -ci4 -cli0 -d0 -di1 -nfc1 -i8 -ip0 -l80 -lp -npcs -nprs -npsl -sai -saf -saw -ncs -nsc -sob -nfca -cp33 -ss -ts8 -il1 sha1.c
    
.PHONY: tests
tests: sha1.so
	@sqlite3 -line :memory: '.read tests.sql'
