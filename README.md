# sqlite3-sha1-extended
Extension of sha1 function for SQLite3 to add raw mode.

## Installation

You need the C header `sqlite3ext.h` sqlite3 package, for Ubuntu, it's:

```bash
sudo apt install libsqlite3-dev
```

Make the `sha1.so` with :

```bash
make
```

Loading in SQLite3 shell:

```
sqlite3 -cmd ".load ./sha1"
```

## Exemple

```sql
SELECT HEX(SHA1("tutu"+"toto", true)), UPPER(SHA1("tutu"+"toto"));
```

will return:

```
B6589FC6AB0DC82CF12099D1C2D40AB994E8410C|B6589FC6AB0DC82CF12099D1C2D40AB994E8410C
```

## Tests

You can lauch:

```bash
make tests
```
