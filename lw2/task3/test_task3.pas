PROGRAM HelloUser(INPUT, OUTPUT);
USES
  DOS;
VAR
  Stri: STRING;
BEGIN{HelloUSer}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Stri := GetEnv('QUERY_STRING');
  IF (Stri <> '') AND (POS('name=', Stri) <> 0)
  THEN
    BEGIN
      WRITE('Hello dear, ');
      IF POS('?', Stri) <> 0
      THEN
        WRITELN(COPY(Stri, POS('=', Stri) + 1, POS('?', Stri) - POS('=', Stri)-1))
      ELSE
        WRITELN(COPY(Stri, POS('=', Stri)+1, LENGTH(Stri) - POS('=', Stri)))
    END
  ELSE
    WRITELN('Hello Anonymus!')
END.{HelloUser}