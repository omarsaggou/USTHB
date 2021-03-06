-- Table Wilaya --
DECLARE
v char(10);
i NUMBER;
BEGIN
    FOR i IN 1..48 LOOP
        SELECT DBMS_RANDOM.STRING('U', 8) INTO v FROM dual;
        INSERT INTO Wilaya VALUES(i, v);
    END LOOP;
    COMMIT;
END;
/

-- Table Ville --
DECLARE 
v CHAR(10);
w NUMBER;
i NUMBER;
BEGIN
    FOR i IN 1..330 LOOP
        SELECT DBMS_RANDOM.STRING('U', 8) INTO v FROM dual;
        SELECT FLOOR(DBMS_RANDOM.VALUE(1, 48.9)) INTO w FROM dual;
        INSERT INTO Ville VALUES(i, v, w);
    END LOOP;
    COMMIT;
END;
/

-- Table TypeCompte --
INSERT INTO Type_Compte VALUES(1, 'Epargne');
INSERT INTO Type_Compte VALUES(2, 'Courant');

-- Table Banque -- (A modifier apres)
INSERT INTO Banque VALUES(1, 'ALpha');
INSERT INTO Banque VALUES(2, 'Bravo');
INSERT INTO Banque VALUES(3, 'Charlie');
INSERT INTO Banque VALUES(4, 'Delta');
INSERT INTO Banque VALUES(5, 'Echo');
INSERT INTO Banque VALUES(6, 'Foxtrot');
INSERT INTO Banque VALUES(7, 'Golf');
INSERT INTO Banque VALUES(8, 'Hotel');
INSERT INTO Banque VALUES(9, 'India');
INSERT INTO Banque VALUES(10, 'Kilo');

-- Table Client --
DECLARE
d date;
n char(10);
a char(10);
t NUMBER;
i NUMBER;
BEGIN
    FOR i IN 1..100000 LOOP
        SELECT TO_DATE(TRUNC(DBMS_RANDOM.VALUE(TO_CHAR(DATE'1970-01-01','J'),TO_CHAR(DATE'1996-01-01','J'))),'J') INTO d FROM DUAL;
        SELECT DBMS_RANDOM.STRING('U', 8) INTO n FROM dual;
        SELECT DBMS_RANDOM.STRING('U', 8) INTO a FROM dual;
        SELECT FLOOR(DBMS_RANDOM.VALUE(1111111111, 9999999999.99)) INTO t FROM dual;
        INSERT INTO Client VALUES(i, n, a, t, d);
    END LOOP;
    COMMIT;
END;
/

-- Table Agence --
DECLARE
n char(10);
t NUMBER;
b NUMBER;
v NUMBER;
i NUMBER;
BEGIN
    FOR i IN 1..12300 LOOP
        SELECT DBMS_RANDOM.STRING('U', 8) INTO n FROM dual;
        SELECT FLOOR(DBMS_RANDOM.VALUE(1111111111, 9999999999.99)) INTO t FROM dual;
        SELECT FLOOR(DBMS_RANDOM.VALUE(1, 10.99)) INTO b FROM dual;
        SELECT FLOOR(DBMS_RANDOM.VALUE(1, 330.99)) INTO v FROM dual;
        INSERT INTO Agence VALUES(i, n, t, b, v);
    END LOOP;
    COMMIT;
END;
/


-- Table Compte --
DECLARE
d date;
c NUMBER;
a NUMBER;
t NUMBER;
i NUMBER;
BEGIN
    FOR i IN 1..200000 LOOP
        SELECT TO_DATE(TRUNC(DBMS_RANDOM.VALUE(TO_CHAR(DATE'2014-01-01','J'),TO_CHAR(DATE'2015-01-01','J'))),'J') INTO d FROM dual;
        SELECT FLOOR(DBMS_RANDOM.VALUE(1, 100000.99)) INTO c FROM dual;
        SELECT FLOOR(DBMS_RANDOM.VALUE(1, 12300.99)) INTO a FROM dual;
        SELECT FLOOR(DBMS_RANDOM.VALUE(1, 2.99)) INTO t FROM dual;
        INSERT INTO Compte VALUES(i, d, c, a, t);
    END LOOP;
    COMMIT;
END;
/

-- Table Operation --
DECLARE
d DATE;
Heure NUMBER;
typeof CHAR(1);
montant NUMBER;
cpt NUMBER;
i NUMBER;
BEGIN
    FOR i IN 1..610314 LOOP
        SELECT TO_DATE(TRUNC(DBMS_RANDOM.VALUE(TO_CHAR(DATE'2015-01-01','J'),TO_CHAR(DATE'2018-12-31','J'))),'J') INTO d FROM DUAL;
        SELECT TRUNC(DBMS_RANDOM.VALUE(5000, 100000), 2) INTO montant FROM dual;
        SELECT FLOOR(DBMS_RANDOM.VALUE(0, 23.99)) INTO Heure FROM dual;
        SELECT FLOOR(DBMS_RANDOM.VALUE(1, 2.99)) INTO typeof FROM dual;
        SELECT FLOOR(DBMS_RANDOM.VALUE(1, 200000.99)) INTO cpt FROM dual;
        INSERT INTO Operation VALUES(i, d, Heure, typeof, montant, DECODE(typeof, 1, cpt, null), DECODE(typeof, 2, cpt, null));
    END LOOP;
    COMMIT;
END;
/