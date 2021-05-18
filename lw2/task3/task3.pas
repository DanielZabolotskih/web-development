PROGRAM HelloUser(INPUT, OUTPUT);
USES
  DOS;
VAR
  Str: STRING;
BEGIN{HelloUser}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Str := GetEnv('QUERY_STRING');
  IF (Str <> '') AND (POS('name=', Str) <> 0)
  THEN
    BEGIN
      WRITE('Hello dear, ');
      IF POS('?', Str) <> 0
      THEN
        WRITELN(COPY(Str, POS('=', Str) + 1, POS('?', Str) - POS('=', Str) - 1))
      ELSE
        WRITELN(COPY(Str, POS('=', Str) +1, LENGTH(Str) - POS('=', Str)))
    END
  ELSE
    WRITELN('Hello Anonymus!')
END.{HelloUser}