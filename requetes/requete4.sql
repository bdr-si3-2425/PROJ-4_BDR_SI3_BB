CREATE OR REPLACE FUNCTION ajouter_ouvrage(
	p_titre VARCHAR(255),
	p_auteur VARCHAR(255),
	p_genre VARCHAR(255),
	p_date DATE)
RETURNS VOID AS $$
BEGIN
    INSERT INTO ouvrage(id_ouvrage,titre,auteur,genre,date_publication) 
	VALUES ((Select Max(id_ouvrage)+1 from ouvrage),p_titre,p_auteur,p_genre,p_date);
END;
$$ LANGUAGE plpgsql;
Select ajouter_ouvrage('Le tour du monde en 80 jours','Jules Verne','Roman',1872-01-01)  