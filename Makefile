sha1.so:
	gcc -fPIC -Wall -shared sha1.c -o sha1.so -lm

.PHONY: clean
clean:
	rm -f sha1.so

.PHONY: tests
tests: sha1.so
	@sqlite3 -line :memory: '.read tests.sql'
