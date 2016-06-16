PROGRAM EJEMPLO1;
USES CRT;
VAR  FIL, COL : BYTE;
     TECLA    : CHAR;
     DIRECCION: CHAR;
     LARGO : INTEGER;
     ALF,ALC : BYTE;
     L : ARRAY[1..20,1..70] OF INTEGER;
PROCEDURE MARCO;
BEGIN
 WRITELN('00000000000000000000000000000000000000000000000000000000000000');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('0                                                            0');
 WRITELN('00000000000000000000000000000000000000000000000000000000000000');

 END;
PROCEDURE ALIMENTO  ;
 BEGIN
   ALF:=10 ;
   ALC:=10 ;
   gotoxy(10,10); WRITELN('A');
 END;
PROCEDURE ENGORDA;
 BEGIN
  IF (COL=ALC) AND (FIL=ALF) THEN
   LARGO := LARGO + 1
 END;
BEGIN
    CLRSCR;
    ALIMENTO;
    MARCO;
    FIL       := 20;
    COL       := 40;
    DIRECCION := ' ';
    REPEAT
         REPEAT
         LARGO:=1;
         ALIMENTO;
         ENGORDA;
              GOTOXY(COL, FIL); WRITE(0);
              DELAY(100);
              GOTOXY(COL, FIL); WRITE(' ');

              CASE DIRECCION OF
                   'N' : FIL := FIL - 1;
                   'E' : COL := COL + 1;
                   'S' : FIL := FIL + 1;
                   'O' : COL := COL - 1;
              END;
         UNTIL KEYPRESSED;
         TECLA := READKEY;
         IF ORD(TECLA) = 0
            THEN BEGIN
                     TECLA := READKEY;
                     CASE ORD(TECLA) OF
                          72 : DIRECCION := 'N';
                          77 : DIRECCION := 'E';
                          80 : DIRECCION := 'S';
                          75 : DIRECCION := 'O';
                     END;
                 END;
    UNTIL ORD(TECLA) = 27  ;
END.
