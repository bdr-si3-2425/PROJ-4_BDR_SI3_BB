CREATE OR REPLACE FUNCTION ajouter_bibliotheque(
	p_nom VARCHAR(255), 
	p_adresse VARCHAR(255), 
	p_region VARCHAR(255))
RETURNS VOID AS $$
BEGIN
    INSERT INTO Bibliotheque (nom, adresse, region) 
	VALUES (p_nom, p_adresse, p_region);
END;
$$ LANGUAGE plpgsql;