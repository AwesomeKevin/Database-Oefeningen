--UPDATE HET AANTAL CALORIEEN VAN ELKE BESTELLING                    
UPDATE BESTELLING b1
SET CALORIEENTOTAAL = ( SELECT SUM(a.calorieen)
                        FROM ARTIKELBESTELLING ab
                        LEFT JOIN BESTELLING b ON ab.BESTELLINGID = b.BESTELLINGID
                        LEFT JOIN ARTIKEL a ON ab.ARTIKELID = a.ARTIKELID
                        WHERE b1.BESTELLINGID = b.BESTELLINGID);