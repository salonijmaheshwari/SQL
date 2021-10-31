-- A user must be able to record a superhero/supervillain sighting for a particular location and date.
INSERT INTO hero_sight(sightDate,heroId,locationId) VALUES
	('2021-11-11 17:00:00',3,2);
    
-- The system must be able to report all of the superheroes sighted at a particular location.
SELECT DISTINCT sh.heroName,l.locationName FROM superHero sh JOIN
	hero_sight hs ON sh.heroId = hs.heroId JOIN
    location l ON hs.locationId = l.locationId
    WHERE l.locationId = 1;

-- The system must be able to report all of the locations where a particular superhero has been seen.
SELECT DISTINCT l.locationName,sh.heroName FROM superHero sh JOIN
	hero_sight hs ON sh.heroId = hs.heroId JOIN
    location l ON hs.locationId = l.locationId
    WHERE sh.heroId = 3; 

-- The system must be able to report all sightings (hero and location) for a particular date.
SELECT sh.heroName,l.locationName,hs.sightDate FROM superHero sh JOIN
	hero_sight hs ON sh.heroId = hs.heroId JOIN
    location l ON hs.locationId = l.locationId
    WHERE hs.sightDate BETWEEN '2021/11/11 00:00:00' AND '2021/11/11 23:59:59';
    
-- The system must be able to report all of the members of a particular organization.
SELECT sh.heroName,o.orgName FROM superHero sh JOIN
	hero_organization ho ON sh.heroId = ho.heroId JOIN
    organizations o ON ho.orgId = o.orgId
    WHERE ho.orgId = 1;
    
-- The system must be able to report all of the organizations a particular superhero/villain belongs to.
SELECT sh.heroName,o.orgName FROM superHero sh JOIN
	hero_organization ho ON sh.heroId = ho.heroId JOIN
    organizations o ON ho.orgId = o.orgId
    WHERE ho.heroId = 2;
    

