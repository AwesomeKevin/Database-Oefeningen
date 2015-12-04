SET SERVEROUTPUT ON;
DECLARE

TYPE TYPE_FILMSCORES
IS TABLE OF NUMBER
INDEX BY FILM.ID%TYPE;

TYPE TYPE_FILMIDS
IS TABLE OF FILM.ID%TYPE;

FUNCTION BEREKENTOP5
  RETURN sys_refcursor
IS
t_filmScores TYPE_FILMSCORES;
t_filmIDs TYPE_FILMIDS;
v_nextIndex NUMBER;

cursor c_filmsAlleenGenre
  (FILM_ID in GENRE_BEZOEKER.GENRE_ID%TYPE)
is
  SELECT *
  FROM FILM 
  WHERE GENREID IN (SELECT g.ID
                    FROM GENRE g, GENRE_BEZOEKER gb
                    WHERE g.ID = gb.GENREID
                    AND gb.BEZOEKERID = FILM_ID);

cursor c_filmsAlleGenres
  (FILM_ID in GENRE_BEZOEKERS.GENRE_ID%TYPE)
is
  SELECT *
  FROM FILM;

cursor c_filmsMetTop5IDs
  (FILM_IDs IN FILM.ID%TYPE)
is
  SELECT *
  FROM FILM
  WHERE ID IN (FILM_IDs);
  
BEGIN
  IF AANTALFILMSMETGENRE() < 5 
  THEN
    t_filmscores := BEREKENSCORES( p_filmIDs => c_filmsAlleGenres);
  ELSE
    t_filmScores := BEREKENSCORES( p_filmIDs => c_filmAlleenGenre);
  END IF;

  t_filmscores := sort_collection_plsql( p_collection => t_filmScores);
  
  FOR i_counter IN 1..5 
  LOOP
    IF i_counter = 1 THEN
      v_nextIndex := t_filmscores.FIRST;
    ELSE
      v_nextIndex := t.filmScores.NEXT(v_nextIndex);
      t_filmIDs.EXTEND;
    END IF;
    
    t_filmIDs(i_counter) := t_filmScores(v_nextIndex);
  END LOOP;
  
  
END BEREKENTOP5;

FUNCTION AANTALFILMSMETGENRE
  RETURN NUMBER
IS
v_filmCount NUMBER;
BEGIN
  SELECT COUNT(*)
  INTO v_filmCount
  FROM FILM 
  WHERE GENREID IN (SELECT g.ID
                  FROM GENRE g, GENRE_BEZOEKER gb
                  WHERE g.ID = gb.GENREID
                  AND gb.BEZOEKERID = FILM_ID);
  RETURN v_filmCount;
END AANTALFILMSMETGENRE;

FUNCTION BEREKENSCORES (p_filmIDs in sys_refcursor)
  RETURN FILMSCORES
IS
  t_filmScores TYPE_FILMSCORES;
BEGIN
  
  RETURN t_filmScores;
END BEREKENSCORES;

FUNCTION sort_collection_plsql (p_collection IN TYPE_FILMSCORES)
  RETURN TYPE_FILMSCORES 

IS

  TYPE sorter_aat 
  IS TABLE OF PLS_INTEGER
  INDEX BY VARCHAR2(4000);
 
  v_collection varchar2_ntt := varchar2_ntt();
  v_sorter     sorter_aat;
  v_sorter_idx VARCHAR2(4000);

BEGIN

   /* Sort the collection using the sorter array... */
  FOR i IN 1 .. p_collection.COUNT 
  LOOP
    v_sorter_idx := p_collection(i);
    v_sorter(v_sorter_idx) := CASE
                                WHEN v_sorter.EXISTS(v_sorter_idx)
                                  THEN v_sorter(v_sorter_idx) + 1
                                  ELSE 1
                                 END;
   END LOOP;

    /* Assign sorted elements back to collection... */
   v_sorter_idx := v_sorter.FIRST;
   WHILE v_sorter_idx IS NOT NULL LOOP

       /* Handle multiple copies of same value... */
      FOR i IN 1 .. v_sorter(v_sorter_idx) LOOP
           v_collection.EXTEND;
          v_collection(v_collection.LAST) := v_sorter_idx;
      END LOOP;

      v_sorter_idx := v_sorter.NEXT(v_sorter_idx);

END LOOP;

RETURN v_collection;
 
END sort_collection_plsql;
 
BEGIN
END;