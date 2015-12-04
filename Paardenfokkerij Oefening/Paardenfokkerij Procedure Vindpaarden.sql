SET SERVEROUTPUT ON;
DECLARE
TYPE processedHorses
IS
  TABLE OF INTEGER;
  
FUNCTION PaardenFunctie (p_startHorseID PAARD.ID%type)
RETURN processedHorses

IS
TYPE horsesToProcess
IS
  TABLE OF INTEGER;
  
  t_processedHorses processedHorses;
  t_horsesToProcess horsesToProcess;
  v_fatherID PAARD.IDFATHER%type;
  v_motherID PAARD.IDFATHER%type;
  v_horseID PAARD.ID%type;
  
BEGIN
  t_horsesToProcess.Extend(1);
  t_horsesToProcess(t_horsesToProcess.Last) := p_startHorseID;
  
  FOR i IN 1..t_horsesToProcess.Count
  LOOP
    v_fatherID := -1;
    v_motherID := -1;
    v_horseID  := t_horsesToProcess(i);
    --ProcessHorse(v_horseID);
    t_processedHorses.Extend(1);
    t_processedHorses(t_processedHorses.Last) := t_horsesToProcess(i);
    IF v_fatherID                          = -1 AND t_processedHorses.Exists(v_fatherID) THEN
      t_horsesToProcess.Extend(1);
      t_horsesToProcess(t_horsesToProcess.Last) := v_fatherID;
    END IF;
    IF v_motherID = -1 AND t_processedHorses.Exists(v_motherID) THEN
      t_horsesToProcess.Extend(1);
      t_horsesToProcess(t_horsesToProcess.Last) := v_motherID;
    END IF;
  END LOOP;
  RETURN t_processedHorses;
END PaardenFunctie;
BEGIN
  dbms_output.put_line('5');
END;
