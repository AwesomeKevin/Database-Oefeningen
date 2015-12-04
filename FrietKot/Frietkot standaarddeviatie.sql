set serveroutput on;
DECLARE
  v_gemiddelde number := 0;
  v_standaarddeviatie number := 0;
  
  procedure BerekenGemEnDeviatie (p_gemiddelde out number, p_standaarddeviatie out number)
  is
  begin
    for i in (select avg(calorieën) as gemiddelde from BESTELLING) LOOP
      p_gemiddelde := i.gemiddelde;
    END LOOP;
    
    for i in (select stddev(calorieën) as std from BESTELLING) LOOP
      p_standaarddeviatie := i.std;
    END LOOP;
  end BerekenGemEnDeviatie;

BEGIN
  BerekenGemEnDeviatie(p_gemiddelde => v_gemiddelde,
                                       p_standaarddeviatie => v_standaarddeviatie);
  
  dbms_output.put_line('gemiddelde = ' || v_gemiddelde || ' en standaarddeviatie = ' || v_standaarddeviatie); 
END;