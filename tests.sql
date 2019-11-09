.load ./sha1.so
CREATE TABLE tests (input TEXT, sha1 TEXT);
INSERT INTO tests VALUES 
	("abc", "a9993e364706816aba3e25717850c26c9cd0d89d"),
	("foo", "0beec7b5ea3f0fdbc95d0dd47f3c5bc275da8a33");

SELECT input, HEX(SHA1(input, true)), UPPER(sha1) FROM tests WHERE HEX(SHA1(input, true)) != UPPER(sha1);
SELECT input, SHA1(input), sha1 FROM tests WHERE SHA1(input) != sha1;
