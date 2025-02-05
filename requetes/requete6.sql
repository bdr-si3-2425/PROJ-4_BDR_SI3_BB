CREATE OR REPLACE FUNCTION ajouter_bibliotheque(
	p_nom VARCHAR(255), 
	p_adresse VARCHAR(255), 
	p_region VARCHAR(255))
RETURNS VOID AS $$
BEGIN
    INSERT INTO Bibliotheque (id_bibliotheque,nom, adresse, region) 
	VALUES (Select max(id_bibliotheque) from biblioteque,p_nom, p_adresse, p_region);
END;
$$ LANGUAGE plpgsql;