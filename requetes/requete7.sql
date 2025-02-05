CREATE OR REPLACE FUNCTION ajouter_distance(
	p_id_bibliotheque1 INT,
	p_id_bibliotheque2 INT,
	p_distance INT)
RETURNS VOID AS $$
BEGIN
    INSERT INTO distance (id_distance,id_bibliotheque_source,id_bibliotheque_destination,distance) 
	VALUES ((Select Max(id_distance)+1 from distance),p_id_bibliotheque1,p_id_bibliotheque2,p_distance);
END;
$$ LANGUAGE plpgsql;
Select ajouter_distance(0,19,500)  